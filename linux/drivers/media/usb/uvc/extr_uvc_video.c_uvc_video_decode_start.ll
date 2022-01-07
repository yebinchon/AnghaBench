; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_buffer = type { i32, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@UVC_STREAM_ERR = common dso_local global i32 0, align 4
@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Marking buffer as bad (error bit set).\0A\00", align 1
@UVC_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Dropping payload (out of sync).\0A\00", align 1
@UVC_QUIRK_STREAM_NO_FID = common dso_local global i32 0, align 4
@UVC_STREAM_EOF = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Frame complete (FID bit toggled).\0A\00", align 1
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32)* @uvc_video_decode_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_video_decode_start(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca %struct.uvc_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18, %13, %4
  %25 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %26 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %172

33:                                               ; preds = %18
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UVC_STREAM_FID, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %50 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %55 = call i32 @uvc_video_stats_update(%struct.uvc_streaming* %54)
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %59 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @uvc_video_clock_decode(%struct.uvc_streaming* %58, %struct.uvc_buffer* %59, i32* %60, i32 %61)
  %63 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @uvc_video_stats_decode(%struct.uvc_streaming* %63, i32* %64, i32 %65)
  %67 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %68 = icmp eq %struct.uvc_buffer* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %72 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @ENODATA, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %172

75:                                               ; preds = %57
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UVC_STREAM_ERR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %84 = call i32 @uvc_trace(i32 %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %96 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %93
  %100 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %101 = call i32 @uvc_trace(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %103 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UVC_QUIRK_STREAM_NO_FID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %99
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @UVC_STREAM_EOF, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* @UVC_STREAM_FID, align 4
  %119 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %120 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = xor i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %110, %99
  %124 = load i32, i32* @ENODATA, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %172

126:                                              ; preds = %93
  %127 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %128 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %129 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %132 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %135 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = call i32 (...) @uvc_video_get_time()
  %138 = call i32 @ktime_to_ns(i32 %137)
  %139 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %140 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %144 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %145 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %126, %87
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %149 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %154 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %159 = call i32 @uvc_trace(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %161 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %162 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %172

165:                                              ; preds = %152, %146
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %168 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %165, %157, %123, %69, %24
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @uvc_video_stats_update(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_video_clock_decode(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_stats_decode(%struct.uvc_streaming*, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @uvc_video_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
