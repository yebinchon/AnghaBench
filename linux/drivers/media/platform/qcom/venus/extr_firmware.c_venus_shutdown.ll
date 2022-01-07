; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64 }

@VENUS_PAS_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_shutdown(%struct.venus_core* %0) #0 {
  %2 = alloca %struct.venus_core*, align 8
  %3 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %2, align 8
  %4 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %5 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @VENUS_PAS_ID, align 4
  %10 = call i32 @qcom_scm_pas_shutdown(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.venus_core*, %struct.venus_core** %2, align 8
  %13 = call i32 @venus_shutdown_no_tz(%struct.venus_core* %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @qcom_scm_pas_shutdown(i32) #1

declare dso_local i32 @venus_shutdown_no_tz(%struct.venus_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
