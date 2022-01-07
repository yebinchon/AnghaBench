; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_radio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_radio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { %struct.tm6000_core* }
%struct.tm6000_core = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @radio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.tm6000_fh*, %struct.tm6000_fh** %11, align 8
  store %struct.tm6000_fh* %12, %struct.tm6000_fh** %8, align 8
  %13 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %14 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %13, i32 0, i32 0
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %14, align 8
  store %struct.tm6000_core* %15, %struct.tm6000_core** %9, align 8
  %16 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 0, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = call i32 @memset(%struct.v4l2_tuner* %24, i32 0, i32 32)
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strscpy(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %30 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %34 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %45 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %44, i32 0, i32 0
  %46 = load i32, i32* @tuner, align 4
  %47 = load i32, i32* @g_tuner, align 4
  %48 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %49 = call i32 @v4l2_device_call_all(i32* %45, i32 0, i32 %46, i32 %47, %struct.v4l2_tuner* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %23, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
