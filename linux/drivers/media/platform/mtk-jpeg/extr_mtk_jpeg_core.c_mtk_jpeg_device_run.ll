; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { %struct.TYPE_6__, i32, %struct.mtk_jpeg_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_jpeg_src_buf = type { i32, i32 }
%struct.mtk_jpeg_bs = type { i32 }
%struct.mtk_jpeg_fb = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@MTK_JPEG_BUF_FLAGS_LAST_FRAME = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@MTK_JPEG_SOURCE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mtk_jpeg_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  %4 = alloca %struct.mtk_jpeg_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mtk_jpeg_src_buf*, align 8
  %10 = alloca %struct.mtk_jpeg_bs, align 4
  %11 = alloca %struct.mtk_jpeg_fb, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.mtk_jpeg_ctx*
  store %struct.mtk_jpeg_ctx* %14, %struct.mtk_jpeg_ctx** %3, align 8
  %15 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %15, i32 0, i32 2
  %17 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %16, align 8
  store %struct.mtk_jpeg_dev* %17, %struct.mtk_jpeg_dev** %4, align 8
  %18 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %22)
  store %struct.vb2_v4l2_buffer* %23, %struct.vb2_v4l2_buffer** %5, align 8
  %24 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %27)
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %6, align 8
  %29 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %29, i32 0, i32 0
  %31 = call %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.TYPE_7__* %30)
  store %struct.mtk_jpeg_src_buf* %31, %struct.mtk_jpeg_src_buf** %9, align 8
  %32 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %9, align 8
  %33 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MTK_JPEG_BUF_FLAGS_LAST_FRAME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @vb2_set_plane_payload(%struct.TYPE_7__* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %55, i32* %7, align 4
  br label %112

56:                                               ; preds = %1
  %57 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %58 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %9, align 8
  %59 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %58, i32 0, i32 1
  %60 = call i64 @mtk_jpeg_check_resolution_change(%struct.mtk_jpeg_ctx* %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %64 = call i32 @mtk_jpeg_queue_src_chg_event(%struct.mtk_jpeg_ctx* %63)
  %65 = load i32, i32* @MTK_JPEG_SOURCE_CHANGE, align 4
  %66 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @v4l2_m2m_job_finish(i32 %70, i32 %74)
  br label %137

76:                                               ; preds = %56
  %77 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %78 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %79 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %78, i32 0, i32 0
  %80 = call i32 @mtk_jpeg_set_dec_src(%struct.mtk_jpeg_ctx* %77, %struct.TYPE_7__* %79, %struct.mtk_jpeg_bs* %10)
  %81 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %82 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %9, align 8
  %83 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %82, i32 0, i32 1
  %84 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %84, i32 0, i32 0
  %86 = call i64 @mtk_jpeg_set_dec_dst(%struct.mtk_jpeg_ctx* %81, i32* %83, %struct.TYPE_7__* %85, %struct.mtk_jpeg_fb* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %112

89:                                               ; preds = %76
  %90 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mtk_jpeg_dec_reset(i32 %96)
  %98 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %99 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %9, align 8
  %102 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %101, i32 0, i32 1
  %103 = call i32 @mtk_jpeg_dec_set_config(i32 %100, i32* %102, %struct.mtk_jpeg_bs* %10, %struct.mtk_jpeg_fb* %11)
  %104 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mtk_jpeg_dec_start(i32 %106)
  %108 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %137

112:                                              ; preds = %88, %54
  %113 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @v4l2_m2m_src_buf_remove(i32 %116)
  %118 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @v4l2_m2m_dst_buf_remove(i32 %121)
  %123 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %123, i32 %124)
  %126 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %126, i32 %127)
  %129 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %130 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @v4l2_m2m_job_finish(i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %112, %89, %62
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.TYPE_7__*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @mtk_jpeg_check_resolution_change(%struct.mtk_jpeg_ctx*, i32*) #1

declare dso_local i32 @mtk_jpeg_queue_src_chg_event(%struct.mtk_jpeg_ctx*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

declare dso_local i32 @mtk_jpeg_set_dec_src(%struct.mtk_jpeg_ctx*, %struct.TYPE_7__*, %struct.mtk_jpeg_bs*) #1

declare dso_local i64 @mtk_jpeg_set_dec_dst(%struct.mtk_jpeg_ctx*, i32*, %struct.TYPE_7__*, %struct.mtk_jpeg_fb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_jpeg_dec_reset(i32) #1

declare dso_local i32 @mtk_jpeg_dec_set_config(i32, i32*, %struct.mtk_jpeg_bs*, %struct.mtk_jpeg_fb*) #1

declare dso_local i32 @mtk_jpeg_dec_start(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
