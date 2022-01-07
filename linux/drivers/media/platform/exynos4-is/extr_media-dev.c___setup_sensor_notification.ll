; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___setup_sensor_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___setup_sensor_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.fimc_source_info = type { i32 }
%struct.fimc_sensor_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_md*, %struct.v4l2_subdev*, %struct.v4l2_subdev*)* @__setup_sensor_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_sensor_notification(%struct.fimc_md* %0, %struct.v4l2_subdev* %1, %struct.v4l2_subdev* %2) #0 {
  %4 = alloca %struct.fimc_md*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.fimc_source_info*, align 8
  %8 = alloca %struct.fimc_sensor_info*, align 8
  %9 = alloca i64, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev* %10)
  store %struct.fimc_source_info* %11, %struct.fimc_source_info** %7, align 8
  %12 = load %struct.fimc_source_info*, %struct.fimc_source_info** %7, align 8
  %13 = icmp ne %struct.fimc_source_info* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %16 = icmp eq %struct.fimc_md* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.fimc_source_info*, %struct.fimc_source_info** %7, align 8
  %23 = call %struct.fimc_sensor_info* @source_to_sensor_info(%struct.fimc_source_info* %22)
  store %struct.fimc_sensor_info* %23, %struct.fimc_sensor_info** %8, align 8
  %24 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %25 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = call i32 @v4l2_get_subdevdata(%struct.v4l2_subdev* %28)
  %30 = load %struct.fimc_sensor_info*, %struct.fimc_sensor_info** %8, align 8
  %31 = getelementptr inbounds %struct.fimc_sensor_info, %struct.fimc_sensor_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %33 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.fimc_sensor_info* @source_to_sensor_info(%struct.fimc_source_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
