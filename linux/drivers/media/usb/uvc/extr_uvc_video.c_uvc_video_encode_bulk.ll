; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_encode_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_encode_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_urb = type { %struct.uvc_streaming*, %struct.urb* }
%struct.uvc_streaming = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.urb = type { i32, i32* }
%struct.uvc_buffer = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@UVC_BUF_STATE_READY = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_urb*, %struct.uvc_buffer*, %struct.uvc_buffer*)* @uvc_video_encode_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_encode_bulk(%struct.uvc_urb* %0, %struct.uvc_buffer* %1, %struct.uvc_buffer* %2) #0 {
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
  %18 = load %struct.urb*, %struct.urb** %7, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %25 = icmp eq %struct.uvc_buffer* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.urb*, %struct.urb** %7, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %140

29:                                               ; preds = %3
  %30 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %31 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %37 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @uvc_video_encode_header(%struct.uvc_streaming* %36, %struct.uvc_buffer* %37, i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %43 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %48 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %35, %29
  %60 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %61 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @uvc_video_encode_data(%struct.uvc_streaming* %60, %struct.uvc_buffer* %61, i32* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %68 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %66
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %76 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %79 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %59
  %84 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %85 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %89 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %83, %59
  %94 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %98 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %93
  %103 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %104 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @UVC_BUF_STATE_READY, align 4
  %107 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %108 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %110 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %114 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  %116 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %117 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %116, i32 0, i32 3
  %118 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %119 = call i32 @uvc_queue_next_buffer(%struct.TYPE_6__* %117, %struct.uvc_buffer* %118)
  %120 = load i32, i32* @UVC_STREAM_FID, align 4
  %121 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %122 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %102, %93
  %126 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %127 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %130 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %83
  %133 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %134 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load %struct.urb*, %struct.urb** %7, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %132, %26
  ret void
}

declare dso_local i32 @uvc_video_encode_header(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_encode_data(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_queue_next_buffer(%struct.TYPE_6__*, %struct.uvc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
