; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_pci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32, i32, i32*, i32 }
%struct.et131x_adapter = type { %struct.TYPE_13__*, %struct.TYPE_14__*, i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32, i32, %struct.net_device*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"pci_enable_device() failed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't find PCI device's base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't get PCI resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No usable DMA addressing method\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Couldn't alloc netdev struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ET131X_TX_TIMEOUT = common dso_local global i32 0, align 4
@et131x_netdev_ops = common dso_local global i32 0, align 4
@ET131X_MIN_MTU = common dso_local global i32 0, align 4
@ET131X_MAX_MTU = common dso_local global i32 0, align 4
@et131x_ethtool_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot map device registers\0A\00", align 1
@ET_PMCSR_INIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not alloc adapter memory (DMA)\0A\00", align 1
@et131x_poll = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Alloc of mii_bus struct failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"et131x_eth_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@et131x_mdio_read = common dso_local global i32 0, align 4
@et131x_mdio_write = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to register MII bus\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to probe MII bus\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @et131x_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_pci_setup(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.et131x_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %237

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_resource_flags(%struct.pci_dev* %17, i32 0)
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %270

28:                                               ; preds = %16
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* @DRIVER_NAME, align 4
  %31 = call i32 @pci_request_regions(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %270

38:                                               ; preds = %28
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @DMA_BIT_MASK(i32 64)
  %44 = call i64 @dma_set_mask_and_coherent(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @DMA_BIT_MASK(i32 32)
  %50 = call i64 @dma_set_mask_and_coherent(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %267

58:                                               ; preds = %46, %38
  %59 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %59, %struct.net_device** %5, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %267

68:                                               ; preds = %58
  %69 = load i32, i32* @ET131X_TX_TIMEOUT, align 4
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 5
  store i32* @et131x_netdev_ops, i32** %73, align 8
  %74 = load i32, i32* @ET131X_MIN_MTU, align 4
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ET131X_MAX_MTU, align 4
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @SET_NETDEV_DEV(%struct.net_device* %80, i32* %82)
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 2
  store i32* @et131x_ethtool_ops, i32** %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = call %struct.et131x_adapter* @et131x_adapter_init(%struct.net_device* %86, %struct.pci_dev* %87)
  store %struct.et131x_adapter* %88, %struct.et131x_adapter** %6, align 8
  %89 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = call i32 @et131x_pci_init(%struct.et131x_adapter* %89, %struct.pci_dev* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %68
  br label %262

95:                                               ; preds = %68
  %96 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %97 = call %struct.TYPE_13__* @pci_ioremap_bar(%struct.pci_dev* %96, i32 0)
  %98 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %99 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %98, i32 0, i32 0
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %99, align 8
  %100 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = icmp ne %struct.TYPE_13__* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %95
  %105 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %262

110:                                              ; preds = %95
  %111 = load i32, i32* @ET_PMCSR_INIT, align 4
  %112 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %113 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = call i32 @writel(i32 %111, i32* %116)
  %118 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %119 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %118)
  %120 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %121 = call i32 @et131x_disable_interrupts(%struct.et131x_adapter* %120)
  %122 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %123 = call i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %110
  %127 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %257

130:                                              ; preds = %110
  %131 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %132 = call i32 @et131x_init_send(%struct.et131x_adapter* %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %134, i32 0, i32 5
  %136 = load i32, i32* @et131x_poll, align 4
  %137 = call i32 @netif_napi_add(%struct.net_device* %133, i32* %135, i32 %136, i32 64)
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ether_addr_copy(i32 %140, i32 %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  %147 = call %struct.TYPE_14__* (...) @mdiobus_alloc()
  %148 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %149 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %148, i32 0, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  %150 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %151 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = icmp ne %struct.TYPE_14__* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %130
  %155 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %254

158:                                              ; preds = %130
  %159 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %160 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %162, align 8
  %163 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %164 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %169 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %170 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %169, i32 0, i32 3
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %178 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %177, i32 0, i32 3
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %176, %181
  %183 = call i32 @snprintf(i32 %167, i32 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %186 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %185, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 3
  store %struct.net_device* %184, %struct.net_device** %188, align 8
  %189 = load i32, i32* @et131x_mdio_read, align 4
  %190 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %191 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* @et131x_mdio_write, align 4
  %195 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %196 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %195, i32 0, i32 1
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  store i32 %194, i32* %198, align 8
  %199 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %200 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %199, i32 0, i32 1
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = call i32 @mdiobus_register(%struct.TYPE_14__* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %158
  %206 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %207 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %206, i32 0, i32 0
  %208 = call i32 @dev_err(i32* %207, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %249

209:                                              ; preds = %158
  %210 = load %struct.net_device*, %struct.net_device** %5, align 8
  %211 = call i32 @et131x_mii_probe(%struct.net_device* %210)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %216 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 0
  %217 = call i32 @dev_err(i32* %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %244

218:                                              ; preds = %209
  %219 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %220 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %219)
  %221 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %222 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  %223 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %224 = call i32 @et1310_disable_phy_coma(%struct.et131x_adapter* %223)
  %225 = load %struct.net_device*, %struct.net_device** %5, align 8
  %226 = call i32 @register_netdev(%struct.net_device* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %218
  %230 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %231 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %230, i32 0, i32 0
  %232 = call i32 @dev_err(i32* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %239

233:                                              ; preds = %218
  %234 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %235 = load %struct.net_device*, %struct.net_device** %5, align 8
  %236 = call i32 @pci_set_drvdata(%struct.pci_dev* %234, %struct.net_device* %235)
  br label %237

237:                                              ; preds = %270, %233, %12
  %238 = load i32, i32* %7, align 4
  ret i32 %238

239:                                              ; preds = %229
  %240 = load %struct.net_device*, %struct.net_device** %5, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @phy_disconnect(i32 %242)
  br label %244

244:                                              ; preds = %239, %214
  %245 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %246 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %245, i32 0, i32 1
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = call i32 @mdiobus_unregister(%struct.TYPE_14__* %247)
  br label %249

249:                                              ; preds = %244, %205
  %250 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %251 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %250, i32 0, i32 1
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = call i32 @mdiobus_free(%struct.TYPE_14__* %252)
  br label %254

254:                                              ; preds = %249, %154
  %255 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %256 = call i32 @et131x_adapter_memory_free(%struct.et131x_adapter* %255)
  br label %257

257:                                              ; preds = %254, %126
  %258 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %259 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = call i32 @iounmap(%struct.TYPE_13__* %260)
  br label %262

262:                                              ; preds = %257, %104, %94
  %263 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %264 = call i32 @pci_dev_put(%struct.pci_dev* %263)
  %265 = load %struct.net_device*, %struct.net_device** %5, align 8
  %266 = call i32 @free_netdev(%struct.net_device* %265)
  br label %267

267:                                              ; preds = %262, %62, %52
  %268 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %269 = call i32 @pci_release_regions(%struct.pci_dev* %268)
  br label %270

270:                                              ; preds = %267, %34, %22
  %271 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %272 = call i32 @pci_disable_device(%struct.pci_dev* %271)
  br label %237
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.et131x_adapter* @et131x_adapter_init(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local i32 @et131x_pci_init(%struct.et131x_adapter*, %struct.pci_dev*) #1

declare dso_local %struct.TYPE_13__* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_disable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_14__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_14__*) #1

declare dso_local i32 @et131x_mii_probe(%struct.net_device*) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @et1310_disable_phy_coma(%struct.et131x_adapter*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_14__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_14__*) #1

declare dso_local i32 @et131x_adapter_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @iounmap(%struct.TYPE_13__*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
