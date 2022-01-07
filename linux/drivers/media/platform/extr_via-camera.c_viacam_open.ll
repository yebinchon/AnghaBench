; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.via_camera = type { i32, i32 }

@CF_CONFIG_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @viacam_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.via_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.via_camera* @video_drvdata(%struct.file* %5)
  store %struct.via_camera* %6, %struct.via_camera** %3, align 8
  %7 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %8 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = call i32 @v4l2_fh_open(%struct.file* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %2, align 8
  %17 = call i64 @v4l2_fh_is_singular_file(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = call i32 (...) @viafb_request_dma()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = call i32 @v4l2_fh_release(%struct.file* %24)
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %28 = call i32 @via_sensor_power_up(%struct.via_camera* %27)
  %29 = load i32, i32* @CF_CONFIG_NEEDED, align 4
  %30 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %31 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %26, %15
  br label %34

34:                                               ; preds = %33, %23, %14
  %35 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %36 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.via_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @viafb_request_dma(...) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @via_sensor_power_up(%struct.via_camera*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
