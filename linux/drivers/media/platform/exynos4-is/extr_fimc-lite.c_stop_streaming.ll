; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.fimc_lite* }
%struct.fimc_lite = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.fimc_lite*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %4, i32 0, i32 0
  %6 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  store %struct.fimc_lite* %6, %struct.fimc_lite** %3, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = call i32 @fimc_lite_active(%struct.fimc_lite* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %13 = call i32 @fimc_lite_stop_capture(%struct.fimc_lite* %12, i32 0)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @fimc_lite_active(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_lite_stop_capture(%struct.fimc_lite*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
