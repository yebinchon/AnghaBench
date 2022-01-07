; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_dev* }
%struct.fimc_dev = type { i32 }

@FIMC_CTX_SHUT = common dso_local global i32 0, align 4
@FIMC_SHUTDOWN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_ctx*)* @fimc_m2m_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_m2m_shutdown(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %4 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %4, i32 0, i32 0
  %6 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  store %struct.fimc_dev* %6, %struct.fimc_dev** %3, align 8
  %7 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %8 = call i32 @fimc_m2m_pending(%struct.fimc_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @FIMC_CTX_SHUT, align 4
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %14 = call i32 @fimc_ctx_state_set(i32 %12, %struct.fimc_ctx* %13)
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FIMC_CTX_SHUT, align 4
  %19 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %20 = call i32 @fimc_ctx_state_is_set(i32 %18, %struct.fimc_ctx* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @FIMC_SHUTDOWN_TIMEOUT, align 4
  %25 = call i32 @wait_event_timeout(i32 %17, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @fimc_m2m_pending(%struct.fimc_dev*) #1

declare dso_local i32 @fimc_ctx_state_set(i32, %struct.fimc_ctx*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @fimc_ctx_state_is_set(i32, %struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
