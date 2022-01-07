; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i64, i64, i32 (%struct.video_device*)*, %struct.TYPE_2__, i32, i32*, %struct.v4l2_device* }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_device = type { i32*, i64 }
%struct.device = type { i32 }

@videodev_lock = common dso_local global i32 0, align 4
@video_devices = common dso_local global %struct.video_device** null, align 8
@MEDIA_ENT_F_UNKNOWN = common dso_local global i64 0, align 8
@VFL_DIR_M2M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @v4l2_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.video_device* @to_video_device(%struct.device* %5)
  store %struct.video_device* %6, %struct.video_device** %3, align 8
  %7 = load %struct.video_device*, %struct.video_device** %3, align 8
  %8 = getelementptr inbounds %struct.video_device, %struct.video_device* %7, i32 0, i32 6
  %9 = load %struct.v4l2_device*, %struct.v4l2_device** %8, align 8
  store %struct.v4l2_device* %9, %struct.v4l2_device** %4, align 8
  %10 = call i32 @mutex_lock(i32* @videodev_lock)
  %11 = load %struct.video_device**, %struct.video_device*** @video_devices, align 8
  %12 = load %struct.video_device*, %struct.video_device** %3, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.video_device*, %struct.video_device** %11, i64 %14
  %16 = load %struct.video_device*, %struct.video_device** %15, align 8
  %17 = load %struct.video_device*, %struct.video_device** %3, align 8
  %18 = icmp ne %struct.video_device* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @mutex_unlock(i32* @videodev_lock)
  br label %55

24:                                               ; preds = %1
  %25 = load %struct.video_device**, %struct.video_device*** @video_devices, align 8
  %26 = load %struct.video_device*, %struct.video_device** %3, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.video_device*, %struct.video_device** %25, i64 %28
  store %struct.video_device* null, %struct.video_device** %29, align 8
  %30 = load %struct.video_device*, %struct.video_device** %3, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @cdev_del(i32* %32)
  %34 = load %struct.video_device*, %struct.video_device** %3, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = load %struct.video_device*, %struct.video_device** %3, align 8
  %37 = call i32 @devnode_clear(%struct.video_device* %36)
  %38 = call i32 @mutex_unlock(i32* @videodev_lock)
  %39 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store %struct.v4l2_device* null, %struct.v4l2_device** %4, align 8
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.video_device*, %struct.video_device** %3, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 2
  %47 = load i32 (%struct.video_device*)*, i32 (%struct.video_device*)** %46, align 8
  %48 = load %struct.video_device*, %struct.video_device** %3, align 8
  %49 = call i32 %47(%struct.video_device* %48)
  %50 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %51 = icmp ne %struct.v4l2_device* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %54 = call i32 @v4l2_device_put(%struct.v4l2_device* %53)
  br label %55

55:                                               ; preds = %22, %52, %44
  ret void
}

declare dso_local %struct.video_device* @to_video_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @devnode_clear(%struct.video_device*) #1

declare dso_local i32 @v4l2_device_put(%struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
