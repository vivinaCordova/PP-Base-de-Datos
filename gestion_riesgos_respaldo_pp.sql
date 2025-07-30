-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: gestion_riesgos
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `rol` set('Estudiante','Docente','Jefe Carrera') NOT NULL,
  `estado` set('Activa','Inactiva') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,'ana.gomez@unl.edu.ec','pass1','Estudiante','Activa'),(2,'luis.ramos@unl.edu.ec','pass2','Docente','Activa'),(3,'carlos.mendoza@unl.edu.ec','pass3','Jefe Carrera','Activa'),(4,'maria.lopez@unl.edu.ec','pass4','Estudiante','Activa'),(5,'jorge.vega@unl.edu.ec','pass5','Docente','Activa'),(6,'rosa.calle@unl.edu.ec','pass6','Estudiante','Activa'),(7,'david.morales@unl.edu.ec','pass7','Docente','Activa'),(8,'gloria.torres@unl.edu.ec','pass8','Estudiante','Activa'),(9,'jose.villavicencio@unl.edu.ec','pass9','Jefe Carrera','Activa'),(10,'lucia.mendez@unl.edu.ec','pass10','Docente','Activa'),(11,'kevin.salazar@unl.edu.ec','pass11','Estudiante','Activa'),(12,'fernando.paredes@unl.edu.ec','pass12','Docente','Activa'),(13,'daniela.espinoza@unl.edu.ec','pass13','Estudiante','Activa'),(14,'andres.brito@unl.edu.ec','pass14','Estudiante','Activa'),(15,'monica.lima@unl.edu.ec','pass15','Docente','Activa'),(16,'veronica.mora@unl.edu.ec','pass16','Estudiante','Activa'),(17,'oscar.luna@unl.edu.ec','pass17','Docente','Activa'),(18,'adriana.paz@unl.edu.ec','pass18','Estudiante','Activa'),(19,'gustavo.cobo@unl.edu.ec','pass19','Docente','Activa'),(20,'pamela.vaca@unl.edu.ec','pass20','Estudiante','Activa');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estrategia`
--

DROP TABLE IF EXISTS `estrategia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estrategia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` set('Mitigacion','Transferencia','Aceptacion','Evitacion') NOT NULL,
  `descripcion` text,
  `fecha` date NOT NULL,
  `resultados` text NOT NULL,
  `matriz` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matriz` (`matriz`),
  CONSTRAINT `estrategia_ibfk_1` FOREIGN KEY (`matriz`) REFERENCES `matriz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estrategia`
--

