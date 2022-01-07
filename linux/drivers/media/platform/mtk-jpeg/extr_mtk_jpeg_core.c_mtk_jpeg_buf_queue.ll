; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_jpeg_ctx = type { i64, %struct.TYPE_3__, %struct.mtk_jpeg_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32 }
%struct.mtk_jpeg_dec_param = type { i32 }
%struct.mtk_jpeg_src_buf = type { i32, %struct.mtk_jpeg_dec_param }
%struct.vb2_queue = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%d) buf_q id=%d, vb=%p\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@MTK_JPEG_BUF_FLAGS_LAST_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Got eos\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Header invalid.\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@MTK_JPEG_INIT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@MTK_JPEG_SOURCE_CHANGE = common dso_local global i64 0, align 8
@MTK_JPEG_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @mtk_jpeg_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  %4 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %5 = alloca %struct.mtk_jpeg_dev*, align 8
  %6 = alloca %struct.mtk_jpeg_src_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %11)
  store %struct.mtk_jpeg_ctx* %12, %struct.mtk_jpeg_ctx** %3, align 8
  %13 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %13, i32 0, i32 2
  %15 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %14, align 8
  store %struct.mtk_jpeg_dev* %15, %struct.mtk_jpeg_dev** %5, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %17, i32 0, i32 0
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %28 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 2, i32 %16, i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, %struct.vb2_buffer* %27)
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %102

37:                                               ; preds = %1
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %39 = call %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.vb2_buffer* %38)
  store %struct.mtk_jpeg_src_buf* %39, %struct.mtk_jpeg_src_buf** %6, align 8
  %40 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %40, i32 0, i32 1
  store %struct.mtk_jpeg_dec_param* %41, %struct.mtk_jpeg_dec_param** %4, align 8
  %42 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %43 = call i32 @memset(%struct.mtk_jpeg_dec_param* %42, i32 0, i32 4)
  %44 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %6, align 8
  %45 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MTK_JPEG_BUF_FLAGS_LAST_FRAME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load i32, i32* @debug, align 4
  %52 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %52, i32 0, i32 0
  %54 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %51, i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %102

55:                                               ; preds = %37
  %56 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %57 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %58 = call i64 @vb2_plane_vaddr(%struct.vb2_buffer* %57, i32 0)
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %61 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %60, i32 0)
  %62 = call i32 @mtk_jpeg_parse(%struct.mtk_jpeg_dec_param* %56, i32* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %55
  %66 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %5, align 8
  %67 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %66, i32 0, i32 0
  %68 = call i32 @v4l2_err(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %70 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %71 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %69, i32 %70)
  br label %110

72:                                               ; preds = %55
  %73 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MTK_JPEG_INIT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %84 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %82, i32 %83)
  store %struct.vb2_queue* %84, %struct.vb2_queue** %8, align 8
  %85 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %86 = call i32 @mtk_jpeg_queue_src_chg_event(%struct.mtk_jpeg_ctx* %85)
  %87 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %88 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %89 = call i32 @mtk_jpeg_set_queue_data(%struct.mtk_jpeg_ctx* %87, %struct.mtk_jpeg_dec_param* %88)
  %90 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %91 = call i64 @vb2_is_streaming(%struct.vb2_queue* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i64, i64* @MTK_JPEG_SOURCE_CHANGE, align 8
  br label %97

95:                                               ; preds = %78
  %96 = load i64, i64* @MTK_JPEG_RUNNING, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %72
  br label %102

102:                                              ; preds = %101, %50, %36
  %103 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %108 = call i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer* %107)
  %109 = call i32 @v4l2_m2m_buf_queue(i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %102, %65
  ret void
}

declare dso_local %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.vb2_buffer*) #1

declare dso_local i32 @memset(%struct.mtk_jpeg_dec_param*, i32, i32) #1

declare dso_local i32 @mtk_jpeg_parse(%struct.mtk_jpeg_dec_param*, i32*, i32) #1

declare dso_local i64 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @mtk_jpeg_queue_src_chg_event(%struct.mtk_jpeg_ctx*) #1

declare dso_local i32 @mtk_jpeg_set_queue_data(%struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_dec_param*) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i32, i32) #1

declare dso_local i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
