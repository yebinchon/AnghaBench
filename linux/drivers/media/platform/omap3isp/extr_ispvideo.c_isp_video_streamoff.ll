; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.isp_video_fh = type { i32 }
%struct.isp_video = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@ISP_PIPELINE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_QUEUE_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_QUEUE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @isp_video_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isp_video_fh*, align 8
  %9 = alloca %struct.isp_video*, align 8
  %10 = alloca %struct.isp_pipeline*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.isp_video_fh* @to_isp_video_fh(i8* %14)
  store %struct.isp_video_fh* %15, %struct.isp_video_fh** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.isp_video* @video_drvdata(%struct.file* %16)
  store %struct.isp_video* %17, %struct.isp_video** %9, align 8
  %18 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %19 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %20)
  store %struct.isp_pipeline* %21, %struct.isp_pipeline** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %24 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %106

30:                                               ; preds = %3
  %31 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %32 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %35 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %34, i32 0, i32 5
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %38 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %37, i32 0, i32 0
  %39 = call i32 @vb2_is_streaming(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %41 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %40, i32 0, i32 5
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  br label %102

46:                                               ; preds = %30
  %47 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %48 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @ISP_PIPELINE_STREAM_OUTPUT, align 4
  %55 = load i32, i32* @ISP_PIPELINE_QUEUE_OUTPUT, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load i32, i32* @ISP_PIPELINE_STREAM_INPUT, align 4
  %59 = load i32, i32* @ISP_PIPELINE_QUEUE_INPUT, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %63 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %62, i32 0, i32 2
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %69 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %73 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %72, i32 0, i32 2
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %77 = load i32, i32* @ISP_PIPELINE_STREAM_STOPPED, align 4
  %78 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %76, i32 %77)
  %79 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %80 = call i32 @omap3isp_video_cancel_stream(%struct.isp_video* %79)
  %81 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %82 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %81, i32 0, i32 5
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %85 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @vb2_streamoff(i32* %85, i32 %86)
  %88 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %89 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %88, i32 0, i32 5
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %92 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %94 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %96 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @media_pipeline_stop(i32* %97)
  %99 = load %struct.isp_pipeline*, %struct.isp_pipeline** %10, align 8
  %100 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %99, i32 0, i32 1
  %101 = call i32 @media_entity_enum_cleanup(i32* %100)
  br label %102

102:                                              ; preds = %61, %45
  %103 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %104 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %27
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.isp_video_fh* @to_isp_video_fh(i8*) #1

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i32) #1

declare dso_local i32 @omap3isp_video_cancel_stream(%struct.isp_video*) #1

declare dso_local i32 @vb2_streamoff(i32*, i32) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
