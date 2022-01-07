; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.video_device = type { i32 }
%struct.camera_data = type { i32, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cpia2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.camera_data*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.video_device* @video_devdata(%struct.file* %5)
  store %struct.video_device* %6, %struct.video_device** %3, align 8
  %7 = load %struct.video_device*, %struct.video_device** %3, align 8
  %8 = call %struct.camera_data* @video_get_drvdata(%struct.video_device* %7)
  store %struct.camera_data* %8, %struct.camera_data** %4, align 8
  %9 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %13 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %12, i32 0, i32 3
  %14 = call i64 @video_is_registered(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.file*, %struct.file** %2, align 8
  %18 = call i64 @v4l2_fh_is_singular_file(%struct.file* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %22 = call i32 @cpia2_usb_stream_stop(%struct.camera_data* %21)
  %23 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %24 = call i32 @cpia2_save_camera_state(%struct.camera_data* %23)
  %25 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %26 = call i32 @cpia2_set_low_power(%struct.camera_data* %25)
  %27 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %28 = call i32 @cpia2_free_buffers(%struct.camera_data* %27)
  br label %29

29:                                               ; preds = %20, %16, %1
  %30 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %44 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.file*, %struct.file** %2, align 8
  %47 = call i32 @v4l2_fh_release(%struct.file* %46)
  ret i32 %47
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.camera_data* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @cpia2_usb_stream_stop(%struct.camera_data*) #1

declare dso_local i32 @cpia2_save_camera_state(%struct.camera_data*) #1

declare dso_local i32 @cpia2_set_low_power(%struct.camera_data*) #1

declare dso_local i32 @cpia2_free_buffers(%struct.camera_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
