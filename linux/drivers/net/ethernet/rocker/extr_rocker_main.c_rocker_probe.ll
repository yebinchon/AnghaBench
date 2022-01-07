; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.rocker = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pci_enable_device failed\0A\00", align 1
@rocker_driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pci_request_regions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pci_set_consistent_dma_mask failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"pci_set_dma_mask failed\0A\00", align 1
@ROCKER_PCI_BAR0_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid PCI region size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PORT_PHYS_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"MSI-X init failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"basic hw test failed\0A\00", align 1
@CONTROL = common dso_local global i32 0, align 4
@ROCKER_CONTROL_RESET = common dso_local global i32 0, align 4
@ROCKER_MSIX_VEC_CMD = common dso_local global i32 0, align 4
@rocker_cmd_irq_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"cannot assign cmd irq\0A\00", align 1
@ROCKER_MSIX_VEC_EVENT = common dso_local global i32 0, align 4
@rocker_event_irq_handler = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"cannot assign event irq\0A\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"failed to probe ports\0A\00", align 1
@rocker_router_fib_event = common dso_local global i32 0, align 4
@rocker_switchdev_notifier = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed to register switchdev notifier\0A\00", align 1
@rocker_switchdev_blocking_notifier = common dso_local global %struct.notifier_block zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"Failed to register switchdev blocking notifier\0A\00", align 1
@SWITCH_ID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"Rocker switch with id %*phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rocker_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.rocker*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rocker* @kzalloc(i32 32, i32 %9)
  store %struct.rocker* %10, %struct.rocker** %7, align 8
  %11 = load %struct.rocker*, %struct.rocker** %7, align 8
  %12 = icmp ne %struct.rocker* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %274

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_enable_device(%struct.pci_dev* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %270

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @rocker_driver_name, align 4
  %28 = call i32 @pci_request_regions(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %267

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @DMA_BIT_MASK(i32 64)
  %38 = call i32 @pci_set_dma_mask(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @DMA_BIT_MASK(i32 64)
  %44 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %264

51:                                               ; preds = %41
  br label %63

52:                                               ; preds = %35
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @DMA_BIT_MASK(i32 32)
  %55 = call i32 @pci_set_dma_mask(%struct.pci_dev* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %264

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i64 @pci_resource_len(%struct.pci_dev* %64, i32 0)
  %66 = load i64, i64* @ROCKER_PCI_BAR0_SIZE, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %263

74:                                               ; preds = %63
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pci_resource_start(%struct.pci_dev* %75, i32 0)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i64 @pci_resource_len(%struct.pci_dev* %77, i32 0)
  %79 = call i32 @ioremap(i32 %76, i64 %78)
  %80 = load %struct.rocker*, %struct.rocker** %7, align 8
  %81 = getelementptr inbounds %struct.rocker, %struct.rocker* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.rocker*, %struct.rocker** %7, align 8
  %83 = getelementptr inbounds %struct.rocker, %struct.rocker* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %74
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %262

92:                                               ; preds = %74
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = call i32 @pci_set_master(%struct.pci_dev* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load %struct.rocker*, %struct.rocker** %7, align 8
  %97 = getelementptr inbounds %struct.rocker, %struct.rocker* %96, i32 0, i32 5
  store %struct.pci_dev* %95, %struct.pci_dev** %97, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.rocker*, %struct.rocker** %7, align 8
  %100 = call i32 @pci_set_drvdata(%struct.pci_dev* %98, %struct.rocker* %99)
  %101 = load %struct.rocker*, %struct.rocker** %7, align 8
  %102 = load i32, i32* @PORT_PHYS_COUNT, align 4
  %103 = call i32 @rocker_read32(%struct.rocker* %101, i32 %102)
  %104 = load %struct.rocker*, %struct.rocker** %7, align 8
  %105 = getelementptr inbounds %struct.rocker, %struct.rocker* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.rocker*, %struct.rocker** %7, align 8
  %107 = call i32 @rocker_msix_init(%struct.rocker* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %257

114:                                              ; preds = %92
  %115 = load %struct.rocker*, %struct.rocker** %7, align 8
  %116 = call i32 @rocker_basic_hw_test(%struct.rocker* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %254

123:                                              ; preds = %114
  %124 = load %struct.rocker*, %struct.rocker** %7, align 8
  %125 = load i32, i32* @CONTROL, align 4
  %126 = load i32, i32* @ROCKER_CONTROL_RESET, align 4
  %127 = call i32 @rocker_write32(%struct.rocker* %124, i32 %125, i32 %126)
  %128 = load %struct.rocker*, %struct.rocker** %7, align 8
  %129 = call i32 @rocker_dma_rings_init(%struct.rocker* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %253

133:                                              ; preds = %123
  %134 = load %struct.rocker*, %struct.rocker** %7, align 8
  %135 = load i32, i32* @ROCKER_MSIX_VEC_CMD, align 4
  %136 = call i32 @rocker_msix_vector(%struct.rocker* %134, i32 %135)
  %137 = load i32, i32* @rocker_cmd_irq_handler, align 4
  %138 = load i32, i32* @rocker_driver_name, align 4
  %139 = load %struct.rocker*, %struct.rocker** %7, align 8
  %140 = call i32 @request_irq(i32 %136, i32 %137, i32 0, i32 %138, %struct.rocker* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = call i32 @dev_err(i32* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %250

147:                                              ; preds = %133
  %148 = load %struct.rocker*, %struct.rocker** %7, align 8
  %149 = load i32, i32* @ROCKER_MSIX_VEC_EVENT, align 4
  %150 = call i32 @rocker_msix_vector(%struct.rocker* %148, i32 %149)
  %151 = load i32, i32* @rocker_event_irq_handler, align 4
  %152 = load i32, i32* @rocker_driver_name, align 4
  %153 = load %struct.rocker*, %struct.rocker** %7, align 8
  %154 = call i32 @request_irq(i32 %150, i32 %151, i32 0, i32 %152, %struct.rocker* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %244

161:                                              ; preds = %147
  %162 = load i32, i32* @rocker_driver_name, align 4
  %163 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %164 = call i32 @alloc_ordered_workqueue(i32 %162, i32 %163)
  %165 = load %struct.rocker*, %struct.rocker** %7, align 8
  %166 = getelementptr inbounds %struct.rocker, %struct.rocker* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.rocker*, %struct.rocker** %7, align 8
  %168 = getelementptr inbounds %struct.rocker, %struct.rocker* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %8, align 4
  br label %238

174:                                              ; preds = %161
  %175 = load %struct.rocker*, %struct.rocker** %7, align 8
  %176 = call i32 @rocker_probe_ports(%struct.rocker* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %181 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %180, i32 0, i32 0
  %182 = call i32 @dev_err(i32* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %233

183:                                              ; preds = %174
  %184 = load i32, i32* @rocker_router_fib_event, align 4
  %185 = load %struct.rocker*, %struct.rocker** %7, align 8
  %186 = getelementptr inbounds %struct.rocker, %struct.rocker* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load %struct.rocker*, %struct.rocker** %7, align 8
  %189 = getelementptr inbounds %struct.rocker, %struct.rocker* %188, i32 0, i32 2
  %190 = call i32 @register_fib_notifier(%struct.TYPE_5__* %189, i32* null)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %230

194:                                              ; preds = %183
  %195 = call i32 @register_switchdev_notifier(i32* @rocker_switchdev_notifier)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 0
  %201 = call i32 @dev_err(i32* %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  br label %226

202:                                              ; preds = %194
  store %struct.notifier_block* @rocker_switchdev_blocking_notifier, %struct.notifier_block** %6, align 8
  %203 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %204 = call i32 @register_switchdev_blocking_notifier(%struct.notifier_block* %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 0
  %210 = call i32 @dev_err(i32* %209, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  br label %224

211:                                              ; preds = %202
  %212 = load %struct.rocker*, %struct.rocker** %7, align 8
  %213 = load i32, i32* @SWITCH_ID, align 4
  %214 = call i32 @rocker_read64(%struct.rocker* %212, i32 %213)
  %215 = load %struct.rocker*, %struct.rocker** %7, align 8
  %216 = getelementptr inbounds %struct.rocker, %struct.rocker* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 4
  %218 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %219 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %218, i32 0, i32 0
  %220 = load %struct.rocker*, %struct.rocker** %7, align 8
  %221 = getelementptr inbounds %struct.rocker, %struct.rocker* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = call i32 @dev_info(i32* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 4, i32* %222)
  store i32 0, i32* %3, align 4
  br label %274

224:                                              ; preds = %207
  %225 = call i32 @unregister_switchdev_notifier(i32* @rocker_switchdev_notifier)
  br label %226

226:                                              ; preds = %224, %198
  %227 = load %struct.rocker*, %struct.rocker** %7, align 8
  %228 = getelementptr inbounds %struct.rocker, %struct.rocker* %227, i32 0, i32 2
  %229 = call i32 @unregister_fib_notifier(%struct.TYPE_5__* %228)
  br label %230

230:                                              ; preds = %226, %193
  %231 = load %struct.rocker*, %struct.rocker** %7, align 8
  %232 = call i32 @rocker_remove_ports(%struct.rocker* %231)
  br label %233

233:                                              ; preds = %230, %179
  %234 = load %struct.rocker*, %struct.rocker** %7, align 8
  %235 = getelementptr inbounds %struct.rocker, %struct.rocker* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @destroy_workqueue(i32 %236)
  br label %238

238:                                              ; preds = %233, %171
  %239 = load %struct.rocker*, %struct.rocker** %7, align 8
  %240 = load i32, i32* @ROCKER_MSIX_VEC_EVENT, align 4
  %241 = call i32 @rocker_msix_vector(%struct.rocker* %239, i32 %240)
  %242 = load %struct.rocker*, %struct.rocker** %7, align 8
  %243 = call i32 @free_irq(i32 %241, %struct.rocker* %242)
  br label %244

244:                                              ; preds = %238, %157
  %245 = load %struct.rocker*, %struct.rocker** %7, align 8
  %246 = load i32, i32* @ROCKER_MSIX_VEC_CMD, align 4
  %247 = call i32 @rocker_msix_vector(%struct.rocker* %245, i32 %246)
  %248 = load %struct.rocker*, %struct.rocker** %7, align 8
  %249 = call i32 @free_irq(i32 %247, %struct.rocker* %248)
  br label %250

250:                                              ; preds = %244, %143
  %251 = load %struct.rocker*, %struct.rocker** %7, align 8
  %252 = call i32 @rocker_dma_rings_fini(%struct.rocker* %251)
  br label %253

253:                                              ; preds = %250, %132
  br label %254

254:                                              ; preds = %253, %119
  %255 = load %struct.rocker*, %struct.rocker** %7, align 8
  %256 = call i32 @rocker_msix_fini(%struct.rocker* %255)
  br label %257

257:                                              ; preds = %254, %110
  %258 = load %struct.rocker*, %struct.rocker** %7, align 8
  %259 = getelementptr inbounds %struct.rocker, %struct.rocker* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @iounmap(i32 %260)
  br label %262

262:                                              ; preds = %257, %86
  br label %263

263:                                              ; preds = %262, %68
  br label %264

264:                                              ; preds = %263, %58, %47
  %265 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %266 = call i32 @pci_release_regions(%struct.pci_dev* %265)
  br label %267

267:                                              ; preds = %264, %31
  %268 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %269 = call i32 @pci_disable_device(%struct.pci_dev* %268)
  br label %270

270:                                              ; preds = %267, %21
  %271 = load %struct.rocker*, %struct.rocker** %7, align 8
  %272 = call i32 @kfree(%struct.rocker* %271)
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %211, %13
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local %struct.rocker* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.rocker*) #1

declare dso_local i32 @rocker_read32(%struct.rocker*, i32) #1

declare dso_local i32 @rocker_msix_init(%struct.rocker*) #1

declare dso_local i32 @rocker_basic_hw_test(%struct.rocker*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_dma_rings_init(%struct.rocker*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rocker*) #1

declare dso_local i32 @rocker_msix_vector(%struct.rocker*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @rocker_probe_ports(%struct.rocker*) #1

declare dso_local i32 @register_fib_notifier(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @register_switchdev_notifier(i32*) #1

declare dso_local i32 @register_switchdev_blocking_notifier(%struct.notifier_block*) #1

declare dso_local i32 @rocker_read64(%struct.rocker*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32*) #1

declare dso_local i32 @unregister_switchdev_notifier(i32*) #1

declare dso_local i32 @unregister_fib_notifier(%struct.TYPE_5__*) #1

declare dso_local i32 @rocker_remove_ports(%struct.rocker*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_irq(i32, %struct.rocker*) #1

declare dso_local i32 @rocker_dma_rings_fini(%struct.rocker*) #1

declare dso_local i32 @rocker_msix_fini(%struct.rocker*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.rocker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
