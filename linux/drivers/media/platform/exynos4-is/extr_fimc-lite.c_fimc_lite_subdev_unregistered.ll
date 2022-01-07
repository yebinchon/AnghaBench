; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_unregistered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_unregistered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.fimc_lite = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @fimc_lite_subdev_unregistered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_lite_subdev_unregistered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.fimc_lite*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev* %4)
  store %struct.fimc_lite* %5, %struct.fimc_lite** %3, align 8
  %6 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %7 = icmp eq %struct.fimc_lite* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i64 @video_is_registered(%struct.TYPE_5__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @video_unregister_device(%struct.TYPE_5__* %21)
  %23 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %24 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @media_entity_cleanup(i32* %26)
  %28 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %29 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %18, %9
  %32 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %33 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %8
  ret void
}

declare dso_local %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_is_registered(%struct.TYPE_5__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
