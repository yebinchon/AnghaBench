; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_fmt_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_fmt_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane, %struct.TYPE_4__ }
%struct.v4l2_pix_format_mplane = type { i32, %struct.v4l2_plane_pix_format*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.v4l2_plane_pix_format = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_vcodec_ctx = type { i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.mtk_q_data = type { i32*, i32*, i32, i8*, i8*, %struct.mtk_video_fmt*, i8*, i8* }
%struct.mtk_video_fmt = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fail to get vq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"queue busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"fail to get q data\00", align 1
@mtk_video_formats = common dso_local global %struct.TYPE_6__* null, align 8
@OUT_FMT_IDX = common dso_local global i64 0, align 8
@MTK_VENC_MIN_H = common dso_local global i32 0, align 4
@MTK_VENC_MAX_H = common dso_local global i32 0, align 4
@MTK_VENC_MIN_W = common dso_local global i32 0, align 4
@MTK_VENC_MAX_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_venc_s_fmt_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_venc_s_fmt_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.mtk_vcodec_ctx*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.mtk_q_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mtk_video_fmt*, align 8
  %14 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %15 = alloca %struct.v4l2_plane_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %16)
  store %struct.mtk_vcodec_ctx* %17, %struct.mtk_vcodec_ctx** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %14, align 8
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %23, i32 %26)
  store %struct.vb2_queue* %27, %struct.vb2_queue** %9, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %29 = icmp ne %struct.vb2_queue* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %203

34:                                               ; preds = %3
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %36 = call i64 @vb2_is_busy(%struct.vb2_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %203

42:                                               ; preds = %34
  %43 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx* %43, i32 %46)
  store %struct.mtk_q_data* %47, %struct.mtk_q_data** %10, align 8
  %48 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %49 = icmp ne %struct.mtk_q_data* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %203

54:                                               ; preds = %42
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %55)
  store %struct.mtk_video_fmt* %56, %struct.mtk_video_fmt** %13, align 8
  %57 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %13, align 8
  %58 = icmp ne %struct.mtk_video_fmt* %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mtk_video_formats, align 8
  %61 = load i64, i64* @OUT_FMT_IDX, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %69)
  store %struct.mtk_video_fmt* %70, %struct.mtk_video_fmt** %13, align 8
  br label %71

71:                                               ; preds = %59, %54
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %14, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 7
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @MTK_VENC_MIN_H, align 4
  %76 = load i32, i32* @MTK_VENC_MAX_H, align 4
  %77 = call i8* @clamp(i8* %74, i32 %75, i32 %76)
  %78 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %14, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %14, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @MTK_VENC_MIN_W, align 4
  %84 = load i32, i32* @MTK_VENC_MAX_W, align 4
  %85 = call i8* @clamp(i8* %82, i32 %83, i32 %84)
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %14, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %90, i32 0, i32 8
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %94 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 7
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %101 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %13, align 8
  %103 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %104 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %103, i32 0, i32 5
  store %struct.mtk_video_fmt* %102, %struct.mtk_video_fmt** %104, align 8
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %106 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %107 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %106, i32 0, i32 5
  %108 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %107, align 8
  %109 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %105, %struct.mtk_video_fmt* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %71
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %203

114:                                              ; preds = %71
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %117, i32 0, i32 8
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %121 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 7
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %128 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %135 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %142 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %149 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %156 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %163 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %199, %114
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %165, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %164
  %173 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %175, i32 0, i32 1
  %177 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %177, i64 %179
  store %struct.v4l2_plane_pix_format* %180, %struct.v4l2_plane_pix_format** %15, align 8
  %181 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %15, align 8
  %182 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %185 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %15, align 8
  %191 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %194 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %172
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %164

202:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %112, %50, %38, %30
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format*) #1

declare dso_local i8* @clamp(i8*, i32, i32) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.mtk_video_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
