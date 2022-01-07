; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpmi_nand_data = type { i32*, %struct.platform_device*, i32 }
%struct.of_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpmi_nand_id_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to find the right device id.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"driver registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpmi_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpmi_nand_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gpmi_nand_data* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.gpmi_nand_data* %10, %struct.gpmi_nand_data** %4, align 8
  %11 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %12 = icmp ne %struct.gpmi_nand_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = load i32, i32* @gpmi_nand_id_table, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.of_device_id* @of_match_device(i32 %17, i32* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %5, align 8
  %21 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %22 = icmp ne %struct.of_device_id* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %28 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.gpmi_nand_data* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %41 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %40, i32 0, i32 1
  store %struct.platform_device* %39, %struct.platform_device** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %45 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %47 = call i32 @acquire_resources(%struct.gpmi_nand_data* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %104

51:                                               ; preds = %35
  %52 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %53 = call i32 @__gpmi_enable_clk(%struct.gpmi_nand_data* %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %95

57:                                               ; preds = %51
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @pm_runtime_set_autosuspend_delay(i32* %59, i32 500)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @pm_runtime_use_autosuspend(i32* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @pm_runtime_set_active(i32* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_enable(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @pm_runtime_get_sync(i32* %71)
  %73 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %74 = call i32 @gpmi_init(%struct.gpmi_nand_data* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %95

78:                                               ; preds = %57
  %79 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %80 = call i32 @gpmi_nand_init(%struct.gpmi_nand_data* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %95

84:                                               ; preds = %78
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @pm_runtime_mark_last_busy(i32* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @pm_runtime_put_autosuspend(i32* %89)
  %91 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %92 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @dev_info(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

95:                                               ; preds = %83, %77, %56
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @pm_runtime_put(i32* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_disable(i32* %100)
  %102 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %103 = call i32 @release_resources(%struct.gpmi_nand_data* %102)
  br label %104

104:                                              ; preds = %95, %50
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %84, %29, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.gpmi_nand_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpmi_nand_data*) #1

declare dso_local i32 @acquire_resources(%struct.gpmi_nand_data*) #1

declare dso_local i32 @__gpmi_enable_clk(%struct.gpmi_nand_data*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @gpmi_init(%struct.gpmi_nand_data*) #1

declare dso_local i32 @gpmi_nand_init(%struct.gpmi_nand_data*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @release_resources(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
