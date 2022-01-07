; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-txe.c_mei_txe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@SEC_BAR = common dso_local global i32 0, align 4
@BRIDGE_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to enable pci device.\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get pci regions.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No suitable DMA available.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mei_txe_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@mei_txe_irq_quick_handler = common dso_local global i32* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"mei: request_threaded_irq failure. irq = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"init hw failure.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MEI_TXI_RPM_TIMEOUT = common dso_local global i32 0, align 4
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mei_txe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca %struct.mei_txe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @SEC_BAR, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = load i32, i32* @BRIDGE_BAR, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pcim_enable_device(%struct.pci_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %155

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_set_master(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @KBUILD_MODNAME, align 4
  %29 = call i32 @pcim_iomap_regions(%struct.pci_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %155

36:                                               ; preds = %23
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @DMA_BIT_MASK(i32 36)
  %39 = call i32 @pci_set_dma_mask(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @DMA_BIT_MASK(i32 32)
  %45 = call i32 @pci_set_dma_mask(%struct.pci_dev* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %155

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call %struct.mei_device* @mei_txe_dev_init(%struct.pci_dev* %54)
  store %struct.mei_device* %55, %struct.mei_device** %6, align 8
  %56 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %57 = icmp ne %struct.mei_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %155

61:                                               ; preds = %53
  %62 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %63 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %62)
  store %struct.mei_txe_hw* %63, %struct.mei_txe_hw** %7, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pcim_iomap_table(%struct.pci_dev* %64)
  %66 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %7, align 8
  %67 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_enable_msi(%struct.pci_dev* %68)
  %70 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %71 = call i32 @mei_clear_interrupts(%struct.mei_device* %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %61
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @mei_txe_irq_thread_handler, align 4
  %80 = load i32, i32* @IRQF_ONESHOT, align 4
  %81 = load i32, i32* @KBUILD_MODNAME, align 4
  %82 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %83 = call i32 @request_threaded_irq(i32 %78, i32* null, i32 %79, i32 %80, i32 %81, %struct.mei_device* %82)
  store i32 %83, i32* %9, align 4
  br label %94

84:                                               ; preds = %61
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @mei_txe_irq_quick_handler, align 8
  %89 = load i32, i32* @mei_txe_irq_thread_handler, align 4
  %90 = load i32, i32* @IRQF_SHARED, align 4
  %91 = load i32, i32* @KBUILD_MODNAME, align 4
  %92 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %93 = call i32 @request_threaded_irq(i32 %87, i32* %88, i32 %89, i32 %90, i32 %91, %struct.mei_device* %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %84, %75
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %155

104:                                              ; preds = %94
  %105 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %106 = call i64 @mei_start(%struct.mei_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %145

114:                                              ; preds = %104
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = load i32, i32* @MEI_TXI_RPM_TIMEOUT, align 4
  %118 = call i32 @pm_runtime_set_autosuspend_delay(i32* %116, i32 %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_use_autosuspend(i32* %120)
  %122 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = call i32 @mei_register(%struct.mei_device* %122, i32* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %142

129:                                              ; preds = %114
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %132 = call i32 @pci_set_drvdata(%struct.pci_dev* %130, %struct.mei_device* %131)
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 0
  %135 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %136 = call i32 @dev_pm_set_driver_flags(i32* %134, i32 %135)
  %137 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %138 = call i32 @mei_txe_set_pm_domain(%struct.mei_device* %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_put_noidle(i32* %140)
  store i32 0, i32* %3, align 4
  br label %160

142:                                              ; preds = %128
  %143 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %144 = call i32 @mei_stop(%struct.mei_device* %143)
  br label %145

145:                                              ; preds = %142, %108
  %146 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %147 = call i32 @mei_cancel_work(%struct.mei_device* %146)
  %148 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %149 = call i32 @mei_disable_interrupts(%struct.mei_device* %148)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %154 = call i32 @free_irq(i32 %152, %struct.mei_device* %153)
  br label %155

155:                                              ; preds = %145, %97, %58, %48, %32, %19
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 0
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %155, %129
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.mei_device* @mei_txe_dev_init(%struct.pci_dev*) #1

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @mei_clear_interrupts(%struct.mei_device*) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.mei_device*) #1

declare dso_local i64 @mei_start(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @mei_register(%struct.mei_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mei_device*) #1

declare dso_local i32 @dev_pm_set_driver_flags(i32*, i32) #1

declare dso_local i32 @mei_txe_set_pm_domain(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @mei_stop(%struct.mei_device*) #1

declare dso_local i32 @mei_cancel_work(%struct.mei_device*) #1

declare dso_local i32 @mei_disable_interrupts(%struct.mei_device*) #1

declare dso_local i32 @free_irq(i32, %struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
