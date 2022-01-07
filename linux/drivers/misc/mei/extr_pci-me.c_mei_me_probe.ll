; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_pci-me.c_mei_me_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.mei_cfg = type { i32 }
%struct.mei_device = type { i32 }
%struct.mei_me_hw = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to enable pci device.\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get pci regions.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@mei_me_irq_quick_handler = common dso_local global i32 0, align 4
@mei_me_irq_thread_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"request_threaded_irq failure. irq = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"init hw failure.\0A\00", align 1
@MEI_ME_RPM_TIMEOUT = common dso_local global i32 0, align 4
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"initialization successful.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mei_me_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mei_cfg*, align 8
  %7 = alloca %struct.mei_device*, align 8
  %8 = alloca %struct.mei_me_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mei_cfg* @mei_me_get_cfg(i32 %13)
  store %struct.mei_cfg* %14, %struct.mei_cfg** %6, align 8
  %15 = load %struct.mei_cfg*, %struct.mei_cfg** %6, align 8
  %16 = icmp ne %struct.mei_cfg* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %202

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.mei_cfg*, %struct.mei_cfg** %6, align 8
  %23 = call i32 @mei_me_quirk_probe(%struct.pci_dev* %21, %struct.mei_cfg* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %202

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pcim_enable_device(%struct.pci_dev* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %197

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_set_master(%struct.pci_dev* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @BIT(i32 0)
  %42 = load i32, i32* @KBUILD_MODNAME, align 4
  %43 = call i32 @pcim_iomap_regions(%struct.pci_dev* %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %197

50:                                               ; preds = %37
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @DMA_BIT_MASK(i32 64)
  %54 = call i32 @dma_set_mask(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @DMA_BIT_MASK(i32 64)
  %60 = call i32 @dma_set_coherent_mask(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56, %50
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = call i32 @DMA_BIT_MASK(i32 32)
  %66 = call i32 @dma_set_mask(i32* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @DMA_BIT_MASK(i32 32)
  %73 = call i32 @dma_set_coherent_mask(i32* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69, %62
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %197

82:                                               ; preds = %75
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load %struct.mei_cfg*, %struct.mei_cfg** %6, align 8
  %85 = call %struct.mei_device* @mei_me_dev_init(%struct.pci_dev* %83, %struct.mei_cfg* %84)
  store %struct.mei_device* %85, %struct.mei_device** %7, align 8
  %86 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %87 = icmp ne %struct.mei_device* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %197

91:                                               ; preds = %82
  %92 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %93 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %92)
  store %struct.mei_me_hw* %93, %struct.mei_me_hw** %8, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i32* @pcim_iomap_table(%struct.pci_dev* %94)
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mei_me_hw*, %struct.mei_me_hw** %8, align 8
  %99 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @pci_enable_msi(%struct.pci_dev* %100)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* @IRQF_ONESHOT, align 4
  br label %109

107:                                              ; preds = %91
  %108 = load i32, i32* @IRQF_SHARED, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %9, align 4
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @mei_me_irq_quick_handler, align 4
  %115 = load i32, i32* @mei_me_irq_thread_handler, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @KBUILD_MODNAME, align 4
  %118 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %119 = call i32 @request_threaded_irq(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, %struct.mei_device* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %109
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %197

129:                                              ; preds = %109
  %130 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %131 = call i64 @mei_start(%struct.mei_device* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %187

139:                                              ; preds = %129
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = load i32, i32* @MEI_ME_RPM_TIMEOUT, align 4
  %143 = call i32 @pm_runtime_set_autosuspend_delay(i32* %141, i32 %142)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = call i32 @pm_runtime_use_autosuspend(i32* %145)
  %147 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = call i32 @mei_register(%struct.mei_device* %147, i32* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %139
  br label %184

154:                                              ; preds = %139
  %155 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %156 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %157 = call i32 @pci_set_drvdata(%struct.pci_dev* %155, %struct.mei_device* %156)
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %161 = call i32 @dev_pm_set_driver_flags(i32* %159, i32 %160)
  %162 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %163 = call i32 @mei_me_set_pm_domain(%struct.mei_device* %162)
  %164 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %165 = call i64 @mei_pg_is_enabled(%struct.mei_device* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %154
  %168 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 0
  %170 = call i32 @pm_runtime_put_noidle(i32* %169)
  %171 = load %struct.mei_me_hw*, %struct.mei_me_hw** %8, align 8
  %172 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = call i32 @pm_runtime_allow(i32* %177)
  br label %179

179:                                              ; preds = %175, %167
  br label %180

180:                                              ; preds = %179, %154
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = call i32 @dev_dbg(i32* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %202

184:                                              ; preds = %153
  %185 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %186 = call i32 @mei_stop(%struct.mei_device* %185)
  br label %187

187:                                              ; preds = %184, %133
  %188 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %189 = call i32 @mei_cancel_work(%struct.mei_device* %188)
  %190 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %191 = call i32 @mei_disable_interrupts(%struct.mei_device* %190)
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %196 = call i32 @free_irq(i32 %194, %struct.mei_device* %195)
  br label %197

197:                                              ; preds = %187, %122, %88, %78, %46, %33
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 0
  %200 = call i32 (i32*, i8*, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %197, %180, %25, %17
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.mei_cfg* @mei_me_get_cfg(i32) #1

declare dso_local i32 @mei_me_quirk_probe(%struct.pci_dev*, %struct.mei_cfg*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local %struct.mei_device* @mei_me_dev_init(%struct.pci_dev*, %struct.mei_cfg*) #1

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.mei_device*) #1

declare dso_local i64 @mei_start(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @mei_register(%struct.mei_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mei_device*) #1

declare dso_local i32 @dev_pm_set_driver_flags(i32*, i32) #1

declare dso_local i32 @mei_me_set_pm_domain(%struct.mei_device*) #1

declare dso_local i64 @mei_pg_is_enabled(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

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
