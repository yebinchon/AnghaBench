; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.uvc_video_queue = type { i32, i32, i32 }
%struct.uvc_buffer = type { i32, i32, i32 }

@UVC_QUEUE_DISCONNECTED = common dso_local global i32 0, align 4
@UVC_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @uvc_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca %struct.uvc_buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.uvc_video_queue* @vb2_get_drv_priv(i32 %11)
  store %struct.uvc_video_queue* %12, %struct.uvc_video_queue** %4, align 8
  %13 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %14 = call %struct.uvc_buffer* @uvc_vbuf_to_buffer(%struct.vb2_v4l2_buffer* %13)
  store %struct.uvc_buffer* %14, %struct.uvc_buffer** %5, align 8
  %15 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UVC_QUEUE_DISCONNECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %30, i32 0, i32 2
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %33, i32 0, i32 1
  %35 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %36 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %35, i32 0, i32 2
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  br label %45

38:                                               ; preds = %1
  %39 = load i32, i32* @UVC_BUF_STATE_ERROR, align 4
  %40 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %43 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %44 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %47 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.uvc_video_queue* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.uvc_buffer* @uvc_vbuf_to_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
