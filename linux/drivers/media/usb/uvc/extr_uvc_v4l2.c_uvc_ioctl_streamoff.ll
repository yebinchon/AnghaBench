; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @uvc_ioctl_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
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
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @uvc_queue_streamoff(i32* %26, i32 %27)
  %29 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %30 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @uvc_has_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_queue_streamoff(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
