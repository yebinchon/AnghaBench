; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JPEGCTX_RESOLUTION_CHANGE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@JPEGCTX_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @s5p_jpeg_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_jpeg_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.s5p_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.s5p_jpeg_ctx* %5, %struct.s5p_jpeg_ctx** %3, align 8
  %6 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JPEGCTX_RESOLUTION_CHANGE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %13 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %19 = call i32 @s5p_jpeg_set_capture_queue_data(%struct.s5p_jpeg_ctx* %18)
  %20 = load i64, i64* @JPEGCTX_RUNNING, align 8
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %11, %1
  %24 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_put(i32 %28)
  ret void
}

declare dso_local %struct.s5p_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @s5p_jpeg_set_capture_queue_data(%struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
