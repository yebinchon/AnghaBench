; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_set_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_set_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64, i64 }

@WRAPPER_A9SS_SW_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_set_hw_state(%struct.venus_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %7 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @qcom_scm_set_remote_state(i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %18 = call i32 @venus_reset_cpu(%struct.venus_core* %17)
  br label %26

19:                                               ; preds = %13
  %20 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %21 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WRAPPER_A9SS_SW_RESET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 1, i64 %24)
  br label %26

26:                                               ; preds = %19, %16
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @qcom_scm_set_remote_state(i32, i32) #1

declare dso_local i32 @venus_reset_cpu(%struct.venus_core*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
