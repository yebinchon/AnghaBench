; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.camss_video = type { %struct.TYPE_2__*, i32, %struct.video_device }
%struct.TYPE_2__ = type { i32 (%struct.camss_video*, i32)* }
%struct.video_device = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @video_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss_video*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca %struct.media_pad*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %13 = call %struct.camss_video* @vb2_get_drv_priv(%struct.vb2_queue* %12)
  store %struct.camss_video* %13, %struct.camss_video** %6, align 8
  %14 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %15 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %14, i32 0, i32 2
  store %struct.video_device* %15, %struct.video_device** %7, align 8
  %16 = load %struct.video_device*, %struct.video_device** %7, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 0
  %18 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %19 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %18, i32 0, i32 1
  %20 = call i32 @media_pipeline_start(%struct.media_entity* %17, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %27 = call i32 @video_check_format(%struct.camss_video* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %78

31:                                               ; preds = %25
  %32 = load %struct.video_device*, %struct.video_device** %7, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 0
  store %struct.media_entity* %33, %struct.media_entity** %8, align 8
  br label %34

34:                                               ; preds = %31, %76
  %35 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %36 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %35, i32 0, i32 0
  %37 = load %struct.media_pad*, %struct.media_pad** %36, align 8
  %38 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %37, i64 0
  store %struct.media_pad* %38, %struct.media_pad** %9, align 8
  %39 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %77

46:                                               ; preds = %34
  %47 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %48 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %47)
  store %struct.media_pad* %48, %struct.media_pad** %9, align 8
  %49 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %50 = icmp ne %struct.media_pad* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %53 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %52, i32 0, i32 1
  %54 = load %struct.media_entity*, %struct.media_entity** %53, align 8
  %55 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51, %46
  br label %77

58:                                               ; preds = %51
  %59 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %60 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %59, i32 0, i32 1
  %61 = load %struct.media_entity*, %struct.media_entity** %60, align 8
  store %struct.media_entity* %61, %struct.media_entity** %8, align 8
  %62 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %63 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %62)
  store %struct.v4l2_subdev* %63, %struct.v4l2_subdev** %10, align 8
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %65 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %66 = load i32, i32* @s_stream, align 4
  %67 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %64, %struct.camss_video* %65, i32 %66, i32 1)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ENOIOCTLCMD, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %78

76:                                               ; preds = %70, %58
  br label %34

77:                                               ; preds = %57, %45
  store i32 0, i32* %3, align 4
  br label %91

78:                                               ; preds = %75, %30
  %79 = load %struct.video_device*, %struct.video_device** %7, align 8
  %80 = getelementptr inbounds %struct.video_device, %struct.video_device* %79, i32 0, i32 0
  %81 = call i32 @media_pipeline_stop(%struct.media_entity* %80)
  %82 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %83 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.camss_video*, i32)*, i32 (%struct.camss_video*, i32)** %85, align 8
  %87 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %88 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %89 = call i32 %86(%struct.camss_video* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %78, %77, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.camss_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @video_check_format(%struct.camss_video*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.camss_video*, i32, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
