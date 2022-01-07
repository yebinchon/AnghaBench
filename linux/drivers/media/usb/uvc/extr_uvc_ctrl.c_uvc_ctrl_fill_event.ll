; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }
%struct.v4l2_event = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_control = type { i32 }
%struct.uvc_control_mapping = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32 }

@V4L2_EVENT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_video_chain*, %struct.v4l2_event*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32, i32)* @uvc_ctrl_fill_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_ctrl_fill_event(%struct.uvc_video_chain* %0, %struct.v4l2_event* %1, %struct.uvc_control* %2, %struct.uvc_control_mapping* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.uvc_video_chain*, align 8
  %8 = alloca %struct.v4l2_event*, align 8
  %9 = alloca %struct.uvc_control*, align 8
  %10 = alloca %struct.uvc_control_mapping*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_queryctrl, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %7, align 8
  store %struct.v4l2_event* %1, %struct.v4l2_event** %8, align 8
  store %struct.uvc_control* %2, %struct.uvc_control** %9, align 8
  store %struct.uvc_control_mapping* %3, %struct.uvc_control_mapping** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %7, align 8
  %15 = load %struct.uvc_control*, %struct.uvc_control** %9, align 8
  %16 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %10, align 8
  %17 = call i32 @__uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %14, %struct.uvc_control* %15, %struct.uvc_control_mapping* %16, %struct.v4l2_queryctrl* %13)
  %18 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %19 = call i32 @memset(%struct.v4l2_event* %18, i32 0, i32 40)
  %20 = load i32, i32* @V4L2_EVENT_CTRL, align 4
  %21 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 7
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 4
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  store i32 %38, i32* %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_event*, %struct.v4l2_event** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  ret void
}

declare dso_local i32 @__uvc_query_v4l2_ctrl(%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @memset(%struct.v4l2_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
