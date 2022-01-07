; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Bad video type must be V4L2_BUF_TYPE_VIDEO_CAPTURE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"codec1 is only supported for old pwc webcam\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"codec23 is only supported for new pwc webcam\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@pwc_image_sizes = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, %struct.v4l2_format*)* @pwc_vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_vidioc_try_fmt(%struct.pwc_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %7 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %49 [
    i32 128, label %22
    i32 130, label %23
    i32 129, label %36
  ]

22:                                               ; preds = %16
  br label %55

23:                                               ; preds = %16
  %24 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DEVICE_USE_CODEC23(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 128, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %23
  br label %55

36:                                               ; preds = %16
  %37 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DEVICE_USE_CODEC1(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 128, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  br label %55

49:                                               ; preds = %16
  %50 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 128, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %48, %35, %22
  %56 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pwc_get_size(%struct.pwc_device* %56, i32 %61, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %69 = load i32**, i32*** @pwc_image_sizes, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32**, i32*** @pwc_image_sizes, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pwc_vidioc_fill_fmt(%struct.v4l2_format* %68, i32 %75, i32 %82, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %55, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @PWC_DEBUG_IOCTL(i8*) #1

declare dso_local i32 @DEVICE_USE_CODEC23(i32) #1

declare dso_local i32 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @pwc_get_size(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @pwc_vidioc_fill_fmt(%struct.v4l2_format*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
