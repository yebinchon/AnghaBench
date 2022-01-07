; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_dec_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_dec_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dev = type { i32, i32, i32, i32 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_jpeg_src_buf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Context is NULL\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_UNDERFLOW = common dso_local global i64 0, align 8
@MTK_JPEG_DEC_RESULT_EOF_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"decode failed\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_jpeg_dec_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_dec_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_jpeg_dev*, align 8
  %7 = alloca %struct.mtk_jpeg_ctx*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca %struct.mtk_jpeg_src_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mtk_jpeg_dev*
  store %struct.mtk_jpeg_dev* %16, %struct.mtk_jpeg_dev** %6, align 8
  %17 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mtk_jpeg_dec_get_int_status(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i64 @mtk_jpeg_dec_enum_result(i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mtk_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32 %26)
  store %struct.mtk_jpeg_ctx* %27, %struct.mtk_jpeg_ctx** %7, align 8
  %28 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %29 = icmp ne %struct.mtk_jpeg_ctx* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %31, i32 0, i32 3
  %33 = call i32 @v4l2_err(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %2
  %36 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %39)
  store %struct.vb2_v4l2_buffer* %40, %struct.vb2_v4l2_buffer** %8, align 8
  %41 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %44)
  store %struct.vb2_v4l2_buffer* %45, %struct.vb2_v4l2_buffer** %9, align 8
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 0
  %48 = call %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.TYPE_7__* %47)
  store %struct.mtk_jpeg_src_buf* %48, %struct.mtk_jpeg_src_buf** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @MTK_JPEG_DEC_RESULT_UNDERFLOW, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mtk_jpeg_dec_reset(i32 %55)
  br label %57

57:                                               ; preds = %52, %35
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @MTK_JPEG_DEC_RESULT_EOF_DONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %92

66:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %10, align 8
  %79 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @vb2_set_plane_payload(%struct.TYPE_7__* %76, i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %61
  %93 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %93, i32 %94)
  %96 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %96, i32 %97)
  %99 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %100 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %103 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @v4l2_m2m_job_finish(i32 %101, i32 %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %92, %30
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @mtk_jpeg_dec_get_int_status(i32) #1

declare dso_local i64 @mtk_jpeg_dec_enum_result(i64) #1

declare dso_local %struct.mtk_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.TYPE_7__*) #1

declare dso_local i32 @mtk_jpeg_dec_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
