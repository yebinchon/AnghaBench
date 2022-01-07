; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_buffer = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_queue = type { i64 }
%struct.vb2_buffer = type { i32 }
%struct.mtk_jpeg_src_buf = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"buffer index out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTK_JPEG_BUF_FLAGS_LAST_FRAME = common dso_local global i32 0, align 4
@MTK_JPEG_BUF_FLAGS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @mtk_jpeg_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.mtk_jpeg_ctx*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.vb2_buffer*, align 8
  %12 = alloca %struct.mtk_jpeg_src_buf*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %14, align 8
  store %struct.v4l2_fh* %15, %struct.v4l2_fh** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8* %16)
  store %struct.mtk_jpeg_ctx* %17, %struct.mtk_jpeg_ctx** %9, align 8
  %18 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %27, i32 %30)
  store %struct.vb2_queue* %31, %struct.vb2_queue** %10, align 8
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %79

48:                                               ; preds = %24
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue* %49, i64 %52)
  store %struct.vb2_buffer* %53, %struct.vb2_buffer** %11, align 8
  %54 = load %struct.vb2_buffer*, %struct.vb2_buffer** %11, align 8
  %55 = call %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.vb2_buffer* %54)
  store %struct.mtk_jpeg_src_buf* %55, %struct.mtk_jpeg_src_buf** %12, align 8
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @MTK_JPEG_BUF_FLAGS_LAST_FRAME, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* @MTK_JPEG_BUF_FLAGS_INIT, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.mtk_jpeg_src_buf*, %struct.mtk_jpeg_src_buf** %12, align 8
  %71 = getelementptr inbounds %struct.mtk_jpeg_src_buf, %struct.mtk_jpeg_src_buf* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %23
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %78 = call i32 @v4l2_m2m_qbuf(%struct.file* %73, i32 %76, %struct.v4l2_buffer* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %39
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue*, i64) #1

declare dso_local %struct.mtk_jpeg_src_buf* @mtk_jpeg_vb2_to_srcbuf(%struct.vb2_buffer*) #1

declare dso_local i32 @v4l2_m2m_qbuf(%struct.file*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
