; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { %struct.uvc_streaming*, %struct.uvc_video_chain* }
%struct.uvc_streaming = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_video_chain = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.video_device = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @uvc_ioctl_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.uvc_fh*, %struct.uvc_fh** %14, align 8
  store %struct.uvc_fh* %15, %struct.uvc_fh** %8, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %17 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %16, i32 0, i32 1
  %18 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %17, align 8
  store %struct.uvc_video_chain* %18, %struct.uvc_video_chain** %9, align 8
  %19 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %20 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %19, i32 0, i32 0
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %20, align 8
  store %struct.uvc_streaming* %21, %struct.uvc_streaming** %10, align 8
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.video_device*, %struct.video_device** %7, align 8
  %30 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strscpy(i32 %28, i8* %31, i32 4)
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %10, align 8
  %34 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_make_path(i32 %37, i32 %40, i32 4)
  %42 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %43 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %46 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
