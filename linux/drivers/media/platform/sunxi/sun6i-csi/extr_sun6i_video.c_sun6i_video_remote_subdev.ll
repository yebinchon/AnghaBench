; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_remote_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_remote_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.sun6i_video = type { i32 }
%struct.media_pad = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_subdev* (%struct.sun6i_video*, i32*)* @sun6i_video_remote_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_subdev* @sun6i_video_remote_subdev(%struct.sun6i_video* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.sun6i_video*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_pad*, align 8
  store %struct.sun6i_video* %0, %struct.sun6i_video** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %8 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %7, i32 0, i32 0
  %9 = call %struct.media_pad* @media_entity_remote_pad(i32* %8)
  store %struct.media_pad* %9, %struct.media_pad** %6, align 8
  %10 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %11 = icmp ne %struct.media_pad* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %14 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_media_entity_v4l2_subdev(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %32

19:                                               ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %30)
  store %struct.v4l2_subdev* %31, %struct.v4l2_subdev** %3, align 8
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  ret %struct.v4l2_subdev* %33
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
