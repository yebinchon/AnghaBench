; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* }
%struct.file = type opaque
%struct.v4l2_hw_freq_seek = type opaque
%struct.file.0 = type { i32 }
%struct.video_device = type { i64 }
%struct.v4l2_hw_freq_seek.1 = type { i32 }

@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_hw_freq_seek(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_hw_freq_seek.1*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.file.0*, %struct.file.0** %7, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file.0* %14)
  store %struct.video_device* %15, %struct.video_device** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.v4l2_hw_freq_seek.1*
  store %struct.v4l2_hw_freq_seek.1* %17, %struct.v4l2_hw_freq_seek.1** %11, align 8
  %18 = load %struct.video_device*, %struct.video_device** %10, align 8
  %19 = call i32 @v4l_enable_media_source(%struct.video_device* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load %struct.video_device*, %struct.video_device** %10, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFL_TYPE_SDR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %24
  %34 = load %struct.video_device*, %struct.video_device** %10, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %12, align 4
  %45 = load %struct.v4l2_hw_freq_seek.1*, %struct.v4l2_hw_freq_seek.1** %11, align 8
  %46 = getelementptr inbounds %struct.v4l2_hw_freq_seek.1, %struct.v4l2_hw_freq_seek.1* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %43
  %54 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)*, i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)** %55, align 8
  %57 = load %struct.file.0*, %struct.file.0** %7, align 8
  %58 = bitcast %struct.file.0* %57 to %struct.file*
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.v4l2_hw_freq_seek.1*, %struct.v4l2_hw_freq_seek.1** %11, align 8
  %61 = bitcast %struct.v4l2_hw_freq_seek.1* %60 to %struct.v4l2_hw_freq_seek*
  %62 = call i32 %56(%struct.file* %58, i8* %59, %struct.v4l2_hw_freq_seek* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %50, %30, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i32 @v4l_enable_media_source(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
