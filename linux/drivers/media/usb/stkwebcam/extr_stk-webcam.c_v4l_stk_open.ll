; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_v4l_stk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.stk_camera = type { i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @v4l_stk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_stk_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.stk_camera* @video_drvdata(%struct.file* %6)
  store %struct.stk_camera* %7, %struct.stk_camera** %4, align 8
  %8 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %9 = icmp eq %struct.stk_camera* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %12 = call i32 @is_present(%struct.stk_camera* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %10
  %18 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %19 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %17
  %26 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %27 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %32 = call i32 @stk_camera_write_reg(%struct.stk_camera* %31, i32 0, i32 36)
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %35 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = call i32 @v4l2_fh_open(%struct.file* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %43 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usb_autopm_get_interface(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %48 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %22, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.stk_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @is_present(%struct.stk_camera*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
