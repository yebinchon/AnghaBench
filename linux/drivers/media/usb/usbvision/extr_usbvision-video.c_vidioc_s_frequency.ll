; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32, i64 }
%struct.usb_usbvision = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca %struct.v4l2_frequency, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %10)
  store %struct.usb_usbvision* %11, %struct.usb_usbvision** %8, align 8
  %12 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %13 = bitcast %struct.v4l2_frequency* %9 to i8*
  %14 = bitcast %struct.v4l2_frequency* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
  %15 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %24 = load i32, i32* @tuner, align 4
  %25 = load i32, i32* @s_frequency, align 4
  %26 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %27 = call i32 @call_all(%struct.usb_usbvision* %23, i32 %24, i32 %25, %struct.v4l2_frequency* %26)
  %28 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %29 = load i32, i32* @tuner, align 4
  %30 = load i32, i32* @g_frequency, align 4
  %31 = call i32 @call_all(%struct.usb_usbvision* %28, i32 %29, i32 %30, %struct.v4l2_frequency* %9)
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %41 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %47

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @call_all(%struct.usb_usbvision*, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
