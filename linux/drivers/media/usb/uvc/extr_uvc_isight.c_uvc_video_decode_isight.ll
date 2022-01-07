; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_isight.c_uvc_video_decode_isight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_isight.c_uvc_video_decode_isight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_urb = type { %struct.uvc_streaming*, %struct.urb* }
%struct.uvc_streaming = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.uvc_buffer = type { i64 }

@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB isochronous frame lost (%d).\0A\00", align 1
@UVC_BUF_STATE_DONE = common dso_local global i64 0, align 8
@UVC_BUF_STATE_ERROR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_video_decode_isight(%struct.uvc_urb* %0, %struct.uvc_buffer* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.uvc_urb*, align 8
  %5 = alloca %struct.uvc_buffer*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.uvc_streaming*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_urb* %0, %struct.uvc_urb** %4, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  %11 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %11, i32 0, i32 1
  %13 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %13, %struct.urb** %7, align 8
  %14 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %15 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %14, i32 0, i32 0
  %16 = load %struct.uvc_streaming*, %struct.uvc_streaming** %15, align 8
  store %struct.uvc_streaming* %16, %struct.uvc_streaming** %8, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %97, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.urb*, %struct.urb** %7, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %17
  %24 = load %struct.urb*, %struct.urb** %7, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %35 = load %struct.urb*, %struct.urb** %7, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @uvc_trace(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %33, %23
  br label %45

45:                                               ; preds = %91, %44
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.urb*, %struct.urb** %7, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %51, %59
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @isight_decode(i32* %47, %struct.uvc_buffer* %48, i64 %60, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %71 = icmp eq %struct.uvc_buffer* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %96

73:                                               ; preds = %45
  %74 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @UVC_BUF_STATE_DONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UVC_BUF_STATE_ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79, %73
  %86 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %87 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %86, i32 0, i32 0
  %88 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %89 = call %struct.uvc_buffer* @uvc_queue_next_buffer(i32* %87, %struct.uvc_buffer* %88)
  store %struct.uvc_buffer* %89, %struct.uvc_buffer** %5, align 8
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %45, label %96

96:                                               ; preds = %91, %72
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %17

100:                                              ; preds = %17
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*, i64) #1

declare dso_local i32 @isight_decode(i32*, %struct.uvc_buffer*, i64, i32) #1

declare dso_local %struct.uvc_buffer* @uvc_queue_next_buffer(i32*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
