; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_isight.c_isight_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_isight.c_isight_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32 }
%struct.uvc_buffer = type { i64, i64, i32, i32* }

@isight_decode.hdr = internal constant [12 x i32] [i32 17, i32 34, i32 51, i32 68, i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 250, i32 206], align 16
@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"iSight header found\0A\00", align 1
@UVC_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Dropping packet (out of sync).\0A\00", align 1
@UVC_BUF_STATE_DONE = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Frame complete (overflow).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_queue*, %struct.uvc_buffer*, i32*, i32)* @isight_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isight_decode(%struct.uvc_video_queue* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_video_queue*, align 8
  %7 = alloca %struct.uvc_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %6, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %15 = icmp eq %struct.uvc_buffer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %121

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp uge i32 %18, 14
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i64 @memcmp(i32* %22, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @isight_decode.hdr, i64 0, i64 0), i32 12)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp uge i32 %26, 15
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = call i64 @memcmp(i32* %30, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @isight_decode.hdr, i64 0, i64 0), i32 12)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %20
  %34 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %35 = call i32 @uvc_trace(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %47 = call i32 @uvc_trace(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %121

48:                                               ; preds = %42
  %49 = load i64, i64* @UVC_BUF_STATE_ACTIVE, align 8
  %50 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8*, i8** @UVC_BUF_STATE_DONE, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %121

67:                                               ; preds = %55, %52
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %120, label %70

70:                                               ; preds = %67
  %71 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = zext i32 %73 to i64
  %75 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %76 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %84 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32* %86, i32** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @min(i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @memcpy(i32* %90, i32* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %97 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %70
  %104 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %105 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %103, %70
  %113 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %114 = call i32 @uvc_trace(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i8*, i8** @UVC_BUF_STATE_DONE, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.uvc_buffer*, %struct.uvc_buffer** %7, align 8
  %118 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %103
  br label %120

120:                                              ; preds = %119, %67
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %60, %45, %16
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
