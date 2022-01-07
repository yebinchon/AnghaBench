; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_sensor_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_sensor_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.pxa_camera_dev = type { i32, i32*, i32, i32*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"PXA Camera driver detached from camera %s\0A\00", align 1
@CICR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @pxa_camera_sensor_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_camera_sensor_unbind(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.pxa_camera_dev*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pxa_camera_dev* @v4l2_dev_to_pcdev(i32 %10)
  store %struct.pxa_camera_dev* %11, %struct.pxa_camera_dev** %7, align 8
  %12 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %13 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %16 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %22 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CICR0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_writel(i32 1023, i64 %25)
  %27 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %28 = call i32 @pxa_dma_stop_channels(%struct.pxa_camera_dev* %27)
  %29 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %30 = call i32 @pxa_camera_destroy_formats(%struct.pxa_camera_dev* %29)
  %31 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %32 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @v4l2_clk_unregister(i32* %38)
  %40 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %41 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %3
  %43 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %44 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %43, i32 0, i32 2
  %45 = call i32 @video_unregister_device(i32* %44)
  %46 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %47 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %49 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret void
}

declare dso_local %struct.pxa_camera_dev* @v4l2_dev_to_pcdev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @pxa_dma_stop_channels(%struct.pxa_camera_dev*) #1

declare dso_local i32 @pxa_camera_destroy_formats(%struct.pxa_camera_dev*) #1

declare dso_local i32 @v4l2_clk_unregister(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
