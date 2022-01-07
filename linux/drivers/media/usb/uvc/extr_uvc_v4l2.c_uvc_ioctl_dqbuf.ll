; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @uvc_ioctl_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.uvc_fh*
  store %struct.uvc_fh* %11, %struct.uvc_fh** %8, align 8
  %12 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %13 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %12, i32 0, i32 0
  %14 = load %struct.uvc_streaming*, %struct.uvc_streaming** %13, align 8
  store %struct.uvc_streaming* %14, %struct.uvc_streaming** %9, align 8
  %15 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %16 = call i32 @uvc_has_privileges(%struct.uvc_fh* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %22, i32 0, i32 0
  %24 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @uvc_dequeue_buffer(i32* %23, %struct.v4l2_buffer* %24, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @uvc_has_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_dequeue_buffer(i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
