; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.intel_lpss_platform_info = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.intel_lpss = type { i64, %struct.TYPE_4__*, i64, i32, %struct.device*, %struct.intel_lpss_platform_info* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPSS_PRIV_OFFSET = common dso_local global i64 0, align 8
@LPSS_PRIV_SIZE = common dso_local global i32 0, align 4
@LPSS_PRIV_CAPS = common dso_local global i64 0, align 8
@intel_lpss_devid_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to create debugfs entries\0A\00", align 1
@intel_lpss_idma64_cell = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to add %s, fallback to PIO\0A\00", align 1
@LPSS_IDMA64_DRIVER_NAME = common dso_local global i32 0, align 4
@DPM_FLAG_SMART_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_lpss_probe(%struct.device* %0, %struct.intel_lpss_platform_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_lpss_platform_info*, align 8
  %6 = alloca %struct.intel_lpss*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.intel_lpss_platform_info* %1, %struct.intel_lpss_platform_info** %5, align 8
  %8 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %9 = icmp ne %struct.intel_lpss_platform_info* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %12 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %17 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %10, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %176

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.intel_lpss* @devm_kzalloc(%struct.device* %24, i32 48, i32 %25)
  store %struct.intel_lpss* %26, %struct.intel_lpss** %6, align 8
  %27 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %28 = icmp ne %struct.intel_lpss* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %176

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %35 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPSS_PRIV_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @LPSS_PRIV_SIZE, align 4
  %42 = call i64 @devm_ioremap(%struct.device* %33, i64 %40, i32 %41)
  %43 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %44 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %46 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %176

52:                                               ; preds = %32
  %53 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %54 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %55 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %54, i32 0, i32 5
  store %struct.intel_lpss_platform_info* %53, %struct.intel_lpss_platform_info** %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %58 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %57, i32 0, i32 4
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %60 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LPSS_PRIV_CAPS, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  %65 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %66 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %69 = call i32 @dev_set_drvdata(%struct.device* %67, %struct.intel_lpss* %68)
  %70 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %71 = call i32 @intel_lpss_assign_devs(%struct.intel_lpss* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %176

76:                                               ; preds = %52
  %77 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %78 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %81 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %85 = call i32 @intel_lpss_init_dev(%struct.intel_lpss* %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i64 @ida_simple_get(i32* @intel_lpss_devid_ida, i32 0, i32 0, i32 %86)
  %88 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %89 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %91 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %96 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %176

99:                                               ; preds = %76
  %100 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %101 = call i32 @intel_lpss_register_clock(%struct.intel_lpss* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %169

105:                                              ; preds = %99
  %106 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %107 = call i32 @intel_lpss_ltr_expose(%struct.intel_lpss* %106)
  %108 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %109 = call i32 @intel_lpss_debugfs_add(%struct.intel_lpss* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %117 = call i64 @intel_lpss_has_idma(%struct.intel_lpss* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %122 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %126 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %129 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @mfd_add_devices(%struct.device* %120, i32 %124, %struct.TYPE_4__* @intel_lpss_idma64_cell, i32 1, %struct.TYPE_5__* %127, i64 %130, i32* null)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i32, i32* @LPSS_IDMA64_DRIVER_NAME, align 4
  %137 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %119
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %142 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %146 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %149 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load %struct.intel_lpss_platform_info*, %struct.intel_lpss_platform_info** %5, align 8
  %152 = getelementptr inbounds %struct.intel_lpss_platform_info, %struct.intel_lpss_platform_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @mfd_add_devices(%struct.device* %140, i32 %144, %struct.TYPE_4__* %147, i32 1, %struct.TYPE_5__* %150, i64 %153, i32* null)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  br label %162

158:                                              ; preds = %139
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = load i32, i32* @DPM_FLAG_SMART_SUSPEND, align 4
  %161 = call i32 @dev_pm_set_driver_flags(%struct.device* %159, i32 %160)
  store i32 0, i32* %3, align 4
  br label %176

162:                                              ; preds = %157
  %163 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %164 = call i32 @intel_lpss_debugfs_remove(%struct.intel_lpss* %163)
  %165 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %166 = call i32 @intel_lpss_ltr_hide(%struct.intel_lpss* %165)
  %167 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %168 = call i32 @intel_lpss_unregister_clock(%struct.intel_lpss* %167)
  br label %169

169:                                              ; preds = %162, %104
  %170 = load %struct.intel_lpss*, %struct.intel_lpss** %6, align 8
  %171 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @ida_simple_remove(i32* @intel_lpss_devid_ida, i32 %173)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %169, %158, %94, %74, %49, %29, %20
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.intel_lpss* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_assign_devs(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_init_dev(%struct.intel_lpss*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @intel_lpss_register_clock(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_ltr_expose(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_debugfs_add(%struct.intel_lpss*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @intel_lpss_has_idma(%struct.intel_lpss*) #1

declare dso_local i32 @mfd_add_devices(%struct.device*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i64, i32*) #1

declare dso_local i32 @dev_pm_set_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @intel_lpss_debugfs_remove(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_ltr_hide(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_unregister_clock(%struct.intel_lpss*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
