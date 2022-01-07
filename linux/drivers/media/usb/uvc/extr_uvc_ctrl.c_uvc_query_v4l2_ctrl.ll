; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_query_v4l2_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.uvc_control = type { i32 }
%struct.uvc_control_mapping = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %9 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %10 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock_interruptible(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ERESTARTSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %18, i32 %21, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %22, %struct.uvc_control** %6, align 8
  %23 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %24 = icmp eq %struct.uvc_control* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %30 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %31 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %33 = call i32 @__uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %29, %struct.uvc_control* %30, %struct.uvc_control_mapping* %31, %struct.v4l2_queryctrl* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %36 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @__uvc_query_v4l2_ctrl(%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
