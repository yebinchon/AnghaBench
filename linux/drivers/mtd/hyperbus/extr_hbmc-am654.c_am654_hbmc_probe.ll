; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hbmc-am654.c_am654_hbmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hbmc-am654.c_am654_hbmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.am654_hbmc_priv = type { %struct.mux_control*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.mux_control = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mux-controls\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to select HBMC mux\0A\00", align 1
@am654_hbmc_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @am654_hbmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am654_hbmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.am654_hbmc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mux_control*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.am654_hbmc_priv* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.am654_hbmc_priv* %12, %struct.am654_hbmc_priv** %5, align 8
  %13 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %14 = icmp ne %struct.am654_hbmc_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.am654_hbmc_priv* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @of_property_read_bool(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call %struct.mux_control* @devm_mux_control_get(%struct.device* %28, i32* null)
  store %struct.mux_control* %29, %struct.mux_control** %7, align 8
  %30 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %31 = call i64 @IS_ERR(%struct.mux_control* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.mux_control* %34)
  store i32 %35, i32* %2, align 4
  br label %105

36:                                               ; preds = %27
  %37 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %38 = call i32 @mux_control_select(%struct.mux_control* %37, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %105

45:                                               ; preds = %36
  %46 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %47 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %48 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %47, i32 0, i32 0
  store %struct.mux_control* %46, %struct.mux_control** %48, align 8
  br label %49

49:                                               ; preds = %45, %18
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @pm_runtime_enable(%struct.device* %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @pm_runtime_get_sync(%struct.device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @pm_runtime_put_noidle(%struct.device* %57)
  br label %91

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %62 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store %struct.device* %60, %struct.device** %63, align 8
  %64 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %65 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32* @am654_hbmc_ops, i32** %66, align 8
  %67 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %68 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %67, i32 0, i32 2
  %69 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %70 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @of_get_next_child(i32 %74, i32* null)
  %76 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %77 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %80 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %79, i32 0, i32 1
  %81 = call i32 @hyperbus_register_device(%struct.TYPE_4__* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %59
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_put_sync(%struct.device* %88)
  br label %91

90:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %105

91:                                               ; preds = %84, %56
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @pm_runtime_disable(%struct.device* %92)
  %94 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %95 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %94, i32 0, i32 0
  %96 = load %struct.mux_control*, %struct.mux_control** %95, align 8
  %97 = icmp ne %struct.mux_control* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.am654_hbmc_priv*, %struct.am654_hbmc_priv** %5, align 8
  %100 = getelementptr inbounds %struct.am654_hbmc_priv, %struct.am654_hbmc_priv* %99, i32 0, i32 0
  %101 = load %struct.mux_control*, %struct.mux_control** %100, align 8
  %102 = call i32 @mux_control_deselect(%struct.mux_control* %101)
  br label %103

103:                                              ; preds = %98, %91
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %90, %41, %33, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.am654_hbmc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.am654_hbmc_priv*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.mux_control* @devm_mux_control_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mux_control*) #1

declare dso_local i32 @PTR_ERR(%struct.mux_control*) #1

declare dso_local i32 @mux_control_select(%struct.mux_control*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @of_get_next_child(i32, i32*) #1

declare dso_local i32 @hyperbus_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @mux_control_deselect(%struct.mux_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
