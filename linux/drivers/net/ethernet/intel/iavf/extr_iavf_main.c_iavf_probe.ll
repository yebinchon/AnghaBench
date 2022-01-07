; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.iavf_hw, %struct.pci_dev*, %struct.net_device* }
%struct.iavf_hw = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.iavf_adapter* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"DMA configuration failed: 0x%x\0A\00", align 1
@iavf_driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pci_request_regions failed 0x%x\0A\00", align 1
@IAVF_MAX_REQ_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_DEBUG_LEVEL_SHIFT = common dso_local global i32 0, align 4
@__IAVF_STARTUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@iavf_reset_task = common dso_local global i32 0, align 4
@iavf_adminq_task = common dso_local global i32 0, align 4
@iavf_watchdog_task = common dso_local global i32 0, align 4
@iavf_client_task = common dso_local global i32 0, align 4
@iavf_init_task = common dso_local global i32 0, align 4
@iavf_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @iavf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iavf_adapter*, align 8
  %8 = alloca %struct.iavf_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.iavf_adapter* null, %struct.iavf_adapter** %7, align 8
  store %struct.iavf_hw* null, %struct.iavf_hw** %8, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %219

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 6
  %19 = call i32 @DMA_BIT_MASK(i32 64)
  %20 = call i32 @dma_set_mask_and_coherent(i32* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 6
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = call i32 @dma_set_mask_and_coherent(i32* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 6
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %215

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @iavf_driver_name, align 4
  %39 = call i32 @pci_request_regions(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 6
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %214

47:                                               ; preds = %36
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_set_master(%struct.pci_dev* %50)
  %52 = load i32, i32* @IAVF_MAX_REQ_QUEUES, align 4
  %53 = call %struct.net_device* @alloc_etherdev_mq(i32 128, i32 %52)
  store %struct.net_device* %53, %struct.net_device** %6, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %211

59:                                               ; preds = %47
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 6
  %63 = call i32 @SET_NETDEV_DEV(%struct.net_device* %60, i32* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @pci_set_drvdata(%struct.pci_dev* %64, %struct.net_device* %65)
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %67)
  store %struct.iavf_adapter* %68, %struct.iavf_adapter** %7, align 8
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %70, i32 0, i32 15
  store %struct.net_device* %69, %struct.net_device** %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %73, i32 0, i32 14
  store %struct.pci_dev* %72, %struct.pci_dev** %74, align 8
  %75 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %76 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %75, i32 0, i32 13
  store %struct.iavf_hw* %76, %struct.iavf_hw** %8, align 8
  %77 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %78 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %79 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %78, i32 0, i32 8
  store %struct.iavf_adapter* %77, %struct.iavf_adapter** %79, align 8
  %80 = load i32, i32* @DEFAULT_DEBUG_LEVEL_SHIFT, align 4
  %81 = call i64 @BIT(i32 %80)
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %84 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %83, i32 0, i32 12
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @__IAVF_STARTUP, align 4
  %86 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = call i32 @pci_save_state(%struct.pci_dev* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = call i32 @pci_resource_start(%struct.pci_dev* %90, i32 0)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_resource_len(%struct.pci_dev* %92, i32 0)
  %94 = call i32 @ioremap(i32 %91, i32 %93)
  %95 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %96 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %98 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %59
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %208

104:                                              ; preds = %59
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %109 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %114 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = load i32, i32* @PCI_REVISION_ID, align 4
  %117 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %118 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %117, i32 0, i32 4
  %119 = call i32 @pci_read_config_byte(%struct.pci_dev* %115, i32 %116, i32* %118)
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %124 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %129 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @PCI_SLOT(i32 %132)
  %134 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %135 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @PCI_FUNC(i32 %139)
  %141 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %142 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %150 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %153 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = call i32 @mutex_init(i32* %154)
  %156 = load %struct.iavf_hw*, %struct.iavf_hw** %8, align 8
  %157 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @mutex_init(i32* %158)
  %160 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %160, i32 0, i32 10
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %164 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %163, i32 0, i32 9
  %165 = call i32 @spin_lock_init(i32* %164)
  %166 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %167 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %166, i32 0, i32 8
  %168 = call i32 @INIT_LIST_HEAD(i32* %167)
  %169 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %170 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %169, i32 0, i32 7
  %171 = call i32 @INIT_LIST_HEAD(i32* %170)
  %172 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %172, i32 0, i32 6
  %174 = call i32 @INIT_LIST_HEAD(i32* %173)
  %175 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %176 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %175, i32 0, i32 5
  %177 = load i32, i32* @iavf_reset_task, align 4
  %178 = call i32 @INIT_WORK(i32* %176, i32 %177)
  %179 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %180 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %179, i32 0, i32 4
  %181 = load i32, i32* @iavf_adminq_task, align 4
  %182 = call i32 @INIT_WORK(i32* %180, i32 %181)
  %183 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %184 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %183, i32 0, i32 3
  %185 = load i32, i32* @iavf_watchdog_task, align 4
  %186 = call i32 @INIT_DELAYED_WORK(i32* %184, i32 %185)
  %187 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %188 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %187, i32 0, i32 2
  %189 = load i32, i32* @iavf_client_task, align 4
  %190 = call i32 @INIT_DELAYED_WORK(i32* %188, i32 %189)
  %191 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %192 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %191, i32 0, i32 1
  %193 = load i32, i32* @iavf_init_task, align 4
  %194 = call i32 @INIT_DELAYED_WORK(i32* %192, i32 %193)
  %195 = load i32, i32* @iavf_wq, align 4
  %196 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %197 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %196, i32 0, i32 1
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 7
  %202 = mul nsw i32 5, %201
  %203 = call i32 @msecs_to_jiffies(i32 %202)
  %204 = call i32 @queue_delayed_work(i32 %195, i32* %197, i32 %203)
  %205 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %206 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %205, i32 0, i32 0
  %207 = call i32 @init_waitqueue_head(i32* %206)
  store i32 0, i32* %3, align 4
  br label %219

208:                                              ; preds = %101
  %209 = load %struct.net_device*, %struct.net_device** %6, align 8
  %210 = call i32 @free_netdev(%struct.net_device* %209)
  br label %211

211:                                              ; preds = %208, %56
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = call i32 @pci_release_regions(%struct.pci_dev* %212)
  br label %214

214:                                              ; preds = %211, %42
  br label %215

215:                                              ; preds = %214, %30
  %216 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %217 = call i32 @pci_disable_device(%struct.pci_dev* %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %215, %104, %14
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
