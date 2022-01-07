; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.video_mux = type { i32 }
%struct.media_pad = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Can not start streaming on inactive mux\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find remote source pad\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Upstream entity is not a v4l2 subdev\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @video_mux_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_mux*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.media_pad*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev* %9)
  store %struct.video_mux* %10, %struct.video_mux** %6, align 8
  %11 = load %struct.video_mux*, %struct.video_mux** %6, align 8
  %12 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.video_mux*, %struct.video_mux** %6, align 8
  %28 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = call %struct.media_pad* @media_entity_remote_pad(i32* %31)
  store %struct.media_pad* %32, %struct.media_pad** %8, align 8
  %33 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %34 = icmp ne %struct.media_pad* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %22
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOLINK, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %65

42:                                               ; preds = %22
  %43 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @is_media_entity_v4l2_subdev(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %42
  %56 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %57 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %58)
  store %struct.v4l2_subdev* %59, %struct.v4l2_subdev** %7, align 8
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %61 = load i32, i32* @video, align 4
  %62 = load i32, i32* @s_stream, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %48, %35, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.video_mux* @v4l2_subdev_to_video_mux(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
