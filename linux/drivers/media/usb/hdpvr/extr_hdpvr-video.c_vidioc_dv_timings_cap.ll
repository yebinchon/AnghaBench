; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_dv_timings_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_dv_timings_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings_cap = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdpvr_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hdpvr_fh = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@V4L2_DV_BT_STD_CEA861 = common dso_local global i32 0, align 4
@V4L2_DV_BT_CAP_INTERLACED = common dso_local global i32 0, align 4
@V4L2_DV_BT_CAP_PROGRESSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings_cap*)* @vidioc_dv_timings_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dv_timings_cap(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings_cap*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_fh*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings_cap* %2, %struct.v4l2_dv_timings_cap** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %10)
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %13, %struct.hdpvr_fh** %9, align 8
  %14 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %9, align 8
  %15 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %26 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 720, i32* %30, align 4
  %31 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 1920, i32* %33, align 4
  %34 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 480, i32* %36, align 4
  %37 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 1080, i32* %39, align 4
  %40 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32 27000000, i32* %42, align 4
  %43 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 74250000, i32* %45, align 4
  %46 = load i32, i32* @V4L2_DV_BT_STD_CEA861, align 4
  %47 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @V4L2_DV_BT_CAP_INTERLACED, align 4
  %51 = load i32, i32* @V4L2_DV_BT_CAP_PROGRESSIVE, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %24, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
