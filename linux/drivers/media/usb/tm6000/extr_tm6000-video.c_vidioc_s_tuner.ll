; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i64 }
%struct.tm6000_fh = type { %struct.tm6000_core* }
%struct.tm6000_core = type { i64, i32, i64 }

@UNSET = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"audio mode: %x\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %11, %struct.tm6000_fh** %8, align 8
  %12 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %13 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %12, i32 0, i32 0
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %13, align 8
  store %struct.tm6000_core* %14, %struct.tm6000_core** %9, align 8
  %15 = load i64, i64* @UNSET, align 8
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %17 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOTTY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 0, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %23
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %40 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %46 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %49 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dprintk(%struct.tm6000_core* %48, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %54 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %53, i32 0, i32 1
  %55 = load i32, i32* @tuner, align 4
  %56 = load i32, i32* @s_tuner, align 4
  %57 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %58 = call i32 @v4l2_device_call_all(i32* %54, i32 0, i32 %55, i32 %56, %struct.v4l2_tuner* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %47, %28, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*, i64) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
