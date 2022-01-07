; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_status_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_status_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.uvc_video_chain = type { %struct.uvc_device* }
%struct.uvc_device = type { %struct.uvc_ctrl_work }
%struct.uvc_ctrl_work = type { i32, %struct.uvc_control*, %struct.uvc_video_chain*, %struct.urb*, i32* }
%struct.uvc_control = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_ctrl_status_event(%struct.urb* %0, %struct.uvc_video_chain* %1, %struct.uvc_control* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.uvc_video_chain*, align 8
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.uvc_device*, align 8
  %11 = alloca %struct.uvc_ctrl_work*, align 8
  store %struct.urb* %0, %struct.urb** %6, align 8
  store %struct.uvc_video_chain* %1, %struct.uvc_video_chain** %7, align 8
  store %struct.uvc_control* %2, %struct.uvc_control** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %7, align 8
  %13 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %12, i32 0, i32 0
  %14 = load %struct.uvc_device*, %struct.uvc_device** %13, align 8
  store %struct.uvc_device* %14, %struct.uvc_device** %10, align 8
  %15 = load %struct.uvc_device*, %struct.uvc_device** %10, align 8
  %16 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %15, i32 0, i32 0
  store %struct.uvc_ctrl_work* %16, %struct.uvc_ctrl_work** %11, align 8
  %17 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %18 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %24 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  store i32 0, i32* %5, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.uvc_ctrl_work*, %struct.uvc_ctrl_work** %11, align 8
  %28 = getelementptr inbounds %struct.uvc_ctrl_work, %struct.uvc_ctrl_work* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = load %struct.uvc_ctrl_work*, %struct.uvc_ctrl_work** %11, align 8
  %31 = getelementptr inbounds %struct.uvc_ctrl_work, %struct.uvc_ctrl_work* %30, i32 0, i32 3
  store %struct.urb* %29, %struct.urb** %31, align 8
  %32 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %7, align 8
  %33 = load %struct.uvc_ctrl_work*, %struct.uvc_ctrl_work** %11, align 8
  %34 = getelementptr inbounds %struct.uvc_ctrl_work, %struct.uvc_ctrl_work* %33, i32 0, i32 2
  store %struct.uvc_video_chain* %32, %struct.uvc_video_chain** %34, align 8
  %35 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %36 = load %struct.uvc_ctrl_work*, %struct.uvc_ctrl_work** %11, align 8
  %37 = getelementptr inbounds %struct.uvc_ctrl_work, %struct.uvc_ctrl_work* %36, i32 0, i32 1
  store %struct.uvc_control* %35, %struct.uvc_control** %37, align 8
  %38 = load %struct.uvc_ctrl_work*, %struct.uvc_ctrl_work** %11, align 8
  %39 = getelementptr inbounds %struct.uvc_ctrl_work, %struct.uvc_ctrl_work* %38, i32 0, i32 0
  %40 = call i32 @schedule_work(i32* %39)
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
