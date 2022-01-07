; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* }
%struct.file = type opaque
%struct.v4l2_frequency = type opaque
%struct.file.0 = type { i32 }
%struct.video_device = type { i64 }
%struct.v4l2_frequency.1 = type { i64 }

@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@V4L2_TUNER_SDR = common dso_local global i64 0, align 8
@V4L2_TUNER_RF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_frequency(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_frequency.1*, align 8
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
  %17 = bitcast i8* %16 to %struct.v4l2_frequency.1*
  store %struct.v4l2_frequency.1* %17, %struct.v4l2_frequency.1** %11, align 8
  %18 = load %struct.video_device*, %struct.video_device** %10, align 8
  %19 = call i32 @v4l_enable_media_source(%struct.video_device* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %4
  %25 = load %struct.video_device*, %struct.video_device** %10, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFL_TYPE_SDR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %11, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency.1, %struct.v4l2_frequency.1* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_TUNER_SDR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %11, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency.1, %struct.v4l2_frequency.1* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_TUNER_RF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %78

45:                                               ; preds = %36, %30
  br label %68

46:                                               ; preds = %24
  %47 = load %struct.video_device*, %struct.video_device** %10, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %11, align 8
  %61 = getelementptr inbounds %struct.v4l2_frequency.1, %struct.v4l2_frequency.1* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %78

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.file*, i8*, %struct.v4l2_frequency*)*, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)** %70, align 8
  %72 = load %struct.file.0*, %struct.file.0** %7, align 8
  %73 = bitcast %struct.file.0* %72 to %struct.file*
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %11, align 8
  %76 = bitcast %struct.v4l2_frequency.1* %75 to %struct.v4l2_frequency*
  %77 = call i32 %71(%struct.file* %73, i8* %74, %struct.v4l2_frequency* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %68, %64, %42, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i32 @v4l_enable_media_source(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
