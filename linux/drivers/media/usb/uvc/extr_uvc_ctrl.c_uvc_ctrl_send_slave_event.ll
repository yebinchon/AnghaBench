; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_send_slave_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_send_slave_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.uvc_fh = type { i32 }
%struct.uvc_control = type { i32 }
%struct.uvc_control_mapping = type { i32 }

@V4L2_EVENT_CTRL_CH_FLAGS = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_video_chain*, %struct.uvc_fh*, %struct.uvc_control*, i32)* @uvc_ctrl_send_slave_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_ctrl_send_slave_event(%struct.uvc_video_chain* %0, %struct.uvc_fh* %1, %struct.uvc_control* %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_video_chain*, align 8
  %6 = alloca %struct.uvc_fh*, align 8
  %7 = alloca %struct.uvc_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uvc_control_mapping*, align 8
  %10 = alloca %struct.uvc_control*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %5, align 8
  store %struct.uvc_fh* %1, %struct.uvc_fh** %6, align 8
  store %struct.uvc_control* %2, %struct.uvc_control** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.uvc_control_mapping* null, %struct.uvc_control_mapping** %9, align 8
  store %struct.uvc_control* null, %struct.uvc_control** %10, align 8
  %13 = load i32, i32* @V4L2_EVENT_CTRL_CH_FLAGS, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %15 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @__uvc_find_control(i32 %16, i32 %17, %struct.uvc_control_mapping** %9, %struct.uvc_control** %10, i32 0)
  %19 = load %struct.uvc_control*, %struct.uvc_control** %10, align 8
  %20 = icmp eq %struct.uvc_control* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %40

22:                                               ; preds = %4
  %23 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %24 = load %struct.uvc_control*, %struct.uvc_control** %10, align 8
  %25 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %9, align 8
  %26 = call i64 @__uvc_ctrl_get(%struct.uvc_video_chain* %23, %struct.uvc_control* %24, %struct.uvc_control_mapping* %25, i32* %12)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @V4L2_EVENT_CTRL_CH_VALUE, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %34 = load %struct.uvc_fh*, %struct.uvc_fh** %6, align 8
  %35 = load %struct.uvc_control*, %struct.uvc_control** %10, align 8
  %36 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @uvc_ctrl_send_event(%struct.uvc_video_chain* %33, %struct.uvc_fh* %34, %struct.uvc_control* %35, %struct.uvc_control_mapping* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @__uvc_find_control(i32, i32, %struct.uvc_control_mapping**, %struct.uvc_control**, i32) #1

declare dso_local i64 @__uvc_ctrl_get(%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32*) #1

declare dso_local i32 @uvc_ctrl_send_event(%struct.uvc_video_chain*, %struct.uvc_fh*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
