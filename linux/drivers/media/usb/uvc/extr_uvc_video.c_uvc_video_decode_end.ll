; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_buffer = type { i64, i32 }

@UVC_STREAM_EOF = common dso_local global i32 0, align 4
@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frame complete (EOF found).\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EOF in empty payload.\0A\00", align 1
@UVC_BUF_STATE_READY = common dso_local global i32 0, align 4
@UVC_QUIRK_STREAM_NO_FID = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32)* @uvc_video_decode_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_end(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UVC_STREAM_EOF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %22 = call i32 @uvc_trace(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %30 = call i32 @uvc_trace(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* @UVC_BUF_STATE_READY, align 4
  %33 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %36 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UVC_QUIRK_STREAM_NO_FID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* @UVC_STREAM_FID, align 4
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %31
  br label %50

50:                                               ; preds = %49, %15, %4
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
