; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.isp_video_fh = type { %struct.isp_video* }
%struct.isp_video = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i64 }

@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@ISP_VIDEO_DMAQUEUE_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @isp_video_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_video_fh*, align 8
  %7 = alloca %struct.isp_video*, align 8
  %8 = alloca %struct.isp_pipeline*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.isp_video_fh* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.isp_video_fh* %12, %struct.isp_video_fh** %6, align 8
  %13 = load %struct.isp_video_fh*, %struct.isp_video_fh** %6, align 8
  %14 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %13, i32 0, i32 0
  %15 = load %struct.isp_video*, %struct.isp_video** %14, align 8
  store %struct.isp_video* %15, %struct.isp_video** %7, align 8
  %16 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %17 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %18)
  store %struct.isp_pipeline* %19, %struct.isp_pipeline** %8, align 8
  %20 = load %struct.isp_pipeline*, %struct.isp_pipeline** %8, align 8
  %21 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.isp_pipeline*, %struct.isp_pipeline** %8, align 8
  %27 = load i32, i32* @ISP_PIPELINE_STREAM_CONTINUOUS, align 4
  %28 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %33 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %37 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %38 = call i32 @omap3isp_video_return_buffers(%struct.isp_video* %36, i32 %37)
  %39 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %40 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %25
  %45 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %46 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %50 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %49, i32 0, i32 2
  %51 = call i64 @list_empty(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @ISP_VIDEO_DMAQUEUE_UNDERRUN, align 4
  %55 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %56 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %61 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %31, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.isp_video_fh* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap3isp_video_return_buffers(%struct.isp_video*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
