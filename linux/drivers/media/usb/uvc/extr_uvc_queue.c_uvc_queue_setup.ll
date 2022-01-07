; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.uvc_video_queue = type { i32 }
%struct.uvc_streaming = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UVC_METATADA_BUF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @uvc_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.uvc_video_queue*, align 8
  %13 = alloca %struct.uvc_streaming*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.uvc_video_queue* %16, %struct.uvc_video_queue** %12, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %22 [
    i32 128, label %20
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @UVC_METATADA_BUF_SIZE, align 4
  store i32 %21, i32* %14, align 4
  br label %29

22:                                               ; preds = %5
  %23 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %12, align 8
  %24 = call %struct.uvc_streaming* @uvc_queue_to_stream(%struct.uvc_video_queue* %23)
  store %struct.uvc_streaming* %24, %struct.uvc_streaming** %13, align 8
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %13, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %29
  %50 = load i32*, i32** %9, align 8
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %47
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.uvc_video_queue* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.uvc_streaming* @uvc_queue_to_stream(%struct.uvc_video_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
