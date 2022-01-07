; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_urb = type { %struct.uvc_streaming*, %struct.urb* }
%struct.uvc_streaming = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.uvc_buffer = type { i32, i64 }

@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"USB isochronous frame lost (%d).\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_urb*, %struct.uvc_buffer*, %struct.uvc_buffer*)* @uvc_video_decode_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_isoc(%struct.uvc_urb* %0, %struct.uvc_buffer* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.uvc_urb*, align 8
  %5 = alloca %struct.uvc_buffer*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.uvc_streaming*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uvc_urb* %0, %struct.uvc_urb** %4, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  %12 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %13 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %12, i32 0, i32 1
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %7, align 8
  %15 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %15, i32 0, i32 0
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %16, align 8
  store %struct.uvc_streaming* %17, %struct.uvc_streaming** %8, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %140, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.urb*, %struct.urb** %7, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %143

24:                                               ; preds = %18
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %36 = load %struct.urb*, %struct.urb** %7, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @uvc_trace(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %46 = icmp ne %struct.uvc_buffer* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %34
  br label %140

51:                                               ; preds = %24
  %52 = load %struct.urb*, %struct.urb** %7, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %54, i64 %63
  store i32* %64, i32** %9, align 8
  br label %65

65:                                               ; preds = %86, %51
  %66 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %67 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.urb*, %struct.urb** %7, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @uvc_video_decode_start(%struct.uvc_streaming* %66, %struct.uvc_buffer* %67, i32* %68, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %84 = call i32 @uvc_video_next_buffers(%struct.uvc_streaming* %83, %struct.uvc_buffer** %5, %struct.uvc_buffer** %6)
  br label %85

85:                                               ; preds = %82, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %65, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %140

95:                                               ; preds = %91
  %96 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %97 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @uvc_video_decode_meta(%struct.uvc_streaming* %96, %struct.uvc_buffer* %97, i32* %98, i32 %99)
  %101 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %102 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %114, %116
  %118 = call i32 @uvc_video_decode_data(%struct.uvc_urb* %101, %struct.uvc_buffer* %102, i32* %106, i64 %117)
  %119 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %120 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.urb*, %struct.urb** %7, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @uvc_video_decode_end(%struct.uvc_streaming* %119, %struct.uvc_buffer* %120, i32* %121, i64 %129)
  %131 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %95
  %137 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %138 = call i32 @uvc_video_next_buffers(%struct.uvc_streaming* %137, %struct.uvc_buffer** %5, %struct.uvc_buffer** %6)
  br label %139

139:                                              ; preds = %136, %95
  br label %140

140:                                              ; preds = %139, %94, %50
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %18

143:                                              ; preds = %18
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*, i64) #1

declare dso_local i32 @uvc_video_decode_start(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i64) #1

declare dso_local i32 @uvc_video_next_buffers(%struct.uvc_streaming*, %struct.uvc_buffer**, %struct.uvc_buffer**) #1

declare dso_local i32 @uvc_video_decode_meta(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_data(%struct.uvc_urb*, %struct.uvc_buffer*, i32*, i64) #1

declare dso_local i32 @uvc_video_decode_end(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
