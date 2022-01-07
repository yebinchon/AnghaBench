; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_vdec_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_vdec_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mtk_vcodec_ctx = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.vb2_queue = type { i32 }
%struct.mtk_q_data = type { i32*, i32*, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"no vb2 queue for type=%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@MTK_STATE_HEADER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"[%d] type=%d state=%d Format information could not be read, not ready yet!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_vdec_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_vdec_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.mtk_vcodec_ctx*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.mtk_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %12)
  store %struct.mtk_vcodec_ctx* %13, %struct.mtk_vcodec_ctx** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %16, %struct.v4l2_pix_format_mplane** %9, align 8
  %17 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %19, i32 %22)
  store %struct.vb2_queue* %23, %struct.vb2_queue** %10, align 8
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %25 = icmp ne %struct.vb2_queue* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %322

33:                                               ; preds = %3
  %34 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx* %34, i32 %37)
  store %struct.mtk_q_data* %38, %struct.mtk_q_data** %11, align 8
  %39 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %194

67:                                               ; preds = %33
  %68 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MTK_STATE_HEADER, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %194

73:                                               ; preds = %67
  %74 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %81 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %91 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %95 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %99 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %97, i32* %101, align 4
  %102 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %107 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %115 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %117 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %121 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %123 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %131 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %136 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %141 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %140, i32 0, i32 2
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %148 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %153 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %155 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %160 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i32 %158, i32* %163, align 4
  %164 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %165 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %170 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %168, i32* %173, align 4
  %174 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %175 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %180 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store i32 %178, i32* %183, align 4
  %184 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %185 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %190 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store i32 %188, i32* %193, align 4
  br label %321

194:                                              ; preds = %67, %33
  %195 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %196 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %245

200:                                              ; preds = %194
  %201 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %202 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %205 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %207 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %210 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %212 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %217 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i32 %215, i32* %220, align 4
  %221 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %222 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %227 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store i32 %225, i32* %230, align 4
  %231 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %232 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %231, i32 0, i32 2
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %237 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 8
  %238 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %239 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %238, i32 0, i32 2
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %244 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  br label %320

245:                                              ; preds = %194
  %246 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %247 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %250 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  %251 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %252 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %255 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 8
  %256 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %257 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %256, i32 0, i32 2
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %262 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  %263 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %264 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %263, i32 0, i32 2
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %269 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  %270 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %271 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %276 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %275, i32 0, i32 0
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  store i32 %274, i32* %279, align 4
  %280 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %281 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %286 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %285, i32 0, i32 0
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  store i32 %284, i32* %289, align 4
  %290 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %291 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %296 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %295, i32 0, i32 0
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 1
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  store i32 %294, i32* %299, align 4
  %300 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %301 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %306 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 1
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  store i32 %304, i32* %309, align 4
  %310 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %311 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %314 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %317 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @mtk_v4l2_debug(i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %312, i32 %315, i64 %318)
  br label %320

320:                                              ; preds = %245, %200
  br label %321

321:                                              ; preds = %320, %73
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %321, %26
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
