; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, i32 }
%struct.au1000_private = type { i32, i32, i32, i64, i64, i32, i64, i64*, i64*, i64*, %struct.TYPE_9__*, %struct.db_dest**, %struct.db_dest**, %struct.TYPE_8__**, %struct.TYPE_7__**, %struct.db_dest*, %struct.db_dest*, i64, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i64*, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32*, i32*, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.db_dest = type { i64, i64*, %struct.db_dest* }
%struct.au1000_eth_platform_data = type { i32, i64, i64, i64, i32, i64, i32 }
%struct.resource = type { i64 }
%struct.mac_reg = type opaque

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to retrieve base register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to retrieve MAC Enable register\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to retrieve MACDMA registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"failed to request memory region for base registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"failed to request memory region for MAC enable register\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to request MACDMA memory region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@au1000_debug = common dso_local global i32 0, align 4
@AU1000_DEF_MSG_ENABLE = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@NUM_TX_BUFFS = common dso_local global i32 0, align 4
@NUM_RX_BUFFS = common dso_local global i32 0, align 4
@DMA_ATTR_NON_CONSISTENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to allocate data buffers\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to ioremap MAC registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to ioremap MAC enable register\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to ioremap MACDMA registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"no platform_data passed, PHY search on MAC0\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [65 x i8] c"MAC0-associated PHY attached 2nd MACs MII bus not supported yet\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to allocate mdiobus structure\0A\00", align 1
@au1000_mdiobus_read = common dso_local global i32 0, align 4
@au1000_mdiobus_write = common dso_local global i32 0, align 4
@au1000_mdiobus_reset = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"au1000_eth_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"failed to register MDIO bus\0A\00", align 1
@NUM_RX_DMA = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@au1000_netdev_ops = common dso_local global i32 0, align 4
@au1000_ethtool_ops = common dso_local global i32 0, align 4
@ETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"Cannot register net device, aborting.\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Au1xx0 Ethernet found at 0x%lx, irq %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s version %s %s\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@DRV_AUTHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1000_private*, align 8
  %5 = alloca %struct.au1000_eth_platform_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.db_dest*, align 8
  %8 = alloca %struct.db_dest*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.au1000_private* null, %struct.au1000_private** %4, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %12, align 8
  %18 = load %struct.resource*, %struct.resource** %12, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 2
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %697

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 1)
  store %struct.resource* %29, %struct.resource** %13, align 8
  %30 = load %struct.resource*, %struct.resource** %13, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 2
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %697

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %697

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 2)
  store %struct.resource* %49, %struct.resource** %14, align 8
  %50 = load %struct.resource*, %struct.resource** %14, align 8
  %51 = icmp ne %struct.resource* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 2
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %697

