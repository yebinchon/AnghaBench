; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_m2m_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_m2m_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bdisp_ctx* }
%struct.bdisp_ctx = type { i32 }

@ST_M2M_SUSPENDED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_dev*)* @bdisp_m2m_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_m2m_resume(%struct.bdisp_dev* %0) #0 {
  %2 = alloca %struct.bdisp_dev*, align 8
  %3 = alloca %struct.bdisp_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.bdisp_dev* %0, %struct.bdisp_dev** %2, align 8
  %5 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %10 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %11, align 8
  store %struct.bdisp_ctx* %12, %struct.bdisp_ctx** %3, align 8
  %13 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %14 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.bdisp_ctx* null, %struct.bdisp_ctx** %15, align 8
  %16 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %17 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* @ST_M2M_SUSPENDED, align 4
  %21 = load %struct.bdisp_dev*, %struct.bdisp_dev** %2, align 8
  %22 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %21, i32 0, i32 0
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %27 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %28 = call i32 @bdisp_job_finish(%struct.bdisp_ctx* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @bdisp_job_finish(%struct.bdisp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
