; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.isp_video_fh = type { %struct.isp_video* }
%struct.isp_video = type { i64, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.isp_video*, %struct.isp_buffer*)* }
%struct.isp_buffer = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.isp_pipeline = type { i32, i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@ISP_PIPELINE_QUEUE_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_QUEUE_INPUT = common dso_local global i32 0, align 4
@ISP_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_SINGLESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @isp_video_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_video_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.isp_video_fh*, align 8
  %5 = alloca %struct.isp_buffer*, align 8
  %6 = alloca %struct.isp_video*, align 8
  %7 = alloca %struct.isp_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %3, align 8
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.isp_video_fh* @vb2_get_drv_priv(i32 %16)
  store %struct.isp_video_fh* %17, %struct.isp_video_fh** %4, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %19 = call %struct.isp_buffer* @to_isp_buffer(%struct.vb2_v4l2_buffer* %18)
  store %struct.isp_buffer* %19, %struct.isp_buffer** %5, align 8
  %20 = load %struct.isp_video_fh*, %struct.isp_video_fh** %4, align 8
  %21 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %20, i32 0, i32 0
  %22 = load %struct.isp_video*, %struct.isp_video** %21, align 8
  store %struct.isp_video* %22, %struct.isp_video** %6, align 8
  %23 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %24 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %25)
  store %struct.isp_pipeline* %26, %struct.isp_pipeline** %7, align 8
  %27 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %28 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %27, i32 0, i32 3
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %32 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.isp_buffer*, %struct.isp_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %41 = call i32 @vb2_buffer_done(i32* %39, i32 %40)
  %42 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %43 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %42, i32 0, i32 3
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %116

46:                                               ; preds = %1
  %47 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %48 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %47, i32 0, i32 4
  %49 = call i32 @list_empty(i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.isp_buffer*, %struct.isp_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %50, i32 0, i32 0
  %52 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %53 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %52, i32 0, i32 4
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %56 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %55, i32 0, i32 3
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %116

61:                                               ; preds = %46
  %62 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %63 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ISP_PIPELINE_QUEUE_OUTPUT, align 4
  store i32 %68, i32* %8, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @ISP_PIPELINE_QUEUE_INPUT, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %73 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %72, i32 0, i32 1
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %78 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %82 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32 (%struct.isp_video*, %struct.isp_buffer*)*, i32 (%struct.isp_video*, %struct.isp_buffer*)** %84, align 8
  %86 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %87 = load %struct.isp_buffer*, %struct.isp_buffer** %5, align 8
  %88 = call i32 %85(%struct.isp_video* %86, %struct.isp_buffer* %87)
  %89 = load i32, i32* @ISP_VIDEO_DMAQUEUE_QUEUED, align 4
  %90 = load %struct.isp_video*, %struct.isp_video** %6, align 8
  %91 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %95 = call i32 @isp_pipeline_ready(%struct.isp_pipeline* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %71
  %99 = load i32, i32* @ISP_PIPELINE_STREAM, align 4
  %100 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %101 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %71
  %105 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %106 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %105, i32 0, i32 1
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.isp_pipeline*, %struct.isp_pipeline** %7, align 8
  %113 = load i32, i32* @ISP_PIPELINE_STREAM_SINGLESHOT, align 4
  %114 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %104
  br label %116

116:                                              ; preds = %36, %115, %46
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.isp_video_fh* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.isp_buffer* @to_isp_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @isp_pipeline_ready(%struct.isp_pipeline*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
