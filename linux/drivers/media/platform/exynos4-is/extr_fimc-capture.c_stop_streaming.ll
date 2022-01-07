; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_dev* }
%struct.fimc_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca %struct.fimc_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %5, i32 0, i32 0
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  store %struct.fimc_ctx* %7, %struct.fimc_ctx** %3, align 8
  %8 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %8, i32 0, i32 0
  %10 = load %struct.fimc_dev*, %struct.fimc_dev** %9, align 8
  store %struct.fimc_dev* %10, %struct.fimc_dev** %4, align 8
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %12 = call i32 @fimc_capture_active(%struct.fimc_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %17 = call i32 @fimc_stop_capture(%struct.fimc_dev* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @fimc_capture_active(%struct.fimc_dev*) #1

declare dso_local i32 @fimc_stop_capture(%struct.fimc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
