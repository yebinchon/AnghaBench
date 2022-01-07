; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.mtk_jpeg_ctx = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.mtk_jpeg_src_buf = type { i32 }

@MTK_JPEG_SOURCE_CHANGE = common dso_local global i64 0, align 8
@MTK_JPEG_RUNNING = common dso_local global i64 0, align 8
@MTK_JPEG_INIT = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @mtk_jpeg_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.mtk_jpeg_src_buf*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.mtk_jpeg_ctx* %7, %struct.mtk_jpeg_ctx** %3, align 8
  %8 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MTK_JPEG_SOURCE_CHANGE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %23)
  store %struct.vb2_v4l2_buffer* %24, %struct.vb2_v4l2_buffer** %4, align 8
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %25, i32 0, i32 0
  %27 = call %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(i32* %26)
  store %struct.mtk_jpeg_src_buf* %27, %struct.mtk_jpeg_src_buf** %5, align 8
  %28 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %29 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %29, i32 0, i32 0
  %31 = call i32 @mtk_jpeg_set_queue_data(%struct.mtk_jpeg_ctx* %28, i32* %30)
  %32 = load i64, i64* @MTK_JPEG_RUNNING, align 8
  %33 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %46

35:                                               ; preds = %13, %1
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %37 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @MTK_JPEG_INIT, align 8
  %43 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %54, %46
  %48 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %50 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.vb2_v4l2_buffer* @mtk_jpeg_buf_remove(%struct.mtk_jpeg_ctx* %48, i32 %51)
  store %struct.vb2_v4l2_buffer* %52, %struct.vb2_v4l2_buffer** %4, align 8
  %53 = icmp ne %struct.vb2_v4l2_buffer* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %56 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %57 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %55, i32 %56)
  br label %47

58:                                               ; preds = %47
  %59 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pm_runtime_put_sync(i32 %63)
  ret void
}

declare dso_local %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(i32*) #1

declare dso_local i32 @mtk_jpeg_set_queue_data(%struct.mtk_jpeg_ctx*, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @mtk_jpeg_buf_remove(%struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
