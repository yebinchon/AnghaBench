; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.uvc_control = type { i32 }
%struct.uvc_control_mapping = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_ctrl_get(%struct.uvc_video_chain* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %8 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %9 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain* %8, i32 %11, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %12, %struct.uvc_control** %6, align 8
  %13 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %14 = icmp eq %struct.uvc_control* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %20 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %21 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %22 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %22, i32 0, i32 0
  %24 = call i32 @__uvc_ctrl_get(%struct.uvc_video_chain* %19, %struct.uvc_control* %20, %struct.uvc_control_mapping* %21, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.uvc_control* @uvc_find_control(%struct.uvc_video_chain*, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @__uvc_ctrl_get(%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
