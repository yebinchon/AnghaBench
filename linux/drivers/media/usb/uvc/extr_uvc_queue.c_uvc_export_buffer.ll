; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_export_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_export_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32 }
%struct.v4l2_exportbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_export_buffer(%struct.uvc_video_queue* %0, %struct.v4l2_exportbuffer* %1) #0 {
  %3 = alloca %struct.uvc_video_queue*, align 8
  %4 = alloca %struct.v4l2_exportbuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %3, align 8
  store %struct.v4l2_exportbuffer* %1, %struct.v4l2_exportbuffer** %4, align 8
  %6 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %7 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %10 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %9, i32 0, i32 1
  %11 = load %struct.v4l2_exportbuffer*, %struct.v4l2_exportbuffer** %4, align 8
  %12 = call i32 @vb2_expbuf(i32* %10, %struct.v4l2_exportbuffer* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %3, align 8
  %14 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_expbuf(i32*, %struct.v4l2_exportbuffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
