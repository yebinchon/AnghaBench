; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_next_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_next_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_buffer = type { i64, i32, %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@UVC_BUF_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*, %struct.uvc_buffer**, %struct.uvc_buffer**)* @uvc_video_next_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_next_buffers(%struct.uvc_streaming* %0, %struct.uvc_buffer** %1, %struct.uvc_buffer** %2) #0 {
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.uvc_buffer**, align 8
  %6 = alloca %struct.uvc_buffer**, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store %struct.uvc_buffer** %1, %struct.uvc_buffer*** %5, align 8
  store %struct.uvc_buffer** %2, %struct.uvc_buffer*** %6, align 8
  %9 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %10 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %5, align 8
  %11 = load %struct.uvc_buffer*, %struct.uvc_buffer** %10, align 8
  %12 = call i32 @uvc_video_validate_buffer(%struct.uvc_streaming* %9, %struct.uvc_buffer* %11)
  %13 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %14 = load %struct.uvc_buffer*, %struct.uvc_buffer** %13, align 8
  %15 = icmp ne %struct.uvc_buffer* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %3
  %17 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %18 = load %struct.uvc_buffer*, %struct.uvc_buffer** %17, align 8
  %19 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %18, i32 0, i32 2
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %7, align 8
  %20 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %5, align 8
  %21 = load %struct.uvc_buffer*, %struct.uvc_buffer** %20, align 8
  %22 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %21, i32 0, i32 2
  store %struct.vb2_v4l2_buffer* %22, %struct.vb2_v4l2_buffer** %8, align 8
  %23 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @UVC_BUF_STATE_READY, align 4
  %41 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %42 = load %struct.uvc_buffer*, %struct.uvc_buffer** %41, align 8
  %43 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %45 = load %struct.uvc_buffer*, %struct.uvc_buffer** %44, align 8
  %46 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %16
  %50 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %5, align 8
  %51 = load %struct.uvc_buffer*, %struct.uvc_buffer** %50, align 8
  %52 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %55 = load %struct.uvc_buffer*, %struct.uvc_buffer** %54, align 8
  %56 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %49, %16
  %58 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %59 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  %62 = load %struct.uvc_buffer*, %struct.uvc_buffer** %61, align 8
  %63 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %60, %struct.uvc_buffer* %62)
  %64 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %6, align 8
  store %struct.uvc_buffer* %63, %struct.uvc_buffer** %64, align 8
  br label %65

65:                                               ; preds = %57, %3
  %66 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %67 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %66, i32 0, i32 0
  %68 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %5, align 8
  %69 = load %struct.uvc_buffer*, %struct.uvc_buffer** %68, align 8
  %70 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %67, %struct.uvc_buffer* %69)
  %71 = load %struct.uvc_buffer**, %struct.uvc_buffer*** %5, align 8
  store %struct.uvc_buffer* %70, %struct.uvc_buffer** %71, align 8
  ret void
}

declare dso_local i32 @uvc_video_validate_buffer(%struct.uvc_streaming*, %struct.uvc_buffer*) #1

declare dso_local %struct.uvc_buffer* @uvc_queue_next_buffer(i32*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
