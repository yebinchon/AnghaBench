; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_buffer_filled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_buffer_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }
%struct.au0828_dmaqueue = type { i32 }
%struct.au0828_buffer = type { i32, %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"[%p/%d] wakeup\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*)* @buffer_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_filled(%struct.au0828_dev* %0, %struct.au0828_dmaqueue* %1, %struct.au0828_buffer* %2) #0 {
  %4 = alloca %struct.au0828_dev*, align 8
  %5 = alloca %struct.au0828_dmaqueue*, align 8
  %6 = alloca %struct.au0828_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %4, align 8
  store %struct.au0828_dmaqueue* %1, %struct.au0828_dmaqueue** %5, align 8
  store %struct.au0828_buffer* %2, %struct.au0828_buffer** %6, align 8
  %9 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %9, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %7, align 8
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %12 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %13, align 8
  store %struct.vb2_queue* %14, %struct.vb2_queue** %8, align 8
  %15 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %16 = load %struct.au0828_buffer*, %struct.au0828_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.au0828_buffer* %15, i32 %18)
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %27 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = sext i32 %28 to i64
  %31 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.au0828_dev*, %struct.au0828_dev** %4, align 8
  %35 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = sext i32 %36 to i64
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @ktime_get_ns()
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %52 = call i32 @vb2_buffer_done(%struct.TYPE_2__* %50, i32 %51)
  ret void
}

declare dso_local i32 @au0828_isocdbg(i8*, %struct.au0828_buffer*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
