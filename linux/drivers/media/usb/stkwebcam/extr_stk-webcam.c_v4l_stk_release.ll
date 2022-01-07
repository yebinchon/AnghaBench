; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.stk_camera = type { i32, i32, %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @v4l_stk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_stk_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.stk_camera* @video_drvdata(%struct.file* %4)
  store %struct.stk_camera* %5, %struct.stk_camera** %3, align 8
  %6 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %7 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %10 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %9, i32 0, i32 2
  %11 = load %struct.file*, %struct.file** %10, align 8
  %12 = load %struct.file*, %struct.file** %2, align 8
  %13 = icmp eq %struct.file* %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %16 = call i32 @stk_stop_stream(%struct.stk_camera* %15)
  %17 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %18 = call i32 @stk_free_buffers(%struct.stk_camera* %17)
  %19 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %20 = call i32 @stk_camera_write_reg(%struct.stk_camera* %19, i32 0, i32 73)
  %21 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %22 = call i32 @unset_initialised(%struct.stk_camera* %21)
  %23 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %24 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %23, i32 0, i32 2
  store %struct.file* null, %struct.file** %24, align 8
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %27 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_autopm_put_interface(i32 %28)
  %30 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %31 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = call i32 @v4l2_fh_release(%struct.file* %33)
  ret i32 %34
}

declare dso_local %struct.stk_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stk_stop_stream(%struct.stk_camera*) #1

declare dso_local i32 @stk_free_buffers(%struct.stk_camera*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @unset_initialised(%struct.stk_camera*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
