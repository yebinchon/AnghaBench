; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* }
%struct.file = type opaque
%struct.v4l2_frequency = type opaque
%struct.file.0 = type { i32 }
%struct.video_device = type { i64 }
%struct.v4l2_frequency.1 = type { i32 }

@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@V4L2_TUNER_SDR = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_g_frequency(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file.0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.v4l2_frequency.1*, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file.0* %1, %struct.file.0** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.file.0*, %struct.file.0** %6, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file.0* %11)
  store %struct.video_device* %12, %struct.video_device** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.v4l2_frequency.1*
  store %struct.v4l2_frequency.1* %14, %struct.v4l2_frequency.1** %10, align 8
  %15 = load %struct.video_device*, %struct.video_device** %9, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFL_TYPE_SDR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @V4L2_TUNER_SDR, align 4
  %22 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %10, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency.1, %struct.v4l2_frequency.1* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load %struct.video_device*, %struct.video_device** %9, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_frequency.1, %struct.v4l2_frequency.1* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %20
  %39 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.file*, i8*, %struct.v4l2_frequency*)*, i32 (%struct.file*, i8*, %struct.v4l2_frequency*)** %40, align 8
  %42 = load %struct.file.0*, %struct.file.0** %6, align 8
  %43 = bitcast %struct.file.0* %42 to %struct.file*
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.v4l2_frequency.1*, %struct.v4l2_frequency.1** %10, align 8
  %46 = bitcast %struct.v4l2_frequency.1* %45 to %struct.v4l2_frequency*
  %47 = call i32 %41(%struct.file* %43, i8* %44, %struct.v4l2_frequency* %46)
  ret i32 %47
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
