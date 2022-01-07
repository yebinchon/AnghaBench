; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_vdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i8*, i64, i32, i32 }
%struct.video_device = type { i32, i32*, i32, i32* }

@video_device_release_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@VIDIOC_G_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_S_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@VIDIOC_S_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx231xx*, %struct.video_device*, %struct.video_device*, i8*)* @cx231xx_vdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx231xx_vdev_init(%struct.cx231xx* %0, %struct.video_device* %1, %struct.video_device* %2, i8* %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i8*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store %struct.video_device* %2, %struct.video_device** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.video_device*, %struct.video_device** %6, align 8
  %10 = load %struct.video_device*, %struct.video_device** %7, align 8
  %11 = bitcast %struct.video_device* %9 to i8*
  %12 = bitcast %struct.video_device* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 3
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* @video_device_release_empty, align 4
  %18 = load %struct.video_device*, %struct.video_device** %6, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 2
  %22 = load %struct.video_device*, %struct.video_device** %6, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.video_device*, %struct.video_device** %6, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load %struct.video_device*, %struct.video_device** %6, align 8
  %33 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %34 = call i32 @video_set_drvdata(%struct.video_device* %32, %struct.cx231xx* %33)
  %35 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TUNER_ABSENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %4
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = load i32, i32* @VIDIOC_G_FREQUENCY, align 4
  %43 = call i32 @v4l2_disable_ioctl(%struct.video_device* %41, i32 %42)
  %44 = load %struct.video_device*, %struct.video_device** %6, align 8
  %45 = load i32, i32* @VIDIOC_S_FREQUENCY, align 4
  %46 = call i32 @v4l2_disable_ioctl(%struct.video_device* %44, i32 %45)
  %47 = load %struct.video_device*, %struct.video_device** %6, align 8
  %48 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %49 = call i32 @v4l2_disable_ioctl(%struct.video_device* %47, i32 %48)
  %50 = load %struct.video_device*, %struct.video_device** %6, align 8
  %51 = load i32, i32* @VIDIOC_S_TUNER, align 4
  %52 = call i32 @v4l2_disable_ioctl(%struct.video_device* %50, i32 %51)
  br label %53

53:                                               ; preds = %40, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.cx231xx*) #2

declare dso_local i32 @v4l2_disable_ioctl(%struct.video_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
