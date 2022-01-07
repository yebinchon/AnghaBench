; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.tm6000_core = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.tm6000_fh = type { %struct.tm6000_core* }

@.str = private unnamed_addr constant [7 x i8] c"tm6000\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Trident TVMaster TM5600/6000/6010\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.tm6000_core*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.tm6000_fh*
  %10 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %9, i32 0, i32 0
  %11 = load %struct.tm6000_core*, %struct.tm6000_core** %10, align 8
  store %struct.tm6000_core* %11, %struct.tm6000_core** %7, align 8
  %12 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strscpy(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strscpy(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %21 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_make_path(i32 %22, i32 %25, i32 4)
  %27 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %28 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %35 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TUNER_ABSENT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %41 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %3
  %46 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %47 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %53 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %45
  ret i32 0
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
