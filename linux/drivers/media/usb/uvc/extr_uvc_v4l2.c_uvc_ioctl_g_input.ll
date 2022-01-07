; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@UVC_QUIRK_IGNORE_SELECTOR_UNIT = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@UVC_SU_INPUT_SELECT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @uvc_ioctl_g_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_g_input(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.uvc_fh*
  store %struct.uvc_fh* %13, %struct.uvc_fh** %8, align 8
  %14 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %14, i32 0, i32 0
  %16 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %15, align 8
  store %struct.uvc_video_chain* %16, %struct.uvc_video_chain** %9, align 8
  %17 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %18 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %23 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UVC_QUIRK_IGNORE_SELECTOR_UNIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21, %3
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %57

32:                                               ; preds = %21
  %33 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %34 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @UVC_GET_CUR, align 4
  %37 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %38 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %43 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UVC_SU_INPUT_SELECT_CONTROL, align 4
  %48 = call i32 @uvc_query_ctrl(%struct.TYPE_4__* %35, i32 %36, i32 %41, i32 %46, i32 %47, i32* %11, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %32
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %51, %30
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_4__*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
