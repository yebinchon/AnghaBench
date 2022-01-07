; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_video_stop_streaming(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  %6 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %7 = call i32 @uvc_video_stop_transfer(%struct.uvc_streaming* %6, i32 1)
  %8 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %9 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %16 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_set_interface(i32 %19, i32 %22, i32 0)
  br label %53

24:                                               ; preds = %1
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %32 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %38 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @usb_sndbulkpipe(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @usb_clear_halt(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %24, %14
  %54 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %55 = call i32 @uvc_video_clock_cleanup(%struct.uvc_streaming* %54)
  ret void
}

declare dso_local i32 @uvc_video_stop_transfer(%struct.uvc_streaming*, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @uvc_video_clock_cleanup(%struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
