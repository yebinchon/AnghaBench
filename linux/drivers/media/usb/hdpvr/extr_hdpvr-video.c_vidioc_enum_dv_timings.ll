; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enum_dv_timings = type { i64, i32, i32 }
%struct.hdpvr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hdpvr_fh = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@hdpvr_dv_timings = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)* @vidioc_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_enum_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca %struct.hdpvr_fh*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enum_dv_timings* %2, %struct.v4l2_enum_dv_timings** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %10)
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.hdpvr_fh*
  store %struct.hdpvr_fh* %13, %struct.hdpvr_fh** %9, align 8
  %14 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %9, align 8
  %15 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32*, i32** @hdpvr_dv_timings, align 8
  %33 = call i64 @ARRAY_SIZE(i32* %32)
  %34 = icmp uge i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load i32*, i32** @hdpvr_dv_timings, align 8
  %40 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %35, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
