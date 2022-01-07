; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.flite_drvdata = type { i64 }
%struct.of_device_id = type { i64 }
%struct.fimc_lite = type { i64, i32, i32, i32, i32, i32, %struct.platform_device*, %struct.flite_drvdata* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flite_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fimc-lite\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Wrong %pOF node alias\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@flite_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to install irq (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"FIMC-LITE.%d registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_lite_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.flite_drvdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.fimc_lite*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.flite_drvdata* null, %struct.flite_drvdata** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %181

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.fimc_lite* @devm_kzalloc(%struct.device* %20, i32 48, i32 %21)
  store %struct.fimc_lite* %22, %struct.fimc_lite** %7, align 8
  %23 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %24 = icmp ne %struct.fimc_lite* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %181

28:                                               ; preds = %19
  %29 = load i32, i32* @flite_of_match, align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.of_device_id* @of_match_node(i32 %29, i32 %32)
  store %struct.of_device_id* %33, %struct.of_device_id** %6, align 8
  %34 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %35 = icmp ne %struct.of_device_id* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.flite_drvdata*
  store %struct.flite_drvdata* %40, %struct.flite_drvdata** %4, align 8
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @of_alias_get_id(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %47 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.flite_drvdata*, %struct.flite_drvdata** %4, align 8
  %49 = icmp ne %struct.flite_drvdata* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %52 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.flite_drvdata*, %struct.flite_drvdata** %4, align 8
  %55 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %60 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58, %50, %41
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %181

71:                                               ; preds = %58
  %72 = load %struct.flite_drvdata*, %struct.flite_drvdata** %4, align 8
  %73 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %74 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %73, i32 0, i32 7
  store %struct.flite_drvdata* %72, %struct.flite_drvdata** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %77 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %76, i32 0, i32 6
  store %struct.platform_device* %75, %struct.platform_device** %77, align 8
  %78 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %79 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %78, i32 0, i32 5
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %82 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %81, i32 0, i32 4
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %85 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %84, i32 0, i32 3
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load i32, i32* @IORESOURCE_MEM, align 4
  %89 = call %struct.resource* @platform_get_resource(%struct.platform_device* %87, i32 %88, i32 0)
  store %struct.resource* %89, %struct.resource** %8, align 8
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.resource*, %struct.resource** %8, align 8
  %92 = call i32 @devm_ioremap_resource(%struct.device* %90, %struct.resource* %91)
  %93 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %94 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %96 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %71
  %101 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %102 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %181

105:                                              ; preds = %71
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = load i32, i32* @IORESOURCE_IRQ, align 4
  %108 = call %struct.resource* @platform_get_resource(%struct.platform_device* %106, i32 %107, i32 0)
  store %struct.resource* %108, %struct.resource** %8, align 8
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = icmp eq %struct.resource* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %181

116:                                              ; preds = %105
  %117 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %118 = call i32 @fimc_lite_clk_get(%struct.fimc_lite* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %181

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.resource*, %struct.resource** %8, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @flite_irq_handler, align 4
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = call i32 @dev_name(%struct.device* %129)
  %131 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %132 = call i32 @devm_request_irq(%struct.device* %124, i32 %127, i32 %128, i32 0, i32 %130, %struct.fimc_lite* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %177

139:                                              ; preds = %123
  %140 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %141 = call i32 @fimc_lite_create_capture_subdev(%struct.fimc_lite* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %177

145:                                              ; preds = %139
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %148 = call i32 @platform_set_drvdata(%struct.platform_device* %146, %struct.fimc_lite* %147)
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @pm_runtime_enable(%struct.device* %149)
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i32 @pm_runtime_enabled(%struct.device* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %145
  %155 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %156 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @clk_prepare_enable(i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %174

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %145
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = call i32 @DMA_BIT_MASK(i32 32)
  %166 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %164, i32 %165)
  %167 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %168 = call i32 @fimc_lite_set_default_config(%struct.fimc_lite* %167)
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %171 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dev_dbg(%struct.device* %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %172)
  store i32 0, i32* %2, align 4
  br label %181

174:                                              ; preds = %161
  %175 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %176 = call i32 @fimc_lite_unregister_capture_subdev(%struct.fimc_lite* %175)
  br label %177

177:                                              ; preds = %174, %144, %135
  %178 = load %struct.fimc_lite*, %struct.fimc_lite** %7, align 8
  %179 = call i32 @fimc_lite_clk_put(%struct.fimc_lite* %178)
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %163, %121, %111, %100, %63, %25, %16
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.fimc_lite* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i64 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fimc_lite_clk_get(%struct.fimc_lite*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.fimc_lite*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @fimc_lite_create_capture_subdev(%struct.fimc_lite*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimc_lite*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @fimc_lite_set_default_config(%struct.fimc_lite*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @fimc_lite_unregister_capture_subdev(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_lite_clk_put(%struct.fimc_lite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
