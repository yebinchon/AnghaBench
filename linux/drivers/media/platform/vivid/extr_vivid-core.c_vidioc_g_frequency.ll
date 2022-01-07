; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.vivid_dev = type { i32, i32 }
%struct.video_device = type { i64, i64 }

@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@VFL_DIR_RX = common dso_local global i64 0, align 8
@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %9, align 8
  %14 = load %struct.video_device*, %struct.video_device** %9, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load %struct.video_device*, %struct.video_device** %9, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFL_DIR_RX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 1
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32* [ %28, %26 ], [ %31, %29 ]
  %34 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %35 = call i32 @vivid_radio_g_frequency(%struct.file* %20, i32* %33, %struct.v4l2_frequency* %34)
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.video_device*, %struct.video_device** %9, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VFL_TYPE_SDR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %46 = call i32 @vivid_sdr_g_frequency(%struct.file* %43, i8* %44, %struct.v4l2_frequency* %45)
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %51 = call i32 @vivid_video_g_frequency(%struct.file* %48, i8* %49, %struct.v4l2_frequency* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42, %32
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vivid_radio_g_frequency(%struct.file*, i32*, %struct.v4l2_frequency*) #1

declare dso_local i32 @vivid_sdr_g_frequency(%struct.file*, i8*, %struct.v4l2_frequency*) #1

declare dso_local i32 @vivid_video_g_frequency(%struct.file*, i8*, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
