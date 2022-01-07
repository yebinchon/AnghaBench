; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_info = type { i32 (%struct.igc_hw*)*, i32, i32 }
%struct.igc_hw = type opaque
%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.igc_adapter = type { i32, i64, %struct.igc_info, i32, i32, i32, i32, i32, i32, %struct.igc_hw.0, %struct.pci_dev*, %struct.net_device* }
%struct.igc_hw.0 = type { %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__, %struct.igc_adapter* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 (%struct.igc_hw.1*)*, i32 (%struct.igc_hw.2*)* }
%struct.igc_hw.1 = type opaque
%struct.igc_hw.2 = type opaque
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 (%struct.igc_hw.3*)* }
%struct.igc_hw.3 = type opaque
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i32* }

@igc_info_tbl = common dso_local global %struct.igc_info** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"igc: Wrong DMA config\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@igc_driver_name = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IGC_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@igc_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@MAX_STD_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"The NVM Checksum Is Not Valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid MAC Address\0A\00", align 1
@IGC_RXPBS = common dso_local global i32 0, align 4
@I225_RXPBSIZE_DEFAULT = common dso_local global i32 0, align 4
@IGC_TXPBS = common dso_local global i32 0, align 4
@I225_TXPBSIZE_DEFAULT = common dso_local global i32 0, align 4
@igc_watchdog = common dso_local global i32 0, align 4
@igc_update_phy_info = common dso_local global i32 0, align 4
@igc_reset_task = common dso_local global i32 0, align 4
@igc_watchdog_task = common dso_local global i32 0, align 4
@igc_fc_default = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @igc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.igc_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.igc_hw.0*, align 8
  %9 = alloca %struct.igc_info*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.igc_info**, %struct.igc_info*** @igc_info_tbl, align 8
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.igc_info*, %struct.igc_info** %11, i64 %14
  %16 = load %struct.igc_info*, %struct.igc_info** %15, align 8
  store %struct.igc_info* %16, %struct.igc_info** %9, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_enable_device_mem(%struct.pci_dev* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %404

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @DMA_BIT_MASK(i32 64)
  %27 = call i32 @dma_set_mask(i32* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @DMA_BIT_MASK(i32 64)
  %34 = call i32 @dma_set_coherent_mask(i32* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %55

35:                                               ; preds = %23
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @dma_set_mask(i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @DMA_BIT_MASK(i32 32)
  %46 = call i32 @dma_set_coherent_mask(i32* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %400

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call i32 @pci_select_bars(%struct.pci_dev* %57, i32 %58)
  %60 = load i32, i32* @igc_driver_name, align 4
  %61 = call i32 @pci_request_selected_regions(%struct.pci_dev* %56, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %399

65:                                               ; preds = %55
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_set_master(%struct.pci_dev* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @IGC_MAX_TX_QUEUES, align 4
  %73 = call %struct.net_device* @alloc_etherdev_mq(i32 192, i32 %72)
  store %struct.net_device* %73, %struct.net_device** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = icmp ne %struct.net_device* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %393

77:                                               ; preds = %65
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @SET_NETDEV_DEV(%struct.net_device* %78, i32* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = call i32 @pci_set_drvdata(%struct.pci_dev* %82, %struct.net_device* %83)
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %85)
  store %struct.igc_adapter* %86, %struct.igc_adapter** %6, align 8
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %88, i32 0, i32 11
  store %struct.net_device* %87, %struct.net_device** %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %91, i32 0, i32 10
  store %struct.pci_dev* %90, %struct.pci_dev** %92, align 8
  %93 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %93, i32 0, i32 9
  store %struct.igc_hw.0* %94, %struct.igc_hw.0** %8, align 8
  %95 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %96 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %97 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %96, i32 0, i32 11
  store %struct.igc_adapter* %95, %struct.igc_adapter** %97, align 8
  %98 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %99 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @debug, align 4
  %105 = load i32, i32* @DEFAULT_MSG_ENABLE, align 4
  %106 = call i32 @netif_msg_init(i32 %104, i32 %105)
  %107 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @pci_save_state(%struct.pci_dev* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %77
  br label %390

114:                                              ; preds = %77
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = call i32 @pci_resource_start(%struct.pci_dev* %117, i32 0)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = call i32 @pci_resource_len(%struct.pci_dev* %119, i32 0)
  %121 = call i64 @ioremap(i32 %118, i32 %120)
  %122 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %125 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %114
  br label %390

129:                                              ; preds = %114
  %130 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %131 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %134 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %133, i32 0, i32 9
  store i64 %132, i64* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 10
  store i32* @igc_netdev_ops, i32** %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = call i32 @igc_set_ethtool_ops(%struct.net_device* %137)
  %139 = load i32, i32* @HZ, align 4
  %140 = mul nsw i32 5, %139
  %141 = load %struct.net_device*, %struct.net_device** %7, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = call i32 @pci_resource_start(%struct.pci_dev* %143, i32 0)
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 8
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @pci_resource_end(%struct.pci_dev* %147, i32 0)
  %149 = load %struct.net_device*, %struct.net_device** %7, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 4
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %155 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %160 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %165 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %170 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %175 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %177 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load %struct.igc_info*, %struct.igc_info** %9, align 8
  %180 = getelementptr inbounds %struct.igc_info, %struct.igc_info* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @memcpy(%struct.TYPE_16__* %178, i32 %181, i32 16)
  %183 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %184 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load %struct.igc_info*, %struct.igc_info** %9, align 8
  %187 = getelementptr inbounds %struct.igc_info, %struct.igc_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @memcpy(%struct.TYPE_16__* %185, i32 %188, i32 16)
  %190 = load %struct.igc_info*, %struct.igc_info** %9, align 8
  %191 = getelementptr inbounds %struct.igc_info, %struct.igc_info* %190, i32 0, i32 0
  %192 = load i32 (%struct.igc_hw*)*, i32 (%struct.igc_hw*)** %191, align 8
  %193 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %194 = bitcast %struct.igc_hw.0* %193 to %struct.igc_hw*
  %195 = call i32 %192(%struct.igc_hw* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %129
  br label %383

199:                                              ; preds = %129
  %200 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %201 = load %struct.net_device*, %struct.net_device** %7, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %206 = call i32 @igc_sw_init(%struct.igc_adapter* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %383

210:                                              ; preds = %199
  %211 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %212 = load %struct.net_device*, %struct.net_device** %7, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.net_device*, %struct.net_device** %7, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.net_device*, %struct.net_device** %7, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load i32, i32* @ETH_MIN_MTU, align 4
  %224 = load %struct.net_device*, %struct.net_device** %7, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @MAX_STD_JUMBO_FRAME_SIZE, align 4
  %227 = load %struct.net_device*, %struct.net_device** %7, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 4
  %229 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %230 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32 (%struct.igc_hw.2*)*, i32 (%struct.igc_hw.2*)** %232, align 8
  %234 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %235 = bitcast %struct.igc_hw.0* %234 to %struct.igc_hw.2*
  %236 = call i32 %233(%struct.igc_hw.2* %235)
  %237 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %238 = call i64 @igc_get_flash_presence_i225(%struct.igc_hw.0* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %210
  %241 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %242 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i64 (%struct.igc_hw.3*)*, i64 (%struct.igc_hw.3*)** %244, align 8
  %246 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %247 = bitcast %struct.igc_hw.0* %246 to %struct.igc_hw.3*
  %248 = call i64 %245(%struct.igc_hw.3* %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %240
  %251 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %252 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %251, i32 0, i32 0
  %253 = call i32 @dev_err(i32* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %254 = load i32, i32* @EIO, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %10, align 4
  br label %375

256:                                              ; preds = %240
  br label %257

257:                                              ; preds = %256, %210
  %258 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %259 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %258, i32 0, i32 0
  %260 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %261 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @eth_platform_get_mac_address(i32* %259, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %257
  %267 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %268 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i64 (%struct.igc_hw.1*)*, i64 (%struct.igc_hw.1*)** %270, align 8
  %272 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %273 = bitcast %struct.igc_hw.0* %272 to %struct.igc_hw.1*
  %274 = call i64 %271(%struct.igc_hw.1* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %266
  %277 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %278 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %277, i32 0, i32 0
  %279 = call i32 @dev_err(i32* %278, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %280

280:                                              ; preds = %276, %266
  br label %281

281:                                              ; preds = %280, %257
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 2
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %283, align 8
  %285 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %286 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.net_device*, %struct.net_device** %7, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @memcpy(%struct.TYPE_16__* %284, i32 %288, i32 %291)
  %293 = load %struct.net_device*, %struct.net_device** %7, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 2
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = call i32 @is_valid_ether_addr(%struct.TYPE_16__* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %281
  %299 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %300 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %299, i32 0, i32 0
  %301 = call i32 @dev_err(i32* %300, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %302 = load i32, i32* @EIO, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %10, align 4
  br label %375

304:                                              ; preds = %281
  %305 = load i32, i32* @IGC_RXPBS, align 4
  %306 = load i32, i32* @I225_RXPBSIZE_DEFAULT, align 4
  %307 = call i32 @wr32(i32 %305, i32 %306)
  %308 = load i32, i32* @IGC_TXPBS, align 4
  %309 = load i32, i32* @I225_TXPBSIZE_DEFAULT, align 4
  %310 = call i32 @wr32(i32 %308, i32 %309)
  %311 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %312 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %311, i32 0, i32 6
  %313 = load i32, i32* @igc_watchdog, align 4
  %314 = call i32 @timer_setup(i32* %312, i32 %313, i32 0)
  %315 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %316 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %315, i32 0, i32 5
  %317 = load i32, i32* @igc_update_phy_info, align 4
  %318 = call i32 @timer_setup(i32* %316, i32 %317, i32 0)
  %319 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %320 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %319, i32 0, i32 4
  %321 = load i32, i32* @igc_reset_task, align 4
  %322 = call i32 @INIT_WORK(i32* %320, i32 %321)
  %323 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %324 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %323, i32 0, i32 3
  %325 = load i32, i32* @igc_watchdog_task, align 4
  %326 = call i32 @INIT_WORK(i32* %324, i32 %325)
  %327 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %328 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %327, i32 0, i32 0
  store i32 1, i32* %328, align 8
  %329 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %330 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  %332 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %333 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  store i32 175, i32* %334, align 8
  %335 = load i8*, i8** @igc_fc_default, align 8
  %336 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %337 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  store i8* %335, i8** %338, align 8
  %339 = load i8*, i8** @igc_fc_default, align 8
  %340 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %341 = getelementptr inbounds %struct.igc_hw.0, %struct.igc_hw.0* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  store i8* %339, i8** %342, align 8
  %343 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %344 = call i32 @igc_reset(%struct.igc_adapter* %343)
  %345 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %346 = call i32 @igc_get_hw_control(%struct.igc_adapter* %345)
  %347 = load %struct.net_device*, %struct.net_device** %7, align 8
  %348 = getelementptr inbounds %struct.net_device, %struct.net_device* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @IFNAMSIZ, align 4
  %351 = call i32 @strncpy(i32 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %350)
  %352 = load %struct.net_device*, %struct.net_device** %7, align 8
  %353 = call i32 @register_netdev(%struct.net_device* %352)
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %304
  br label %372

357:                                              ; preds = %304
  %358 = load %struct.net_device*, %struct.net_device** %7, align 8
  %359 = call i32 @netif_carrier_off(%struct.net_device* %358)
  %360 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %361 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %360, i32 0, i32 2
  %362 = load %struct.igc_info*, %struct.igc_info** %9, align 8
  %363 = bitcast %struct.igc_info* %361 to i8*
  %364 = bitcast %struct.igc_info* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %363, i8* align 8 %364, i64 16, i1 false)
  %365 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %366 = call i32 @pcie_print_link_status(%struct.pci_dev* %365)
  %367 = load %struct.net_device*, %struct.net_device** %7, align 8
  %368 = load %struct.net_device*, %struct.net_device** %7, align 8
  %369 = getelementptr inbounds %struct.net_device, %struct.net_device* %368, i32 0, i32 2
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %369, align 8
  %371 = call i32 @netdev_info(%struct.net_device* %367, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_16__* %370)
  store i32 0, i32* %3, align 4
  br label %404

372:                                              ; preds = %356
  %373 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %374 = call i32 @igc_release_hw_control(%struct.igc_adapter* %373)
  br label %375

375:                                              ; preds = %372, %298, %250
  %376 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %377 = call i32 @igc_check_reset_block(%struct.igc_hw.0* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = load %struct.igc_hw.0*, %struct.igc_hw.0** %8, align 8
  %381 = call i32 @igc_reset_phy(%struct.igc_hw.0* %380)
  br label %382

382:                                              ; preds = %379, %375
  br label %383

383:                                              ; preds = %382, %209, %198
  %384 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %385 = call i32 @igc_clear_interrupt_scheme(%struct.igc_adapter* %384)
  %386 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %387 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @iounmap(i64 %388)
  br label %390

390:                                              ; preds = %383, %128, %113
  %391 = load %struct.net_device*, %struct.net_device** %7, align 8
  %392 = call i32 @free_netdev(%struct.net_device* %391)
  br label %393

393:                                              ; preds = %390, %76
  %394 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %395 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %396 = load i32, i32* @IORESOURCE_MEM, align 4
  %397 = call i32 @pci_select_bars(%struct.pci_dev* %395, i32 %396)
  %398 = call i32 @pci_release_selected_regions(%struct.pci_dev* %394, i32 %397)
  br label %399

399:                                              ; preds = %393, %64
  br label %400

400:                                              ; preds = %399, %49
  %401 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %402 = call i32 @pci_disable_device(%struct.pci_dev* %401)
  %403 = load i32, i32* %10, align 4
  store i32 %403, i32* %3, align 4
  br label %404

404:                                              ; preds = %400, %357, %21
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @igc_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @igc_sw_init(%struct.igc_adapter*) #1

declare dso_local i64 @igc_get_flash_presence_i225(%struct.igc_hw.0*) #1

declare dso_local i64 @eth_platform_get_mac_address(i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(%struct.TYPE_16__*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

declare dso_local i32 @igc_get_hw_control(%struct.igc_adapter*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pcie_print_link_status(%struct.pci_dev*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @igc_release_hw_control(%struct.igc_adapter*) #1

declare dso_local i32 @igc_check_reset_block(%struct.igc_hw.0*) #1

declare dso_local i32 @igc_reset_phy(%struct.igc_hw.0*) #1

declare dso_local i32 @igc_clear_interrupt_scheme(%struct.igc_adapter*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
