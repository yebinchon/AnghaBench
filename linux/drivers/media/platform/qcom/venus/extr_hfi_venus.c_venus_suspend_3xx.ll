; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_suspend_3xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_suspend_3xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.venus_hfi_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"bad state, cannot suspend\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@venus_cpu_and_video_core_idle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"prepare for power collapse fail (%d)\0A\00", align 1
@venus_cpu_idle_and_pc_ready = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"venus_power_off (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*)* @venus_suspend_3xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_suspend_3xx(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %9 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %8)
  store %struct.venus_hfi_device* %9, %struct.venus_hfi_device** %4, align 8
  %10 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %11 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %14 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %19 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %25 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %28 = call i32 @venus_is_valid_state(%struct.venus_hfi_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %30 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %23
  %40 = load i32, i32* @venus_cpu_and_video_core_idle, align 4
  %41 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @readx_poll_timeout(i32 %40, %struct.venus_hfi_device* %41, i32 %42, i32 %43, i32 1500, i32 150000)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %39
  %50 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %51 = call i32 @venus_prepare_power_collapse(%struct.venus_hfi_device* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %91

59:                                               ; preds = %49
  %60 = load i32, i32* @venus_cpu_idle_and_pc_ready, align 4
  %61 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @readx_poll_timeout(i32 %60, %struct.venus_hfi_device* %61, i32 %62, i32 %63, i32 1500, i32 150000)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %91

69:                                               ; preds = %59
  %70 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %71 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %74 = call i32 @venus_power_off(%struct.venus_hfi_device* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %82 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %87 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %89 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %77, %67, %54, %47, %34, %22
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @venus_is_valid_state(%struct.venus_hfi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.venus_hfi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @venus_prepare_power_collapse(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_power_off(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
