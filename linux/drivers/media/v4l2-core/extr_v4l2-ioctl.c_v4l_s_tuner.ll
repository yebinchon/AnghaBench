; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* }
%struct.file = type opaque
%struct.v4l2_tuner = type { i32 }
%struct.file.0 = type { i32 }
%struct.video_device = type { i64 }

@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_tuner(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_tuner*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.file.0*, %struct.file.0** %7, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file.0* %13)
  store %struct.video_device* %14, %struct.video_device** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.v4l2_tuner*
  store %struct.v4l2_tuner* %16, %struct.v4l2_tuner** %11, align 8
  %17 = load %struct.video_device*, %struct.video_device** %10, align 8
  %18 = call i32 @v4l_enable_media_source(%struct.video_device* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load %struct.video_device*, %struct.video_device** %10, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %11, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.file*, i8*, %struct.v4l2_tuner*)*, i32 (%struct.file*, i8*, %struct.v4l2_tuner*)** %38, align 8
  %40 = load %struct.file.0*, %struct.file.0** %7, align 8
  %41 = bitcast %struct.file.0* %40 to %struct.file*
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %11, align 8
  %44 = call i32 %39(%struct.file* %41, i8* %42, %struct.v4l2_tuner* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i32 @v4l_enable_media_source(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
