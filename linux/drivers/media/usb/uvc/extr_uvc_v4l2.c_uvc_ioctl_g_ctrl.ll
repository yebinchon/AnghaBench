; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @uvc_ioctl_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca %struct.v4l2_ext_control, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.uvc_fh*
  store %struct.uvc_fh* %13, %struct.uvc_fh** %8, align 8
  %14 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %14, i32 0, i32 0
  %16 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %15, align 8
  store %struct.uvc_video_chain* %16, %struct.uvc_video_chain** %9, align 8
  %17 = call i32 @memset(%struct.v4l2_ext_control* %10, i32 0, i32 8)
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %23 = call i32 @uvc_ctrl_begin(%struct.uvc_video_chain* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %30 = call i32 @uvc_ctrl_get(%struct.uvc_video_chain* %29, %struct.v4l2_ext_control* %10)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %32 = call i32 @uvc_ctrl_rollback(%struct.uvc_fh* %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %35, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.v4l2_ext_control*, i32, i32) #1

declare dso_local i32 @uvc_ctrl_begin(%struct.uvc_video_chain*) #1

declare dso_local i32 @uvc_ctrl_get(%struct.uvc_video_chain*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @uvc_ctrl_rollback(%struct.uvc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
