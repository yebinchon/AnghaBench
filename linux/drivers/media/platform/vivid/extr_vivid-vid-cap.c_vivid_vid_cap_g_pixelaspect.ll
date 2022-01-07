; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.vivid_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_cap_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %21 = call i32 @vivid_get_pixel_aspect(%struct.vivid_dev* %20)
  switch i32 %21, label %32 [
    i32 129, label %22
    i32 128, label %27
  ]

22:                                               ; preds = %19
  %23 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %23, i32 0, i32 0
  store i32 11, i32* %24, align 4
  %25 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %25, i32 0, i32 1
  store i32 10, i32* %26, align 4
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 0
  store i32 54, i32* %29, align 4
  %30 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %30, i32 0, i32 1
  store i32 59, i32* %31, align 4
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %27, %22
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_get_pixel_aspect(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
