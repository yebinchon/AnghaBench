; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_link_validate_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_link_validate_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_pad = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_pad*, %struct.v4l2_subdev_format*)* @sun6i_video_link_validate_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_video_link_validate_get_format(%struct.media_pad* %0, %struct.v4l2_subdev_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_pad*, align 8
  %5 = alloca %struct.v4l2_subdev_format*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  store %struct.media_pad* %0, %struct.media_pad** %4, align 8
  store %struct.v4l2_subdev_format* %1, %struct.v4l2_subdev_format** %5, align 8
  %7 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %8 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_media_entity_v4l2_subdev(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %14 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %15)
  store %struct.v4l2_subdev* %16, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %27 = load i32, i32* @get_fmt, align 4
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %5, align 8
  %29 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %25, %struct.media_pad* %26, i32 %27, i32* null, %struct.v4l2_subdev_format* %28)
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
