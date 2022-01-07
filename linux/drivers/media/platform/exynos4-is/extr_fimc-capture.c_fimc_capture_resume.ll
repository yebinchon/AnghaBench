; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i32, i32, i64, i32, %struct.exynos_video_entity }
%struct.exynos_video_entity = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fimc_vid_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ST_CAPT_SUSPENDED = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_capture_resume(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_vid_cap*, align 8
  %5 = alloca %struct.exynos_video_entity*, align 8
  %6 = alloca %struct.fimc_vid_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %8, i32 0, i32 1
  store %struct.fimc_vid_cap* %9, %struct.fimc_vid_cap** %4, align 8
  %10 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %10, i32 0, i32 4
  store %struct.exynos_video_entity* %11, %struct.exynos_video_entity** %5, align 8
  %12 = load i32, i32* @ST_CAPT_SUSPENDED, align 4
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %24 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %26 = load i32, i32* @open, align 4
  %27 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %28 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @fimc_pipeline_call(%struct.exynos_video_entity* %25, i32 %26, i32* %29, i32 0)
  %31 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %32 = call i32 @fimc_capture_hw_init(%struct.fimc_dev* %31)
  %33 = load i32, i32* @ST_CAPT_SUSPENDED, align 4
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %56, %18
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %45 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %44, i32 0, i32 1
  %46 = call i64 @list_empty(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %43
  %50 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %4, align 8
  %51 = call %struct.fimc_vid_buffer* @fimc_pending_queue_pop(%struct.fimc_vid_cap* %50)
  store %struct.fimc_vid_buffer* %51, %struct.fimc_vid_buffer** %6, align 8
  %52 = load %struct.fimc_vid_buffer*, %struct.fimc_vid_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.fimc_vid_buffer, %struct.fimc_vid_buffer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @buffer_queue(i32* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %37

59:                                               ; preds = %48, %37
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fimc_pipeline_call(%struct.exynos_video_entity*, i32, i32*, i32) #1

declare dso_local i32 @fimc_capture_hw_init(%struct.fimc_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.fimc_vid_buffer* @fimc_pending_queue_pop(%struct.fimc_vid_cap*) #1

declare dso_local i32 @buffer_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
