; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.hdpvr_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDPVR_VIDEO_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CTRL_VIDEO_INPUT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %10)
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @HDPVR_VIDEO_INPUTS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATUS_IDLE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %29 = load i32, i32* @CTRL_VIDEO_INPUT_VALUE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %28, i32 %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %24, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
