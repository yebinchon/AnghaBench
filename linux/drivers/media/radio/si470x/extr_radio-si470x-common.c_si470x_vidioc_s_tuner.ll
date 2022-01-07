; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.si470x_device = type { i32 (%struct.si470x_device*, i64)*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@POWERCFG_MONO = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @si470x_vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.si470x_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.si470x_device* @video_drvdata(%struct.file* %9)
  store %struct.si470x_device* %10, %struct.si470x_device** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %32 [
    i32 129, label %22
    i32 128, label %31
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @POWERCFG_MONO, align 4
  %24 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %25 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @POWERCFG, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %23
  store i32 %30, i32* %28, align 4
  br label %42

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %18, %31
  %33 = load i32, i32* @POWERCFG_MONO, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %36 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @POWERCFG, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %34
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %44 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %43, i32 0, i32 0
  %45 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %44, align 8
  %46 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %47 = load i64, i64* @POWERCFG, align 8
  %48 = call i32 %45(%struct.si470x_device* %46, i64 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
