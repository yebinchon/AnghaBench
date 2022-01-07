; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* }
%struct.file = type opaque
%struct.v4l2_modulator = type { i32, i32 }
%struct.file.0 = type { i32 }
%struct.video_device = type { i64 }

@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_FREQ_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_g_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_g_modulator(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file.0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.v4l2_modulator*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file.0* %1, %struct.file.0** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.file.0*, %struct.file.0** %6, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file.0* %12)
  store %struct.video_device* %13, %struct.video_device** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.v4l2_modulator*
  store %struct.v4l2_modulator* %15, %struct.v4l2_modulator** %10, align 8
  %16 = load %struct.video_device*, %struct.video_device** %9, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %23 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %10, align 8
  %24 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.file*, i8*, %struct.v4l2_modulator*)*, i32 (%struct.file*, i8*, %struct.v4l2_modulator*)** %27, align 8
  %29 = load %struct.file.0*, %struct.file.0** %6, align 8
  %30 = bitcast %struct.file.0* %29 to %struct.file*
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %10, align 8
  %33 = call i32 %28(%struct.file* %30, i8* %31, %struct.v4l2_modulator* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @V4L2_TUNER_CAP_FREQ_BANDS, align 4
  %38 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
