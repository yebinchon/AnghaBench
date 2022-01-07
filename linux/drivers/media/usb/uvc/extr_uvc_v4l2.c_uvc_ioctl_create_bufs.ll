; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_create_buffers = type { i32 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)* @uvc_ioctl_create_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_create_bufs(%struct.file* %0, i8* %1, %struct.v4l2_create_buffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_create_buffers*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_create_buffers* %2, %struct.v4l2_create_buffers** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.uvc_fh*
  store %struct.uvc_fh* %12, %struct.uvc_fh** %8, align 8
  %13 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %14 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %13, i32 0, i32 0
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %14, align 8
  store %struct.uvc_streaming* %15, %struct.uvc_streaming** %9, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %17 = call i32 @uvc_acquire_privileges(%struct.uvc_fh* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 0
  %25 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %26 = call i32 @uvc_create_buffers(i32* %24, %struct.v4l2_create_buffers* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @uvc_acquire_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_create_buffers(i32*, %struct.v4l2_create_buffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
