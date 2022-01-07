; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.uvc_video_queue = type { i32 }

@V4L2_BUF_TYPE_META_CAPTURE = common dso_local global i64 0, align 8
@UVC_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @uvc_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.uvc_video_queue*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.uvc_video_queue* %5, %struct.uvc_video_queue** %3, align 8
  %6 = call i32 (...) @lockdep_assert_irqs_enabled()
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_BUF_TYPE_META_CAPTURE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %14 = call i32 @uvc_queue_to_stream(%struct.uvc_video_queue* %13)
  %15 = call i32 @uvc_video_stop_streaming(i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %18 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %21 = load i32, i32* @UVC_BUF_STATE_ERROR, align 4
  %22 = call i32 @uvc_queue_return_buffers(%struct.uvc_video_queue* %20, i32 %21)
  %23 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %24 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  ret void
}

declare dso_local %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @uvc_video_stop_streaming(i32) #1

declare dso_local i32 @uvc_queue_to_stream(%struct.uvc_video_queue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @uvc_queue_return_buffers(%struct.uvc_video_queue*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
