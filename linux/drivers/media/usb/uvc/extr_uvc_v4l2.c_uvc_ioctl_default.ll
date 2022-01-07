; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i32, i8*)* @uvc_ioctl_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uvc_ioctl_default(%struct.file* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.uvc_fh*, align 8
  %13 = alloca %struct.uvc_video_chain*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.uvc_fh*
  store %struct.uvc_fh* %15, %struct.uvc_fh** %12, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %12, align 8
  %17 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %16, i32 0, i32 0
  %18 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %17, align 8
  store %struct.uvc_video_chain* %18, %struct.uvc_video_chain** %13, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %5
  %21 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %13, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @uvc_ioctl_ctrl_map(%struct.uvc_video_chain* %21, i8* %22)
  store i64 %23, i64* %6, align 8
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %13, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @uvc_xu_ctrl_query(%struct.uvc_video_chain* %25, i8* %26)
  store i64 %27, i64* %6, align 8
  br label %31

28:                                               ; preds = %5
  %29 = load i64, i64* @ENOTTY, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %28, %24, %20
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare dso_local i64 @uvc_ioctl_ctrl_map(%struct.uvc_video_chain*, i8*) #1

declare dso_local i64 @uvc_xu_ctrl_query(%struct.uvc_video_chain*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
