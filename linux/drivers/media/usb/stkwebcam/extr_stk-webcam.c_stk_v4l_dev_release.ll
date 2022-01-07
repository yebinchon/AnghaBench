; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_v4l_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_v4l_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.stk_camera = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"We are leaking memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*)* @stk_v4l_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk_v4l_dev_release(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  %3 = alloca %struct.stk_camera*, align 8
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %4 = load %struct.video_device*, %struct.video_device** %2, align 8
  %5 = call %struct.stk_camera* @vdev_to_camera(%struct.video_device* %4)
  store %struct.stk_camera* %5, %struct.stk_camera** %3, align 8
  %6 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %7 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %12 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %19 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_put_intf(i32 %20)
  ret void
}

declare dso_local %struct.stk_camera* @vdev_to_camera(%struct.video_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_put_intf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
