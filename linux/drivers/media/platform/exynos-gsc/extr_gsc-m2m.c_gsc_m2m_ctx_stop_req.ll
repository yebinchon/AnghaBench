; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_ctx_stop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_ctx_stop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.gsc_dev* }
%struct.gsc_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GSC_CTX_STOP_REQ = common dso_local global i32 0, align 4
@GSC_SHUTDOWN_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_ctx*)* @gsc_m2m_ctx_stop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_ctx_stop_req(%struct.gsc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.gsc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %3, align 8
  %7 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %7, i32 0, i32 0
  %9 = load %struct.gsc_dev*, %struct.gsc_dev** %8, align 8
  store %struct.gsc_dev* %9, %struct.gsc_dev** %5, align 8
  %10 = load %struct.gsc_dev*, %struct.gsc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gsc_ctx* @v4l2_m2m_get_curr_priv(i32 %13)
  store %struct.gsc_ctx* %14, %struct.gsc_ctx** %4, align 8
  %15 = load %struct.gsc_dev*, %struct.gsc_dev** %5, align 8
  %16 = call i32 @gsc_m2m_pending(%struct.gsc_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %20 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %21 = icmp ne %struct.gsc_ctx* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %47

23:                                               ; preds = %18
  %24 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %25 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %26 = call i32 @gsc_ctx_state_lock_set(i32 %24, %struct.gsc_ctx* %25)
  %27 = load %struct.gsc_dev*, %struct.gsc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %31 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %32 = call i32 @gsc_ctx_state_is_set(i32 %30, %struct.gsc_ctx* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @GSC_SHUTDOWN_TIMEOUT, align 4
  %37 = call i32 @wait_event_timeout(i32 %29, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  br label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %44, %43 ]
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.gsc_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @gsc_m2m_pending(%struct.gsc_dev*) #1

declare dso_local i32 @gsc_ctx_state_lock_set(i32, %struct.gsc_ctx*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @gsc_ctx_state_is_set(i32, %struct.gsc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
