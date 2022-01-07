; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_g_fmt_vid_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_g_fmt_vid_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.v4l2_plane_pix_format*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_plane_pix_format = type { i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.mtk_jpeg_q_data = type { i32*, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mtk_jpeg_ctx = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.mtk_jpeg_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(%d) g_fmt:%c%c%c%c wxh:%ux%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"plane[%d] bpl=%u, size=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @mtk_jpeg_g_fmt_vid_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_g_fmt_vid_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca %struct.mtk_jpeg_q_data*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca %struct.mtk_jpeg_ctx*, align 8
  %12 = alloca %struct.mtk_jpeg_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_plane_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  store %struct.mtk_jpeg_q_data* null, %struct.mtk_jpeg_q_data** %9, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %17, %struct.v4l2_pix_format_mplane** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8* %18)
  store %struct.mtk_jpeg_ctx* %19, %struct.mtk_jpeg_ctx** %11, align 8
  %20 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %21 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %20, i32 0, i32 5
  %22 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %21, align 8
  store %struct.mtk_jpeg_dev* %22, %struct.mtk_jpeg_dev** %12, align 8
  %23 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %26, i32 %29)
  store %struct.vb2_queue* %30, %struct.vb2_queue** %8, align 8
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %32 = icmp ne %struct.vb2_queue* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %175

36:                                               ; preds = %3
  %37 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx* %37, i32 %40)
  store %struct.mtk_jpeg_q_data* %41, %struct.mtk_jpeg_q_data** %9, align 8
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %47 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %52 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %60 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %67 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %74 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %79 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %84 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %11, align 8
  %89 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @debug, align 4
  %94 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %12, align 8
  %95 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %94, i32 0, i32 0
  %96 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 255
  %103 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 24
  %117 = and i32 %116, 255
  %118 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i32, i32*, i8*, i32, i32, i32, ...) @v4l2_dbg(i32 1, i32 %93, i32* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102, i32 %107, i32 %112, i32 %117, i32 %120, i32 %123)
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %171, %36
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %125
  %132 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %132, i32 0, i32 2
  %134 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %134, i64 %136
  store %struct.v4l2_plane_pix_format* %137, %struct.v4l2_plane_pix_format** %14, align 8
  %138 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %139 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %146 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %9, align 8
  %148 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %155 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %157 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memset(i32 %158, i32 0, i32 4)
  %160 = load i32, i32* @debug, align 4
  %161 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %12, align 8
  %162 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %165 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %168 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i32, i32*, i8*, i32, i32, i32, ...) @v4l2_dbg(i32 1, i32 %160, i32* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %131
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %125

174:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %33
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
