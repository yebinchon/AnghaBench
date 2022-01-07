; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.uvc_video_queue = type { i32, i64 }
%struct.uvc_streaming = type { i32 }

@UVC_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @uvc_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_video_queue*, align 8
  %7 = alloca %struct.uvc_streaming*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.uvc_video_queue* %10, %struct.uvc_video_queue** %6, align 8
  %11 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %12 = call %struct.uvc_streaming* @uvc_queue_to_stream(%struct.uvc_video_queue* %11)
  store %struct.uvc_streaming* %12, %struct.uvc_streaming** %7, align 8
  %13 = call i32 (...) @lockdep_assert_irqs_enabled()
  %14 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %15 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %17 = call i32 @uvc_video_start_streaming(%struct.uvc_streaming* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %23 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %26 = load i32, i32* @UVC_BUF_STATE_QUEUED, align 4
  %27 = call i32 @uvc_queue_return_buffers(%struct.uvc_video_queue* %25, i32 %26)
  %28 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.uvc_streaming* @uvc_queue_to_stream(%struct.uvc_video_queue*) #1

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @uvc_video_start_streaming(%struct.uvc_streaming*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @uvc_queue_return_buffers(%struct.uvc_video_queue*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
