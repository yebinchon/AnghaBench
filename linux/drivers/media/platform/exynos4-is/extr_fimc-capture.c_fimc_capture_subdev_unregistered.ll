; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_subdev_unregistered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_subdev_unregistered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.video_device }
%struct.video_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @fimc_capture_subdev_unregistered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_capture_subdev_unregistered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.video_device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev* %5)
  store %struct.fimc_dev* %6, %struct.fimc_dev** %3, align 8
  %7 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %8 = icmp eq %struct.fimc_dev* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %15 = call i32 @fimc_unregister_m2m_device(%struct.fimc_dev* %14)
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.video_device* %19, %struct.video_device** %4, align 8
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = call i64 @video_is_registered(%struct.video_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %10
  %24 = load %struct.video_device*, %struct.video_device** %4, align 8
  %25 = call i32 @video_unregister_device(%struct.video_device* %24)
  %26 = load %struct.video_device*, %struct.video_device** %4, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 0
  %28 = call i32 @media_entity_cleanup(i32* %27)
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @fimc_ctrls_delete(i32* %32)
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %23, %10
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %38, %9
  ret void
}

declare dso_local %struct.fimc_dev* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fimc_unregister_m2m_device(%struct.fimc_dev*) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @fimc_ctrls_delete(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
