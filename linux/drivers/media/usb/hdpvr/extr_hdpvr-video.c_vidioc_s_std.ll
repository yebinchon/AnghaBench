; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.hdpvr_device = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hdpvr_fh = type { i32 }

@HDPVR_COMPONENT = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@CTRL_VIDEO_STD_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_fh*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %11)
  store %struct.hdpvr_device* %12, %struct.hdpvr_device** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %14, %struct.hdpvr_fh** %9, align 8
  store i32 1, i32* %10, align 4
  %15 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %9, align 8
  %16 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HDPVR_COMPONENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %19, %3
  %30 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %31 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STATUS_IDLE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @V4L2_STD_525_60, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %47 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 2
  store i32 720, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 576, i32 480
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %55 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %57 = load i32, i32* @CTRL_VIDEO_STD_TYPE, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %44, %35, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
