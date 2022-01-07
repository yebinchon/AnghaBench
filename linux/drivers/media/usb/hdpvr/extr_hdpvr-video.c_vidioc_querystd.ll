; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hdpvr_video_info = type { i32, i32, i64 }
%struct.hdpvr_fh = type { i64 }

@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@HDPVR_COMPONENT = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_video_info, align 8
  %10 = alloca %struct.hdpvr_fh*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %12)
  store %struct.hdpvr_device* %13, %struct.hdpvr_device** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %15, %struct.hdpvr_fh** %10, align 8
  %16 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HDPVR_COMPONENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %10, align 8
  %26 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ 0, %29 ], [ %32, %30 ]
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %3
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %37 = call i32 @get_video_info(%struct.hdpvr_device* %36, %struct.hdpvr_video_info* %9)
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %9, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 720
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 480
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 576
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.hdpvr_video_info, %struct.hdpvr_video_info* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 480
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @V4L2_STD_525_60, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @V4L2_STD_625_50, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %49, %41, %35
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @get_video_info(%struct.hdpvr_device*, %struct.hdpvr_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
