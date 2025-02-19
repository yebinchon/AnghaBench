; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @uvc_ioctl_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
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
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %29 = call i32 @uvc_request_buffers(i32* %27, %struct.v4l2_requestbuffers* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %31 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %42 = call i32 @uvc_dismiss_privileges(%struct.uvc_fh* %41)
  br label %43

43:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %35, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @uvc_acquire_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_request_buffers(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uvc_dismiss_privileges(%struct.uvc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