LOCK TABLES `estrategia` WRITE;
/*!40000 ALTER TABLE `estrategia` DISABLE KEYS */;
INSERT INTO `estrategia` VALUES (1,'Mitigacion','Revisión de formularios','2025-06-21','Errores reducidos',1),(2,'Mitigacion','Checklist de stock','2025-06-21','Conteo preciso',2),(3,'Aceptacion','Tolerar leves desfases','2025-06-21','Impacto menor',3),(4,'Mitigacion','Cruzar datos de turnos','2025-06-21','Reducción de duplicados',4),(5,'Evitacion','Bloquear ventas vencidas','2025-06-22','Evita errores graves',5),(6,'Mitigacion','Duplicar canal de alerta','2025-06-22','Mayor cobertura',6),(7,'Mitigacion','Validación de facturas','2025-06-22','Errores corregidos',7),(8,'Transferencia','Validación proveedor','2025-06-22','Datos completos',8),(9,'Mitigacion','ID único de tarea','2025-06-23','Sin duplicados',9),(10,'Aceptacion','Aceptar pequeña imprecisión','2025-06-23','Negligible',10),(11,'Evitacion','Token de firma segura','2025-06-23','Resultados válidos',11),(12,'Mitigacion','Etiquetado inteligente','2025-06-23','Mejor organización',12),(13,'Mitigacion','Log de pedidos','2025-06-24','Pedidos trazables',13),(14,'Mitigacion','Alerta de stock mínimo','2025-06-24','Menos errores',14),(15,'Mitigacion','Verificación tributaria','2025-06-24','Cálculo correcto',15),(16,'Mitigacion','Validación de horario','2025-06-24','Reservas únicas',16),(17,'Transferencia','Verificación escáner','2025-06-25','Lecturas correctas',17),(18,'Mitigacion','Autorización de promociones','2025-06-25','Aplicación precisa',18),(19,'Mitigacion','Postventa obliga stock update','2025-06-25','Sin inconsistencias',19),(20,'Aceptacion','Aceptar retrasos leves','2025-06-25','No crítico',20);
/*!40000 ALTER TABLE `estrategia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz`
--

DROP TABLE IF EXISTS `matriz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area_detectada` text NOT NULL,
  `descripcion_riesgo` text NOT NULL,
  `probabilidad` int NOT NULL,
  `notas_progreso` text NOT NULL,
  `efecto_total` int NOT NULL,
  `accion_preventiva` text NOT NULL,
  `riesgo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `riesgo` (`riesgo`),
  CONSTRAINT `matriz_ibfk_1` FOREIGN KEY (`riesgo`) REFERENCES `riesgo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz`
--

LOCK TABLES `matriz` WRITE;
/*!40000 ALTER TABLE `matriz` DISABLE KEYS */;
INSERT INTO `matriz` VALUES (1,'Ventas','Error de registro',80,'Se mejoró validación',75,'Pruebas automáticas',1),(2,'Inventario','Desfase en conteo',60,'Revisión mensual',50,'Checklist diario',2),(3,'Reportes','No generación de informes',40,'Se implementó backup',35,'Alertas al usuario',3),(4,'Turnos','Turnos duplicados',45,'Nuevo formato aplicado',40,'Validación cruzada',4),(5,'Medicamentos','Vencimientos no detectados',85,'Sistema de alertas',80,'Verificación de fechas',5),(6,'Alertas','Alertas no llegan',55,'Revisión de lógica',50,'Notificación paralela',6),(7,'Facturación','Errores en precios',90,'Script validado',85,'Control doble',7),(8,'Proveedores','Sin datos completos',30,'Formulario actualizado',25,'Campos obligatorios',8),(9,'Tareas','Duplicación',65,'Asignación por ID único',60,'Validación UI',9),(10,'Reportes','Falta de precisión',35,'Se mejoró query',30,'Indexado de datos',10),(11,'Evaluaciones','Manipulación posible',70,'Control de acceso',65,'Token de seguridad',11),(12,'Documentos','Desorden en archivo',50,'Etiquetado automático',45,'Sistema de categorías',12),(13,'Pedidos','Pedidos perdidos',85,'Logs habilitados',80,'Revisión de endpoints',13),(14,'Cocina','Sin ingredientes',60,'Control diario',55,'Stock mínimo',14),(15,'Cuentas','Impuestos mal calculados',40,'Lógica corregida',35,'Validación fiscal',15),(16,'Reservas','Duplicación de reservas',55,'Bloqueo de horarios',50,'Verificación previa',16),(17,'Escáner','Falla en lectura',75,'Actualización de drivers',70,'Escaneo doble',17),(18,'Promociones','Descuentos no aplicados',60,'Pruebas funcionales',55,'Control por rol',18),(19,'Stock','No actualización',90,'Transacción completa',85,'Confirmación postventa',19),(20,'Ventas','Reportes erróneos',45,'Logs agregados',40,'Control cruzado',20);
/*!40000 ALTER TABLE `matriz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `cuenta` int DEFAULT NULL,
  PRIMARY KEY (`cedula`),
  KEY `cuenta` (`cuenta`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`cuenta`) REFERENCES `cuenta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('1100000001','Ana','Gomez',1),('1100000002','Luis','Ramos',2),('1100000003','Carlos','Mendoza',3),('1100000004','Maria','Lopez',4),('1100000005','Jorge','Vega',5),('1100000006','Rosa','Calle',6),('1100000007','David','Morales',7),('1100000008','Gloria','Torres',8),('1100000009','Jose','Villavicencio',9),('1100000010','Lucia','Mendez',10),('1100000011','Kevin','Salazar',11),('1100000012','Fernando','Paredes',12),('1100000013','Daniela','Espinoza',13),('1100000014','Andres','Brito',14),('1100000015','Monica','Lima',15),('1100000016','Veronica','Mora',16),('1100000017','Oscar','Luna',17),('1100000018','Adriana','Paz',18),('1100000019','Gustavo','Cobo',19),('1100000020','Pamela','Vaca',20);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_proyecto`
--

DROP TABLE IF EXISTS `persona_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_proyecto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `persona` varchar(10) DEFAULT NULL,
  `proyecto` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `persona` (`persona`),
  KEY `proyecto` (`proyecto`),
  CONSTRAINT `persona_proyecto_ibfk_1` FOREIGN KEY (`persona`) REFERENCES `persona` (`cedula`),
  CONSTRAINT `persona_proyecto_ibfk_2` FOREIGN KEY (`proyecto`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_proyecto`
--

LOCK TABLES `persona_proyecto` WRITE;
/*!40000 ALTER TABLE `persona_proyecto` DISABLE KEYS */;
INSERT INTO `persona_proyecto` VALUES (1,'1100000001',1),(2,'1100000002',1),(3,'1100000003',2),(4,'1100000004',2),(5,'1100000005',3),(6,'1100000006',3),(7,'1100000007',4),(8,'1100000008',4),(9,'1100000009',5),(10,'1100000010',5),(11,'1100000011',1),(12,'1100000012',2),(13,'1100000013',3),(14,'1100000014',4),(15,'1100000015',5),(16,'1100000016',1),(17,'1100000017',2),(18,'1100000018',3),(19,'1100000019',4),(20,'1100000020',5);
/*!40000 ALTER TABLE `persona_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'UNL_GASOLINERA'),(2,'UNL_FARMACIA'),(3,'UNL_GESTION'),(4,'UNL_RESTAURANTE'),(5,'UNL_TIENDA');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisito`
--

DROP TABLE IF EXISTS `requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisito` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `proyecto` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto` (`proyecto`),
  CONSTRAINT `requisito_ibfk_1` FOREIGN KEY (`proyecto`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisito`
--

LOCK TABLES `requisito` WRITE;
/*!40000 ALTER TABLE `requisito` DISABLE KEYS */;
INSERT INTO `requisito` VALUES (1,'El sistema debe registrar las ventas diarias de combustible.',1),(2,'El sistema debe permitir la gestión de inventario de combustibles.',1),(3,'El sistema debe generar reportes de ingresos mensuales.',1),(4,'El sistema debe permitir el registro de turnos de empleados.',1),(5,'El sistema debe gestionar el inventario de medicamentos y productos médicos.',2),(6,'El sistema debe emitir alertas de vencimiento de medicamentos.',2),(7,'El sistema debe registrar ventas y emitir facturas electrónicas.',2),(8,'El sistema debe permitir el registro de proveedores.',2),(9,'El sistema debe permitir la asignación de tareas a los empleados.',3),(10,'El sistema debe generar reportes de productividad por departamento.',3),(11,'El sistema debe permitir la evaluación del desempeño del personal.',3),(12,'El sistema debe incluir un módulo de gestión de documentos.',3),(13,'El sistema debe permitir la toma de pedidos desde mesas o para llevar.',4),(14,'El sistema debe gestionar el inventario de ingredientes.',4),(15,'El sistema debe calcular automáticamente la cuenta total con impuestos.',4),(16,'El sistema debe gestionar reservas de mesas.',4),(17,'El sistema debe registrar productos con código de barras.',5),(18,'El sistema debe permitir la gestión de descuentos y promociones.',5),(19,'El sistema debe registrar ventas y controlar el stock automáticamente.',5),(20,'El sistema debe generar reportes de productos más vendidos.',5);
/*!40000 ALTER TABLE `requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riesgo`
--

DROP TABLE IF EXISTS `riesgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riesgo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `urgencia` set('Alto','Medio','Bajo') NOT NULL,
  `descripcion` text,
  `tipo` set('Tecnicos','De Proyecto','Externos') NOT NULL,
  `estado` set('Activo','Controlado','Mitigado','Resuelto') NOT NULL,
  `fechaIdentificacion` date NOT NULL,
  `requisito` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requisito` (`requisito`),
  CONSTRAINT `riesgo_ibfk_1` FOREIGN KEY (`requisito`) REFERENCES `requisito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riesgo`
--

LOCK TABLES `riesgo` WRITE;
/*!40000 ALTER TABLE `riesgo` DISABLE KEYS */;
INSERT INTO `riesgo` VALUES (1,'Alto','Error en registro de ventas','Tecnicos','Activo','2025-06-01',1),(2,'Medio','Desfase en stock de combustibles','Tecnicos','Mitigado','2025-06-02',2),(3,'Bajo','Fallas en generación de reportes','De Proyecto','Controlado','2025-06-03',3),(4,'Medio','Turnos mal configurados','De Proyecto','Resuelto','2025-06-04',4),(5,'Alto','Medicamentos vencidos no detectados','Tecnicos','Activo','2025-06-05',5),(6,'Medio','Alertas no funcionales','Tecnicos','Mitigado','2025-06-06',6),(7,'Alto','Errores en facturación','Tecnicos','Controlado','2025-06-07',7),(8,'Bajo','Falta de proveedores registrados','De Proyecto','Resuelto','2025-06-08',8),(9,'Medio','Tareas mal asignadas','De Proyecto','Mitigado','2025-06-09',9),(10,'Bajo','Datos incompletos en reportes','De Proyecto','Controlado','2025-06-10',10),(11,'Alto','Manipulación de evaluaciones','Externos','Activo','2025-06-11',11),(12,'Medio','Documentos mal organizados','Tecnicos','Mitigado','2025-06-12',12),(13,'Alto','Pedidos perdidos','Tecnicos','Activo','2025-06-13',13),(14,'Medio','Faltante de ingredientes','Tecnicos','Mitigado','2025-06-14',14),(15,'Bajo','Errores en impuestos','Tecnicos','Resuelto','2025-06-15',15),(16,'Medio','Reservas duplicadas','De Proyecto','Controlado','2025-06-16',16),(17,'Alto','Lectura errónea de códigos','Tecnicos','Activo','2025-06-17',17),(18,'Medio','Descuentos incorrectos','Tecnicos','Mitigado','2025-06-18',18),(19,'Alto','Stock no actualizado','Tecnicos','Controlado','2025-06-19',19),(20,'Bajo','Errores en reportes de ventas','De Proyecto','Resuelto','2025-06-20',20);
/*!40000 ALTER TABLE `riesgo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-29 19:31:42
