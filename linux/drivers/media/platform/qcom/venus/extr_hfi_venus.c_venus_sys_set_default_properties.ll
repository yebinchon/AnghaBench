; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_sys_set_default_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_sys_set_default_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@venus_fw_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"setting fw debug msg ON failed (%d)\0A\00", align 1
@venus_sys_idle_indicator = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"setting idle response ON failed (%d)\0A\00", align 1
@venus_fw_low_power_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"setting hw power collapse ON failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_sys_set_default_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_sys_set_default_properties(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca %struct.venus_hfi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %2, align 8
  %5 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %6 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %11 = load i32, i32* @venus_fw_debug, align 4
  %12 = call i32 @venus_sys_set_debug(%struct.venus_hfi_device* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %21 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i64 @IS_V4(%struct.TYPE_2__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* @venus_sys_idle_indicator, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %28 = load i32, i32* @venus_sys_idle_indicator, align 4
  %29 = call i32 @venus_sys_set_idle_message(%struct.venus_hfi_device* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %38 = load i32, i32* @venus_fw_low_power_mode, align 4
  %39 = call i32 @venus_sys_set_power_control(%struct.venus_hfi_device* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @venus_sys_set_debug(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_V4(%struct.TYPE_2__*) #1

declare dso_local i32 @venus_sys_set_idle_message(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_sys_set_power_control(%struct.venus_hfi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
