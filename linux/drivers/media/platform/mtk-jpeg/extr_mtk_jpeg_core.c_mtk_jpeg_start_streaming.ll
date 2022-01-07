; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @mtk_jpeg_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_jpeg_ctx*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.mtk_jpeg_ctx* %10, %struct.mtk_jpeg_ctx** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %29, %21
  %23 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.vb2_v4l2_buffer* @mtk_jpeg_buf_remove(%struct.mtk_jpeg_ctx* %23, i32 %26)
  store %struct.vb2_v4l2_buffer* %27, %struct.vb2_v4l2_buffer** %7, align 8
  %28 = icmp ne %struct.vb2_v4l2_buffer* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %31 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %32 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %30, i32 %31)
  br label %22

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @mtk_jpeg_buf_remove(%struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
