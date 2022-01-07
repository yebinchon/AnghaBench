; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c___gsc_m2m_job_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c___gsc_m2m_job_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@GSC_CTX_ABORT = common dso_local global i32 0, align 4
@GSC_CTX_STOP_REQ = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_ctx*)* @__gsc_m2m_job_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gsc_m2m_job_abort(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %4 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %5 = call i32 @gsc_m2m_ctx_stop_req(%struct.gsc_ctx* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ETIMEDOUT, align 4
  %8 = sub nsw i32 0, %7
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GSC_CTX_ABORT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %19 = load i32, i32* @GSC_CTX_ABORT, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %22 = call i32 @gsc_ctx_state_lock_clear(i32 %20, %struct.gsc_ctx* %21)
  %23 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %24 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %25 = call i32 @gsc_m2m_job_finish(%struct.gsc_ctx* %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @gsc_m2m_ctx_stop_req(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_ctx_state_lock_clear(i32, %struct.gsc_ctx*) #1

declare dso_local i32 @gsc_m2m_job_finish(%struct.gsc_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
