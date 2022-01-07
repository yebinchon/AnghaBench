; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_fops_camera_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_fops_camera_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pxa_camera_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pxac_fops_camera_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxac_fops_camera_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.pxa_camera_dev* @video_drvdata(%struct.file* %5)
  store %struct.pxa_camera_dev* %6, %struct.pxa_camera_dev** %3, align 8
  %7 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = call i32 @v4l2_fh_open(%struct.file* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %2, align 8
  %17 = call i32 @v4l2_fh_is_singular_file(%struct.file* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %29

20:                                               ; preds = %15
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %22 = call i32 @pxac_sensor_set_power(%struct.pxa_camera_dev* %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.file*, %struct.file** %2, align 8
  %27 = call i32 @v4l2_fh_release(%struct.file* %26)
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %19, %14
  %30 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.pxa_camera_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @pxac_sensor_set_power(%struct.pxa_camera_dev*, i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
