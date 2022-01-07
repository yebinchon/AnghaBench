; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32, i32 }

@HDPVR_VIDEO_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@iname = common dso_local global i32* null, align 8
@HDPVR_RCA_FRONT = common dso_local global i32 0, align 4
@HDPVR_RCA_BACK = common dso_local global i32 0, align 4
@HDPVR_SPDIF = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @HDPVR_VIDEO_INPUTS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %20 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @iname, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strscpy(i32 %24, i32 %29, i32 4)
  %31 = load i32, i32* @HDPVR_RCA_FRONT, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* @HDPVR_RCA_BACK, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @HDPVR_SPDIF, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %18
  %44 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  br label %47

45:                                               ; preds = %18
  %46 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @V4L2_STD_ALL, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
