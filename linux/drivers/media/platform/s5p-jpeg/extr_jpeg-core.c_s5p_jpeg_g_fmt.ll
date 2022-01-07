; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i64, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.s5p_jpeg_q_data = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.s5p_jpeg_ctx = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @s5p_jpeg_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca %struct.s5p_jpeg_q_data*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca %struct.s5p_jpeg_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  store %struct.s5p_jpeg_q_data* null, %struct.s5p_jpeg_q_data** %9, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.s5p_jpeg_ctx* @fh_to_ctx(i8* %16)
  store %struct.s5p_jpeg_ctx* %17, %struct.s5p_jpeg_ctx** %11, align 8
  %18 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %19 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %21, i32 %24)
  store %struct.vb2_queue* %25, %struct.vb2_queue** %8, align 8
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %27 = icmp ne %struct.vb2_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %119

31:                                               ; preds = %3
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %119

51:                                               ; preds = %43, %37, %31
  %52 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %11, align 8
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.s5p_jpeg_q_data* @get_q_data(%struct.s5p_jpeg_ctx* %52, i32 %55)
  store %struct.s5p_jpeg_q_data* %56, %struct.s5p_jpeg_q_data** %9, align 8
  %57 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %58 = icmp eq %struct.s5p_jpeg_q_data* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %62 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %67 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %75 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  %83 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %84 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %51
  %91 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %92 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %12, align 4
  %94 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %95 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %103 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %101, %106
  %108 = ashr i32 %107, 3
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %100, %90
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %51
  %114 = load %struct.s5p_jpeg_q_data*, %struct.s5p_jpeg_q_data** %9, align 8
  %115 = getelementptr inbounds %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %113, %48, %28
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.s5p_jpeg_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.s5p_jpeg_q_data* @get_q_data(%struct.s5p_jpeg_ctx*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