58:                                               ; preds = %46
  %59 = load %struct.resource*, %struct.resource** %12, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.resource*, %struct.resource** %12, align 8
  %63 = call i32 @resource_size(%struct.resource* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @request_mem_region(i64 %61, i32 %63, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %58
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 2
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %697

75:                                               ; preds = %58
  %76 = load %struct.resource*, %struct.resource** %13, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.resource*, %struct.resource** %13, align 8
  %80 = call i32 @resource_size(%struct.resource* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @request_mem_region(i64 %78, i32 %80, i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %75
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 2
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %690

92:                                               ; preds = %75
  %93 = load %struct.resource*, %struct.resource** %14, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.resource*, %struct.resource** %14, align 8
  %97 = call i32 @resource_size(%struct.resource* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @request_mem_region(i64 %95, i32 %97, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %92
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 2
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %683

109:                                              ; preds = %92
  %110 = call %struct.net_device* @alloc_etherdev(i32 168)
  store %struct.net_device* %110, %struct.net_device** %6, align 8
  %111 = load %struct.net_device*, %struct.net_device** %6, align 8
  %112 = icmp ne %struct.net_device* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %11, align 4
  br label %676

116:                                              ; preds = %109
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 2
  %120 = call i32 @SET_NETDEV_DEV(%struct.net_device* %117, i32* %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = call i32 @platform_set_drvdata(%struct.platform_device* %121, %struct.net_device* %122)
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %124)
  store %struct.au1000_private* %125, %struct.au1000_private** %4, align 8
  %126 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %127 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %126, i32 0, i32 21
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load i32, i32* @au1000_debug, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %133

131:                                              ; preds = %116
  %132 = load i32, i32* @AU1000_DEF_MSG_ENABLE, align 4
  br label %135

133:                                              ; preds = %116
  %134 = load i32, i32* @au1000_debug, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %138 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 2
  %141 = load i32, i32* @MAX_BUF_SIZE, align 4
  %142 = load i32, i32* @NUM_TX_BUFFS, align 4
  %143 = load i32, i32* @NUM_RX_BUFFS, align 4
  %144 = add nsw i32 %142, %143
  %145 = mul nsw i32 %141, %144
  %146 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %147 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %146, i32 0, i32 5
  %148 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %149 = call i64 @dma_alloc_attrs(i32* %140, i32 %145, i32* %147, i32 0, i32 %148)
  %150 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %151 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %150, i32 0, i32 6
  store i64 %149, i64* %151, align 8
  %152 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %153 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %135
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 2
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %673

162:                                              ; preds = %135
  %163 = load %struct.resource*, %struct.resource** %12, align 8
  %164 = getelementptr inbounds %struct.resource, %struct.resource* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.resource*, %struct.resource** %12, align 8
  %167 = call i32 @resource_size(%struct.resource* %166)
  %168 = call i64* @ioremap_nocache(i64 %165, i32 %167)
  %169 = bitcast i64* %168 to %struct.mac_reg*
  %170 = bitcast %struct.mac_reg* %169 to i64*
  %171 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %172 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %171, i32 0, i32 7
  store i64* %170, i64** %172, align 8
  %173 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %174 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %173, i32 0, i32 7
  %175 = load i64*, i64** %174, align 8
  %176 = icmp ne i64* %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %162
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 2
  %180 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i32, i32* @ENXIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %11, align 4
  br label %656

183:                                              ; preds = %162
  %184 = load %struct.resource*, %struct.resource** %13, align 8
  %185 = getelementptr inbounds %struct.resource, %struct.resource* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.resource*, %struct.resource** %13, align 8
  %188 = call i32 @resource_size(%struct.resource* %187)
  %189 = call i64* @ioremap_nocache(i64 %186, i32 %188)
  %190 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %191 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %190, i32 0, i32 8
  store i64* %189, i64** %191, align 8
  %192 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %193 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %192, i32 0, i32 8
  %194 = load i64*, i64** %193, align 8
  %195 = icmp ne i64* %194, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %183
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 2
  %199 = call i32 @dev_err(i32* %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %200 = load i32, i32* @ENXIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %11, align 4
  br label %651

202:                                              ; preds = %183
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %207 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.resource*, %struct.resource** %14, align 8
  %209 = getelementptr inbounds %struct.resource, %struct.resource* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.resource*, %struct.resource** %14, align 8
  %212 = call i32 @resource_size(%struct.resource* %211)
  %213 = call i64* @ioremap_nocache(i64 %210, i32 %212)
  %214 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %215 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %214, i32 0, i32 9
  store i64* %213, i64** %215, align 8
  %216 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %217 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %216, i32 0, i32 9
  %218 = load i64*, i64** %217, align 8
  %219 = icmp ne i64* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %202
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 2
  %223 = call i32 @dev_err(i32* %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %224 = load i32, i32* @ENXIO, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %11, align 4
  br label %646

226:                                              ; preds = %202
  %227 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %228 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %229 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %228, i32 0, i32 9
  %230 = load i64*, i64** %229, align 8
  %231 = call i32 @au1000_setup_hw_rings(%struct.au1000_private* %227, i64* %230)
  %232 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %233 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %232, i32 0, i32 8
  %234 = load i64*, i64** %233, align 8
  %235 = call i32 @writel(i32 0, i64* %234)
  %236 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %237 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %236, i32 0, i32 20
  store i64 0, i64* %237, align 8
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 2
  %240 = call %struct.au1000_eth_platform_data* @dev_get_platdata(i32* %239)
  store %struct.au1000_eth_platform_data* %240, %struct.au1000_eth_platform_data** %5, align 8
  %241 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %242 = icmp ne %struct.au1000_eth_platform_data* %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %226
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 2
  %246 = call i32 @dev_info(i32* %245, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %247 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %248 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  br label %298

249:                                              ; preds = %226
  %250 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %251 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = call i64 @is_valid_ether_addr(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %249
  %256 = load %struct.net_device*, %struct.net_device** %6, align 8
  %257 = getelementptr inbounds %struct.net_device, %struct.net_device* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %260 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @ETH_ALEN, align 4
  %263 = call i32 @memcpy(i32 %258, i32 %261, i32 %262)
  br label %267

264:                                              ; preds = %249
  %265 = load %struct.net_device*, %struct.net_device** %6, align 8
  %266 = call i32 @eth_hw_addr_random(%struct.net_device* %265)
  br label %267

267:                                              ; preds = %264, %255
  %268 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %269 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %272 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %271, i32 0, i32 18
  store i64 %270, i64* %272, align 8
  %273 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %274 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %277 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %276, i32 0, i32 19
  store i32 %275, i32* %277, align 8
  %278 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %279 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %282 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  %283 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %284 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %287 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %286, i32 0, i32 3
  store i64 %285, i64* %287, align 8
  %288 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %289 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %292 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %291, i32 0, i32 4
  store i64 %290, i64* %292, align 8
  %293 = load %struct.au1000_eth_platform_data*, %struct.au1000_eth_platform_data** %5, align 8
  %294 = getelementptr inbounds %struct.au1000_eth_platform_data, %struct.au1000_eth_platform_data* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %297 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %296, i32 0, i32 17
  store i64 %295, i64* %297, align 8
  br label %298

298:                                              ; preds = %267, %243
  %299 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %300 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = icmp sgt i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %305 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %304, i32 0, i32 2
  %306 = call i32 @dev_err(i32* %305, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0))
  %307 = load i32, i32* @ENODEV, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %11, align 4
  br label %641

309:                                              ; preds = %298
  %310 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %311 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %312 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %311, i32 0, i32 10
  store %struct.TYPE_9__* %310, %struct.TYPE_9__** %312, align 8
  %313 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %314 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %313, i32 0, i32 10
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = icmp eq %struct.TYPE_9__* %315, null
  br i1 %316, label %317, label %323

317:                                              ; preds = %309
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 2
  %320 = call i32 @dev_err(i32* %319, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %321 = load i32, i32* @ENOMEM, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %11, align 4
  br label %641

323:                                              ; preds = %309
  %324 = load %struct.net_device*, %struct.net_device** %6, align 8
  %325 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %326 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %325, i32 0, i32 10
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 6
  store %struct.net_device* %324, %struct.net_device** %328, align 8
  %329 = load i32, i32* @au1000_mdiobus_read, align 4
  %330 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %331 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %330, i32 0, i32 10
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 5
  store i32 %329, i32* %333, align 4
  %334 = load i32, i32* @au1000_mdiobus_write, align 4
  %335 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %336 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %335, i32 0, i32 10
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 4
  store i32 %334, i32* %338, align 8
  %339 = load i32, i32* @au1000_mdiobus_reset, align 4
  %340 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %341 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %340, i32 0, i32 10
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 3
  store i32 %339, i32* %343, align 4
  %344 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %345 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %344, i32 0, i32 10
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %347, align 8
  %348 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %349 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %348, i32 0, i32 10
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %354 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %355 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %358 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @snprintf(i32 %352, i32 %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %356, i32 %359)
  %361 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %362 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %361, i32 0, i32 18
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %393

365:                                              ; preds = %323
  %366 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %367 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %366, i32 0, i32 17
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %392

370:                                              ; preds = %365
  %371 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %372 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %375 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = icmp eq i64 %373, %377
  br i1 %378, label %379, label %392

379:                                              ; preds = %370
  %380 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %381 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %380, i32 0, i32 17
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %384 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %383, i32 0, i32 10
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = load i64*, i64** %386, align 8
  %388 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %389 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds i64, i64* %387, i64 %390
  store i64 %382, i64* %391, align 8
  br label %392

392:                                              ; preds = %379, %370, %365
  br label %393

393:                                              ; preds = %392, %323
  %394 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %395 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %394, i32 0, i32 10
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %395, align 8
  %397 = call i32 @mdiobus_register(%struct.TYPE_9__* %396)
  store i32 %397, i32* %11, align 4
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %402 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %401, i32 0, i32 2
  %403 = call i32 @dev_err(i32* %402, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %636

404:                                              ; preds = %393
  %405 = load %struct.net_device*, %struct.net_device** %6, align 8
  %406 = call i32 @au1000_mii_probe(%struct.net_device* %405)
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* %11, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  br label %567

410:                                              ; preds = %404
  store %struct.db_dest* null, %struct.db_dest** %8, align 8
  %411 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %412 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %411, i32 0, i32 16
  %413 = load %struct.db_dest*, %struct.db_dest** %412, align 8
  store %struct.db_dest* %413, %struct.db_dest** %7, align 8
  store i32 0, i32* %10, align 4
  br label %414

414:                                              ; preds = %445, %410
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* @NUM_TX_BUFFS, align 4
  %417 = load i32, i32* @NUM_RX_BUFFS, align 4
  %418 = add nsw i32 %416, %417
  %419 = icmp slt i32 %415, %418
  br i1 %419, label %420, label %448

420:                                              ; preds = %414
  %421 = load %struct.db_dest*, %struct.db_dest** %8, align 8
  %422 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %423 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %422, i32 0, i32 2
  store %struct.db_dest* %421, %struct.db_dest** %423, align 8
  %424 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  store %struct.db_dest* %424, %struct.db_dest** %8, align 8
  %425 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %426 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = trunc i64 %427 to i32
  %429 = load i32, i32* @MAX_BUF_SIZE, align 4
  %430 = load i32, i32* %10, align 4
  %431 = mul nsw i32 %429, %430
  %432 = add i32 %428, %431
  %433 = zext i32 %432 to i64
  %434 = inttoptr i64 %433 to i64*
  %435 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %436 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %435, i32 0, i32 1
  store i64* %434, i64** %436, align 8
  %437 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %438 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %437, i32 0, i32 1
  %439 = load i64*, i64** %438, align 8
  %440 = call i64 @virt_to_bus(i64* %439)
  %441 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %442 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %441, i32 0, i32 0
  store i64 %440, i64* %442, align 8
  %443 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %444 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %443, i32 1
  store %struct.db_dest* %444, %struct.db_dest** %7, align 8
  br label %445

445:                                              ; preds = %420
  %446 = load i32, i32* %10, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %10, align 4
  br label %414

448:                                              ; preds = %414
  %449 = load %struct.db_dest*, %struct.db_dest** %8, align 8
  %450 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %451 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %450, i32 0, i32 15
  store %struct.db_dest* %449, %struct.db_dest** %451, align 8
  %452 = load i32, i32* @ENODEV, align 4
  %453 = sub nsw i32 0, %452
  store i32 %453, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %454

454:                                              ; preds = %484, %448
  %455 = load i32, i32* %10, align 4
  %456 = load i32, i32* @NUM_RX_DMA, align 4
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %458, label %487

458:                                              ; preds = %454
  %459 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %460 = call %struct.db_dest* @au1000_GetFreeDB(%struct.au1000_private* %459)
  store %struct.db_dest* %460, %struct.db_dest** %7, align 8
  %461 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %462 = icmp ne %struct.db_dest* %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %458
  br label %567

464:                                              ; preds = %458
  %465 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %466 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = trunc i64 %467 to i32
  %469 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %470 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %469, i32 0, i32 14
  %471 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %470, align 8
  %472 = load i32, i32* %10, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %471, i64 %473
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 0
  store i32 %468, i32* %476, align 4
  %477 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %478 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %479 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %478, i32 0, i32 12
  %480 = load %struct.db_dest**, %struct.db_dest*** %479, align 8
  %481 = load i32, i32* %10, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %480, i64 %482
  store %struct.db_dest* %477, %struct.db_dest** %483, align 8
  br label %484

484:                                              ; preds = %464
  %485 = load i32, i32* %10, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %10, align 4
  br label %454

487:                                              ; preds = %454
  %488 = load i32, i32* @ENODEV, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %490

490:                                              ; preds = %528, %487
  %491 = load i32, i32* %10, align 4
  %492 = load i32, i32* @NUM_TX_DMA, align 4
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %531

494:                                              ; preds = %490
  %495 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %496 = call %struct.db_dest* @au1000_GetFreeDB(%struct.au1000_private* %495)
  store %struct.db_dest* %496, %struct.db_dest** %7, align 8
  %497 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %498 = icmp ne %struct.db_dest* %497, null
  br i1 %498, label %500, label %499

499:                                              ; preds = %494
  br label %567

500:                                              ; preds = %494
  %501 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %502 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = trunc i64 %503 to i32
  %505 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %506 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %505, i32 0, i32 13
  %507 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %506, align 8
  %508 = load i32, i32* %10, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %507, i64 %509
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 0
  store i32 %504, i32* %512, align 8
  %513 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %514 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %513, i32 0, i32 13
  %515 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %514, align 8
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %515, i64 %517
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 1
  store i64 0, i64* %520, align 8
  %521 = load %struct.db_dest*, %struct.db_dest** %7, align 8
  %522 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %523 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %522, i32 0, i32 11
  %524 = load %struct.db_dest**, %struct.db_dest*** %523, align 8
  %525 = load i32, i32* %10, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %524, i64 %526
  store %struct.db_dest* %521, %struct.db_dest** %527, align 8
  br label %528

528:                                              ; preds = %500
  %529 = load i32, i32* %10, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %10, align 4
  br label %490

531:                                              ; preds = %490
  %532 = load %struct.resource*, %struct.resource** %12, align 8
  %533 = getelementptr inbounds %struct.resource, %struct.resource* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.net_device*, %struct.net_device** %6, align 8
  %536 = getelementptr inbounds %struct.net_device, %struct.net_device* %535, i32 0, i32 4
  store i64 %534, i64* %536, align 8
  %537 = load i32, i32* %9, align 4
  %538 = load %struct.net_device*, %struct.net_device** %6, align 8
  %539 = getelementptr inbounds %struct.net_device, %struct.net_device* %538, i32 0, i32 0
  store i32 %537, i32* %539, align 8
  %540 = load %struct.net_device*, %struct.net_device** %6, align 8
  %541 = getelementptr inbounds %struct.net_device, %struct.net_device* %540, i32 0, i32 3
  store i32* @au1000_netdev_ops, i32** %541, align 8
  %542 = load %struct.net_device*, %struct.net_device** %6, align 8
  %543 = getelementptr inbounds %struct.net_device, %struct.net_device* %542, i32 0, i32 2
  store i32* @au1000_ethtool_ops, i32** %543, align 8
  %544 = load i32, i32* @ETH_TX_TIMEOUT, align 4
  %545 = load %struct.net_device*, %struct.net_device** %6, align 8
  %546 = getelementptr inbounds %struct.net_device, %struct.net_device* %545, i32 0, i32 1
  store i32 %544, i32* %546, align 4
  %547 = load %struct.net_device*, %struct.net_device** %6, align 8
  %548 = call i32 @au1000_reset_mac(%struct.net_device* %547)
  %549 = load %struct.net_device*, %struct.net_device** %6, align 8
  %550 = call i32 @register_netdev(%struct.net_device* %549)
  store i32 %550, i32* %11, align 4
  %551 = load i32, i32* %11, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %531
  %554 = load %struct.net_device*, %struct.net_device** %6, align 8
  %555 = call i32 @netdev_err(%struct.net_device* %554, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %567

556:                                              ; preds = %531
  %557 = load %struct.net_device*, %struct.net_device** %6, align 8
  %558 = load %struct.resource*, %struct.resource** %12, align 8
  %559 = getelementptr inbounds %struct.resource, %struct.resource* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i32, i32* %9, align 4
  %562 = call i32 @netdev_info(%struct.net_device* %557, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i64 %560, i32 %561)
  %563 = load i32, i32* @DRV_NAME, align 4
  %564 = load i32, i32* @DRV_VERSION, align 4
  %565 = load i32, i32* @DRV_AUTHOR, align 4
  %566 = call i32 @pr_info_once(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %563, i32 %564, i32 %565)
  store i32 0, i32* %2, align 4
  br label %699

567:                                              ; preds = %553, %499, %463, %409
  %568 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %569 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %568, i32 0, i32 10
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** %569, align 8
  %571 = icmp ne %struct.TYPE_9__* %570, null
  br i1 %571, label %572, label %577

572:                                              ; preds = %567
  %573 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %574 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %573, i32 0, i32 10
  %575 = load %struct.TYPE_9__*, %struct.TYPE_9__** %574, align 8
  %576 = call i32 @mdiobus_unregister(%struct.TYPE_9__* %575)
  br label %577

577:                                              ; preds = %572, %567
  %578 = load %struct.net_device*, %struct.net_device** %6, align 8
  %579 = call i32 @au1000_reset_mac(%struct.net_device* %578)
  store i32 0, i32* %10, align 4
  br label %580

580:                                              ; preds = %604, %577
  %581 = load i32, i32* %10, align 4
  %582 = load i32, i32* @NUM_RX_DMA, align 4
  %583 = icmp slt i32 %581, %582
  br i1 %583, label %584, label %607

584:                                              ; preds = %580
  %585 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %586 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %585, i32 0, i32 12
  %587 = load %struct.db_dest**, %struct.db_dest*** %586, align 8
  %588 = load i32, i32* %10, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %587, i64 %589
  %591 = load %struct.db_dest*, %struct.db_dest** %590, align 8
  %592 = icmp ne %struct.db_dest* %591, null
  br i1 %592, label %593, label %603

593:                                              ; preds = %584
  %594 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %595 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %596 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %595, i32 0, i32 12
  %597 = load %struct.db_dest**, %struct.db_dest*** %596, align 8
  %598 = load i32, i32* %10, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %597, i64 %599
  %601 = load %struct.db_dest*, %struct.db_dest** %600, align 8
  %602 = call i32 @au1000_ReleaseDB(%struct.au1000_private* %594, %struct.db_dest* %601)
  br label %603

603:                                              ; preds = %593, %584
  br label %604

604:                                              ; preds = %603
  %605 = load i32, i32* %10, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %10, align 4
  br label %580

607:                                              ; preds = %580
  store i32 0, i32* %10, align 4
  br label %608

608:                                              ; preds = %632, %607
  %609 = load i32, i32* %10, align 4
  %610 = load i32, i32* @NUM_TX_DMA, align 4
  %611 = icmp slt i32 %609, %610
  br i1 %611, label %612, label %635

612:                                              ; preds = %608
  %613 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %614 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %613, i32 0, i32 11
  %615 = load %struct.db_dest**, %struct.db_dest*** %614, align 8
  %616 = load i32, i32* %10, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %615, i64 %617
  %619 = load %struct.db_dest*, %struct.db_dest** %618, align 8
  %620 = icmp ne %struct.db_dest* %619, null
  br i1 %620, label %621, label %631

621:                                              ; preds = %612
  %622 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %623 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %624 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %623, i32 0, i32 11
  %625 = load %struct.db_dest**, %struct.db_dest*** %624, align 8
  %626 = load i32, i32* %10, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %625, i64 %627
  %629 = load %struct.db_dest*, %struct.db_dest** %628, align 8
  %630 = call i32 @au1000_ReleaseDB(%struct.au1000_private* %622, %struct.db_dest* %629)
  br label %631

631:                                              ; preds = %621, %612
  br label %632

632:                                              ; preds = %631
  %633 = load i32, i32* %10, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %10, align 4
  br label %608

635:                                              ; preds = %608
  br label %636

636:                                              ; preds = %635, %400
  %637 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %638 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %637, i32 0, i32 10
  %639 = load %struct.TYPE_9__*, %struct.TYPE_9__** %638, align 8
  %640 = call i32 @mdiobus_free(%struct.TYPE_9__* %639)
  br label %641

641:                                              ; preds = %636, %317, %303
  %642 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %643 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %642, i32 0, i32 9
  %644 = load i64*, i64** %643, align 8
  %645 = call i32 @iounmap(i64* %644)
  br label %646

646:                                              ; preds = %641, %220
  %647 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %648 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %647, i32 0, i32 8
  %649 = load i64*, i64** %648, align 8
  %650 = call i32 @iounmap(i64* %649)
  br label %651

651:                                              ; preds = %646, %196
  %652 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %653 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %652, i32 0, i32 7
  %654 = load i64*, i64** %653, align 8
  %655 = call i32 @iounmap(i64* %654)
  br label %656

656:                                              ; preds = %651, %177
  %657 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %658 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %657, i32 0, i32 2
  %659 = load i32, i32* @MAX_BUF_SIZE, align 4
  %660 = load i32, i32* @NUM_TX_BUFFS, align 4
  %661 = load i32, i32* @NUM_RX_BUFFS, align 4
  %662 = add nsw i32 %660, %661
  %663 = mul nsw i32 %659, %662
  %664 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %665 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %664, i32 0, i32 6
  %666 = load i64, i64* %665, align 8
  %667 = inttoptr i64 %666 to i8*
  %668 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %669 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %668, i32 0, i32 5
  %670 = load i32, i32* %669, align 8
  %671 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %672 = call i32 @dma_free_attrs(i32* %658, i32 %663, i8* %667, i32 %670, i32 %671)
  br label %673

673:                                              ; preds = %656, %156
  %674 = load %struct.net_device*, %struct.net_device** %6, align 8
  %675 = call i32 @free_netdev(%struct.net_device* %674)
  br label %676

676:                                              ; preds = %673, %113
  %677 = load %struct.resource*, %struct.resource** %14, align 8
  %678 = getelementptr inbounds %struct.resource, %struct.resource* %677, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = load %struct.resource*, %struct.resource** %14, align 8
  %681 = call i32 @resource_size(%struct.resource* %680)
  %682 = call i32 @release_mem_region(i64 %679, i32 %681)
  br label %683

683:                                              ; preds = %676, %103
  %684 = load %struct.resource*, %struct.resource** %13, align 8
  %685 = getelementptr inbounds %struct.resource, %struct.resource* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = load %struct.resource*, %struct.resource** %13, align 8
  %688 = call i32 @resource_size(%struct.resource* %687)
  %689 = call i32 @release_mem_region(i64 %686, i32 %688)
  br label %690

690:                                              ; preds = %683, %86
  %691 = load %struct.resource*, %struct.resource** %12, align 8
  %692 = getelementptr inbounds %struct.resource, %struct.resource* %691, i32 0, i32 0
  %693 = load i64, i64* %692, align 8
  %694 = load %struct.resource*, %struct.resource** %12, align 8
  %695 = call i32 @resource_size(%struct.resource* %694)
  %696 = call i32 @release_mem_region(i64 %693, i32 %695)
  br label %697

697:                                              ; preds = %690, %69, %52, %43, %32, %20
  %698 = load i32, i32* %11, align 4
  store i32 %698, i32* %2, align 4
  br label %699

699:                                              ; preds = %697, %556
  %700 = load i32, i32* %2, align 4
  ret i32 %700
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @dma_alloc_attrs(i32*, i32, i32*, i32, i32) #1

declare dso_local i64* @ioremap_nocache(i64, i32) #1

declare dso_local i32 @au1000_setup_hw_rings(%struct.au1000_private*, i64*) #1

declare dso_local i32 @writel(i32, i64*) #1

declare dso_local %struct.au1000_eth_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_9__*) #1

declare dso_local i32 @au1000_mii_probe(%struct.net_device*) #1

declare dso_local i64 @virt_to_bus(i64*) #1

declare dso_local %struct.db_dest* @au1000_GetFreeDB(%struct.au1000_private*) #1

declare dso_local i32 @au1000_reset_mac(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @pr_info_once(i8*, i32, i32, i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @au1000_ReleaseDB(%struct.au1000_private*, %struct.db_dest*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_9__*) #1

declare dso_local i32 @iounmap(i64*) #1

declare dso_local i32 @dma_free_attrs(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
