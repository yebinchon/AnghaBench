; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.uvc_video_queue = type { i32 }
%struct.uvc_buffer = type { i64, i64, i32, i64, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@UVC_TRACE_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[E] Bytes used out of bounds.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UVC_QUEUE_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UVC_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @uvc_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.uvc_video_queue*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %4, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.uvc_video_queue* @vb2_get_drv_priv(i32 %11)
  store %struct.uvc_video_queue* %12, %struct.uvc_video_queue** %5, align 8
  %13 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %14 = call %struct.uvc_buffer* @uvc_vbuf_to_buffer(%struct.vb2_v4l2_buffer* %13)
  store %struct.uvc_buffer* %14, %struct.uvc_buffer** %6, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %22 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %21, i32 0)
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = call i64 @vb2_plane_size(%struct.vb2_buffer* %23, i32 0)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %28 = call i32 @uvc_trace(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %70

31:                                               ; preds = %20, %1
  %32 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %33 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UVC_QUEUE_DISCONNECTED, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %31
  %43 = load i32, i32* @UVC_BUF_STATE_QUEUED, align 4
  %44 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %49 = call i32 @vb2_plane_vaddr(%struct.vb2_buffer* %48, i32 0)
  %50 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %53 = call i64 @vb2_plane_size(%struct.vb2_buffer* %52, i32 0)
  %54 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %42
  %62 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %69

64:                                               ; preds = %42
  %65 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %66 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %65, i32 0)
  %67 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %61
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %39, %26
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.uvc_video_queue* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.uvc_buffer* @uvc_vbuf_to_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
