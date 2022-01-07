; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.video_device = type { i64 }

@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %8, align 8
  %11 = load %struct.video_device*, %struct.video_device** %8, align 8
  %12 = getelementptr inbounds %struct.video_device, %struct.video_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %20 = call i32 @vivid_radio_rx_s_tuner(%struct.file* %17, i8* %18, %struct.v4l2_tuner* %19)
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.video_device*, %struct.video_device** %8, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VFL_TYPE_SDR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %31 = call i32 @vivid_sdr_s_tuner(%struct.file* %28, i8* %29, %struct.v4l2_tuner* %30)
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = call i32 @vivid_video_s_tuner(%struct.file* %33, i8* %34, %struct.v4l2_tuner* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %27, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vivid_radio_rx_s_tuner(%struct.file*, i8*, %struct.v4l2_tuner*) #1

declare dso_local i32 @vivid_sdr_s_tuner(%struct.file*, i8*, %struct.v4l2_tuner*) #1

declare dso_local i32 @vivid_video_s_tuner(%struct.file*, i8*, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
