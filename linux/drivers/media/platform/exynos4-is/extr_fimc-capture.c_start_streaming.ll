; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.fimc_ctx* }
%struct.fimc_ctx = type { %struct.fimc_dev* }
%struct.fimc_dev = type { i32, %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i32, i32, i32, i64 }

@ST_CAPT_PEND = common dso_local global i32 0, align 4
@ST_CAPT_STREAM = common dso_local global i32 0, align 4
@ST_CAPT_ISP_STREAM = common dso_local global i32 0, align 4
@set_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_ctx*, align 8
  %7 = alloca %struct.fimc_dev*, align 8
  %8 = alloca %struct.fimc_vid_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %12, align 8
  store %struct.fimc_ctx* %13, %struct.fimc_ctx** %6, align 8
  %14 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %14, i32 0, i32 0
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %15, align 8
  store %struct.fimc_dev* %16, %struct.fimc_dev** %7, align 8
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %18 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %17, i32 0, i32 1
  store %struct.fimc_vid_cap* %18, %struct.fimc_vid_cap** %8, align 8
  %19 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %8, align 8
  %20 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %22 = call i32 @fimc_capture_hw_init(%struct.fimc_dev* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %27 = call i32 @fimc_capture_state_cleanup(%struct.fimc_dev* %26, i32 0)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load i32, i32* @ST_CAPT_PEND, align 4
  %31 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %32 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %8, align 8
  %42 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %29
  %47 = load i32, i32* @ST_CAPT_STREAM, align 4
  %48 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %49 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %48, i32 0, i32 0
  %50 = call i32 @test_and_set_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load %struct.fimc_ctx*, %struct.fimc_ctx** %6, align 8
  %54 = call i32 @fimc_activate_capture(%struct.fimc_ctx* %53)
  %55 = load i32, i32* @ST_CAPT_ISP_STREAM, align 4
  %56 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  %57 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %56, i32 0, i32 0
  %58 = call i32 @test_and_set_bit(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %8, align 8
  %62 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %61, i32 0, i32 2
  %63 = load i32, i32* @set_stream, align 4
  %64 = call i32 @fimc_pipeline_call(i32* %62, i32 %63, i32 1)
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %46, %29
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @fimc_capture_hw_init(%struct.fimc_dev*) #1

declare dso_local i32 @fimc_capture_state_cleanup(%struct.fimc_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @fimc_activate_capture(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_pipeline_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
