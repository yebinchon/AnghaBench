; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.v4l2_plane_pix_format*, i32, i32, i32 }
%struct.v4l2_plane_pix_format = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_vcodec_ctx = type { i64, i32 }
%struct.vb2_queue = type { i32 }
%struct.mtk_q_data = type { %struct.mtk_video_fmt*, i32*, i32*, i32, i32, i32 }
%struct.mtk_video_fmt = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fail to get vq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"queue busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"fail to get q data\00", align 1
@mtk_video_formats = common dso_local global %struct.TYPE_8__* null, align 8
@CAP_FMT_IDX = common dso_local global i64 0, align 8
@MTK_STATE_FREE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"venc_if_init failed=%d, codec type=%x\00", align 1
@MTK_STATE_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_venc_s_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_venc_s_fmt_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
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
  %14 = alloca %struct.v4l2_plane_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %15)
  store %struct.mtk_vcodec_ctx* %16, %struct.mtk_vcodec_ctx** %8, align 8
  %17 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %19, i32 %22)
  store %struct.vb2_queue* %23, %struct.vb2_queue** %9, align 8
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %25 = icmp ne %struct.vb2_queue* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %171

30:                                               ; preds = %3
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %32 = call i64 @vb2_is_busy(%struct.vb2_queue* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %171

38:                                               ; preds = %30
  %39 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx* %39, i32 %42)
  store %struct.mtk_q_data* %43, %struct.mtk_q_data** %10, align 8
  %44 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %45 = icmp ne %struct.mtk_q_data* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %171

50:                                               ; preds = %38
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %51)
  store %struct.mtk_video_fmt* %52, %struct.mtk_video_fmt** %13, align 8
  %53 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %13, align 8
  %54 = icmp ne %struct.mtk_video_fmt* %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mtk_video_formats, align 8
  %57 = load i64, i64* @CAP_FMT_IDX, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %65)
  store %struct.mtk_video_fmt* %66, %struct.mtk_video_fmt** %13, align 8
  br label %67

67:                                               ; preds = %55, %50
  %68 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %13, align 8
  %69 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %70 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %69, i32 0, i32 0
  store %struct.mtk_video_fmt* %68, %struct.mtk_video_fmt** %70, align 8
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %72 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %73 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %72, i32 0, i32 0
  %74 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %73, align 8
  %75 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %71, %struct.mtk_video_fmt* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %171

80:                                               ; preds = %67
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %87 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %94 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %101 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %137, %80
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %102
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %115, i64 %117
  store %struct.v4l2_plane_pix_format* %118, %struct.v4l2_plane_pix_format** %14, align 8
  %119 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %120 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %123 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %14, align 8
  %129 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %132 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %110
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %102

140:                                              ; preds = %102
  %141 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %142 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MTK_STATE_FREE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %140
  %147 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %148 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %149 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %148, i32 0, i32 0
  %150 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %149, align 8
  %151 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @venc_if_init(%struct.mtk_vcodec_ctx* %147, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %146
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.mtk_q_data*, %struct.mtk_q_data** %10, align 8
  %159 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %158, i32 0, i32 0
  %160 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %159, align 8
  %161 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %162)
  %164 = load i32, i32* @EBUSY, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %171

166:                                              ; preds = %146
  %167 = load i64, i64* @MTK_STATE_INIT, align 8
  %168 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %169 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %140
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %156, %78, %46, %34, %26
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, ...) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.mtk_video_fmt*) #1

declare dso_local i32 @venc_if_init(%struct.mtk_vcodec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
