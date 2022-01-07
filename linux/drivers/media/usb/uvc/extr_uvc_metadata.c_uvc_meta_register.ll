; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_2__, %struct.uvc_device* }
%struct.TYPE_2__ = type { i32, %struct.uvc_video_queue, %struct.video_device }
%struct.uvc_video_queue = type { i32 }
%struct.video_device = type { i32* }
%struct.uvc_device = type { i32 }

@V4L2_META_FMT_UVC = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_META_CAPTURE = common dso_local global i32 0, align 4
@uvc_meta_fops = common dso_local global i32 0, align 4
@uvc_meta_ioctl_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_meta_register(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  %3 = alloca %struct.uvc_device*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.uvc_video_queue*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  %6 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %7 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %6, i32 0, i32 1
  %8 = load %struct.uvc_device*, %struct.uvc_device** %7, align 8
  store %struct.uvc_device* %8, %struct.uvc_device** %3, align 8
  %9 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %10 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %13 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.uvc_video_queue* %14, %struct.uvc_video_queue** %5, align 8
  %15 = load i32, i32* @V4L2_META_FMT_UVC, align 4
  %16 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %17 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %20 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %19, i32 0, i32 0
  %21 = load %struct.video_device*, %struct.video_device** %4, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %25 = load %struct.video_device*, %struct.video_device** %4, align 8
  %26 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %27 = load i32, i32* @V4L2_BUF_TYPE_META_CAPTURE, align 4
  %28 = call i32 @uvc_register_video_device(%struct.uvc_device* %23, %struct.uvc_streaming* %24, %struct.video_device* %25, %struct.uvc_video_queue* %26, i32 %27, i32* @uvc_meta_fops, i32* @uvc_meta_ioctl_ops)
  ret i32 %28
}

declare dso_local i32 @uvc_register_video_device(%struct.uvc_device*, %struct.uvc_streaming*, %struct.video_device*, %struct.uvc_video_queue*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
