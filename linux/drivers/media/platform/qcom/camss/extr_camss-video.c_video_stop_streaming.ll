; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.camss_video = type { %struct.TYPE_2__*, %struct.video_device }
%struct.TYPE_2__ = type { i32 (%struct.camss_video*, i32)* }
%struct.video_device = type { %struct.media_entity }
%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @video_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.camss_video*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %9 = call %struct.camss_video* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.camss_video* %9, %struct.camss_video** %3, align 8
  %10 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %11 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %10, i32 0, i32 1
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.video_device*, %struct.video_device** %4, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  store %struct.media_entity* %13, %struct.media_entity** %5, align 8
  br label %14

14:                                               ; preds = %1, %38
  %15 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %16 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %15, i32 0, i32 0
  %17 = load %struct.media_pad*, %struct.media_pad** %16, align 8
  %18 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %17, i64 0
  store %struct.media_pad* %18, %struct.media_pad** %6, align 8
  %19 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %20 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %48

26:                                               ; preds = %14
  %27 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %28 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %27)
  store %struct.media_pad* %28, %struct.media_pad** %6, align 8
  %29 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %30 = icmp ne %struct.media_pad* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %33 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %32, i32 0, i32 1
  %34 = load %struct.media_entity*, %struct.media_entity** %33, align 8
  %35 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %26
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %40 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %39, i32 0, i32 1
  %41 = load %struct.media_entity*, %struct.media_entity** %40, align 8
  store %struct.media_entity* %41, %struct.media_entity** %5, align 8
  %42 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %43 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %42)
  store %struct.v4l2_subdev* %43, %struct.v4l2_subdev** %7, align 8
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %45 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %46 = load i32, i32* @s_stream, align 4
  %47 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %44, %struct.camss_video* %45, i32 %46, i32 0)
  br label %14

48:                                               ; preds = %37, %25
  %49 = load %struct.video_device*, %struct.video_device** %4, align 8
  %50 = getelementptr inbounds %struct.video_device, %struct.video_device* %49, i32 0, i32 0
  %51 = call i32 @media_pipeline_stop(%struct.media_entity* %50)
  %52 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %53 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.camss_video*, i32)*, i32 (%struct.camss_video*, i32)** %55, align 8
  %57 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %58 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %59 = call i32 %56(%struct.camss_video* %57, i32 %58)
  ret void
}

declare dso_local %struct.camss_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

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
