; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_register_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_register_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_streaming = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize the device (%d).\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_META_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@uvc_fops = common dso_local global i32 0, align 4
@uvc_ioctl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_streaming*)* @uvc_register_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_register_video(%struct.uvc_device* %0, %struct.uvc_streaming* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.uvc_streaming* %1, %struct.uvc_streaming** %5, align 8
  %7 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %8 = call i32 @uvc_video_init(%struct.uvc_streaming* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @KERN_ERR, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @uvc_printk(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %24 = load i32, i32* @V4L2_CAP_META_CAPTURE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  br label %40

32:                                               ; preds = %16
  %33 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %22
  %41 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %42 = call i32 @uvc_debugfs_init_stream(%struct.uvc_streaming* %41)
  %43 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %44 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 2
  %47 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %48 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %47, i32 0, i32 1
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %50 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @uvc_register_video_device(%struct.uvc_device* %43, %struct.uvc_streaming* %44, i32* %46, i32* %48, i64 %51, i32* @uvc_fops, i32* @uvc_ioctl_ops)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %40, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @uvc_video_init(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_printk(i32, i8*, i32) #1

declare dso_local i32 @uvc_debugfs_init_stream(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_register_video_device(%struct.uvc_device*, %struct.uvc_streaming*, i32*, i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
