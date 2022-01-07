; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fmi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@RSF16_MINFREQ = common dso_local global i32 0, align 4
@RSF16_MAXFREQ = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.fmi*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.fmi* @video_drvdata(%struct.file* %9)
  store %struct.fmi* %10, %struct.fmi** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strscpy(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @RSF16_MINFREQ, align 4
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @RSF16_MAXFREQ, align 4
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %33 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %38 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %43 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fmi*, %struct.fmi** %8, align 8
  %46 = call i32 @fmi_getsigstr(%struct.fmi* %45)
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %18, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.fmi* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @fmi_getsigstr(%struct.fmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
