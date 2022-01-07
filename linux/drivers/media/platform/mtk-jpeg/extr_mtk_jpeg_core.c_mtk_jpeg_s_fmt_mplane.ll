; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_s_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_s_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.mtk_jpeg_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.mtk_jpeg_q_data = type { i32*, i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MTK_JPEG_FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@MTK_JPEG_FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"(%d) s_fmt:%c%c%c%c wxh:%ux%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"plane[%d] bpl=%u, size=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_ctx*, %struct.v4l2_format*)* @mtk_jpeg_s_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_s_fmt_mplane(%struct.mtk_jpeg_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_jpeg_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.mtk_jpeg_q_data*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.mtk_jpeg_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  store %struct.mtk_jpeg_q_data* null, %struct.mtk_jpeg_q_data** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %14, %struct.v4l2_pix_format_mplane** %8, align 8
  %15 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %15, i32 0, i32 5
  %17 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %16, align 8
  store %struct.mtk_jpeg_dev* %17, %struct.mtk_jpeg_dev** %9, align 8
  %18 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %21, i32 %24)
  store %struct.vb2_queue* %25, %struct.vb2_queue** %6, align 8
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %27 = icmp ne %struct.vb2_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %196

31:                                               ; preds = %2
  %32 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx* %32, i32 %35)
  store %struct.mtk_jpeg_q_data* %36, %struct.mtk_jpeg_q_data** %7, align 8
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %38 = call i64 @vb2_is_busy(%struct.vb2_queue* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %9, align 8
  %42 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %41, i32 0, i32 0
  %43 = call i32 @v4l2_err(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %196

46:                                               ; preds = %31
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @MTK_JPEG_FMT_TYPE_OUTPUT, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @MTK_JPEG_FMT_TYPE_CAPTURE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %10, align 4
  %58 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.TYPE_8__* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx* %58, i32 %61, i32 %62)
  %64 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %65 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %64, i32 0, i32 2
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %70 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %75 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @debug, align 4
  %97 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %9, align 8
  %98 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %97, i32 0, i32 0
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %103 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 255
  %108 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %109 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = and i32 %113, 255
  %115 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %116 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %123 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 24
  %128 = and i32 %127, 255
  %129 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %130 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %133 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i32, i32*, i8*, i32, i32, i32, ...) @v4l2_dbg(i32 1, i32 %96, i32* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %107, i32 %114, i32 %121, i32 %128, i32 %131, i32 %134)
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %192, %56
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %139 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %195

144:                                              ; preds = %136
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %154 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %168 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load i32, i32* @debug, align 4
  %174 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %9, align 8
  %175 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %174, i32 0, i32 0
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %178 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %185 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i32, i32*, i8*, i32, i32, i32, ...) @v4l2_dbg(i32 1, i32 %173, i32* %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %176, i32 %183, i32 %190)
  br label %192

192:                                              ; preds = %144
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %136

195:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %40, %28
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx*, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.TYPE_8__* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
