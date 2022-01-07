; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.mtk_video_fmt = type { i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MTK_VDEC_MIN_H = common dso_local global i32 0, align 4
@MTK_VDEC_MAX_H = common dso_local global i32 0, align 4
@MTK_VDEC_MIN_W = common dso_local global i32 0, align 4
@MTK_VDEC_MAX_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"before resize width=%d, height=%d, after resize width=%d, height=%d, sizeimage=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_format*, %struct.mtk_video_fmt*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.v4l2_format* %0, %struct.mtk_video_fmt* %1) #0 {
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.mtk_video_fmt*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store %struct.mtk_video_fmt* %1, %struct.mtk_video_fmt** %4, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %11, %struct.v4l2_pix_format_mplane** %5, align 8
  %12 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %13 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %173

28:                                               ; preds = %2
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %172

34:                                               ; preds = %28
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MTK_VDEC_MIN_H, align 4
  %39 = load i32, i32* @MTK_VDEC_MAX_H, align 4
  %40 = call i8* @clamp(i32 %37, i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MTK_VDEC_MIN_W, align 4
  %48 = load i32, i32* @MTK_VDEC_MAX_W, align 4
  %49 = call i8* @clamp(i32 %46, i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 2
  %61 = load i32, i32* @MTK_VDEC_MIN_W, align 4
  %62 = load i32, i32* @MTK_VDEC_MAX_W, align 4
  %63 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %63, i32 0, i32 1
  %65 = load i32, i32* @MTK_VDEC_MIN_H, align 4
  %66 = load i32, i32* @MTK_VDEC_MAX_H, align 4
  %67 = call i32 @v4l_bound_align_image(i32* %60, i32 %61, i32 %62, i32 6, i32* %64, i32 %65, i32 %66, i32 6, i32 9)
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %34
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 64
  %78 = load i32, i32* @MTK_VDEC_MAX_W, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 64
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %73, %34
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 64
  %96 = load i32, i32* @MTK_VDEC_MAX_H, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 64
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %91, %85
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = call i32 @mtk_v4l2_debug(i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105, i32 %108, i32 %111, i32 %118)
  %120 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %4, align 8
  %121 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %133 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %132, i32 0, i32 5
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %131, i32* %136, align 4
  %137 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 8
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %171

149:                                              ; preds = %103
  %150 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %154 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = sdiv i32 %156, 2
  %158 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %158, i32 0, i32 5
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 %157, i32* %162, align 4
  %163 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %166, i32 0, i32 5
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 %165, i32* %170, align 8
  br label %171

171:                                              ; preds = %149, %103
  br label %172

172:                                              ; preds = %171, %28
  br label %173

173:                                              ; preds = %172, %20
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %191, %173
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %174
  %181 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %181, i32 0, i32 5
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = call i32 @memset(i32* %189, i32 0, i32 8)
  br label %191

191:                                              ; preds = %180
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %174

194:                                              ; preds = %174
  %195 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %196 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  %197 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %198 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %197, i32 0, i32 3
  %199 = call i32 @memset(i32* %198, i32 0, i32 4)
  ret i32 0
}

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
