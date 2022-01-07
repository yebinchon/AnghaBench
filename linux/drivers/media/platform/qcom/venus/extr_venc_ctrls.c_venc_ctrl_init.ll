; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@venc_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_5 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_HEVC_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_HEVC_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEVC_LEVEL_6_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEVC_LEVEL_1 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MAIN = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_5_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_1_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE = common dso_local global i32 0, align 4
@AT_SLICE_BOUNDARY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_HEADER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VP8_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_VP8_PROFILE_3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_VP8_PROFILE_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@BITRATE_MIN = common dso_local global i32 0, align 4
@BITRATE_MAX = common dso_local global i32 0, align 4
@BITRATE_STEP = common dso_local global i32 0, align 4
@BITRATE_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_PEAK = common dso_local global i32 0, align 4
@BITRATE_DEFAULT_PEAK = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_P_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_B_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MIN_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MAX_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_BYTES = common dso_local global i32 0, align 4
@SLICE_BYTE_SIZE_MIN = common dso_local global i32 0, align 4
@SLICE_BYTE_SIZE_MAX = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB = common dso_local global i32 0, align 4
@SLICE_MB_SIZE_MAX = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_CYCLIC_INTRA_REFRESH_MB = common dso_local global i32 0, align 4
@INTRA_REFRESH_MBS_MAX = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VPX_MIN_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VPX_MAX_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_B_FRAMES = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_I_PERIOD = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venc_ctrl_init(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 0
  %7 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %6, i32 30)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %231

12:                                               ; preds = %1
  %13 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 0
  %15 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %16 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %17 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %24 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %14, i32* @venc_ctrl_ops, i32 %15, i32 %16, i32 %22, i32 %23)
  %25 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 0
  %27 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE, align 4
  %28 = load i32, i32* @V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC, align 4
  %29 = load i32, i32* @V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC, align 4
  %30 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %26, i32* @venc_ctrl_ops, i32 %27, i32 %28, i32 0, i32 %29)
  %31 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %32 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %31, i32 0, i32 0
  %33 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE, align 4
  %34 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY, align 4
  %35 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %42 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %32, i32* @venc_ctrl_ops, i32 %33, i32 %34, i32 %40, i32 %41)
  %43 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %44 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %43, i32 0, i32 0
  %45 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL, align 4
  %46 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %47 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_0, align 4
  %48 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %44, i32* @venc_ctrl_ops, i32 %45, i32 %46, i32 0, i32 %47)
  %49 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %50 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %49, i32 0, i32 0
  %51 = load i32, i32* @V4L2_CID_MPEG_VIDEO_HEVC_PROFILE, align 4
  %52 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10, align 4
  %53 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN, align 4
  %63 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %50, i32* @venc_ctrl_ops, i32 %51, i32 %52, i32 %61, i32 %62)
  %64 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %65 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %64, i32 0, i32 0
  %66 = load i32, i32* @V4L2_CID_MPEG_VIDEO_HEVC_LEVEL, align 4
  %67 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_LEVEL_6_2, align 4
  %68 = load i32, i32* @V4L2_MPEG_VIDEO_HEVC_LEVEL_1, align 4
  %69 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %65, i32* @venc_ctrl_ops, i32 %66, i32 %67, i32 0, i32 %68)
  %70 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %71 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %70, i32 0, i32 0
  %72 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %73 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH, align 4
  %74 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MAIN, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %83 = shl i32 1, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  %88 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH, align 4
  %89 = shl i32 1, %88
  %90 = or i32 %87, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %93 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %71, i32* @venc_ctrl_ops, i32 %72, i32 %73, i32 %91, i32 %92)
  %94 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %95 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %94, i32 0, i32 0
  %96 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %97 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %98 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_1_0, align 4
  %99 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %95, i32* @venc_ctrl_ops, i32 %96, i32 %97, i32 0, i32 %98)
  %100 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %101 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %100, i32 0, i32 0
  %102 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE, align 4
  %103 = load i32, i32* @AT_SLICE_BOUNDARY, align 4
  %104 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED, align 4
  %105 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %101, i32* @venc_ctrl_ops, i32 %102, i32 %103, i32 0, i32 %104)
  %106 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %107 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %106, i32 0, i32 0
  %108 = load i32, i32* @V4L2_CID_MPEG_VIDEO_HEADER_MODE, align 4
  %109 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME, align 4
  %110 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE, align 4
  %113 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %107, i32* @venc_ctrl_ops, i32 %108, i32 %109, i32 %111, i32 %112)
  %114 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %115 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %114, i32 0, i32 0
  %116 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE, align 4
  %117 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES, align 4
  %118 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE, align 4
  %119 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %115, i32* @venc_ctrl_ops, i32 %116, i32 %117, i32 0, i32 %118)
  %120 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %121 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %120, i32 0, i32 0
  %122 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VP8_PROFILE, align 4
  %123 = load i32, i32* @V4L2_MPEG_VIDEO_VP8_PROFILE_3, align 4
  %124 = load i32, i32* @V4L2_MPEG_VIDEO_VP8_PROFILE_0, align 4
  %125 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__* %121, i32* @venc_ctrl_ops, i32 %122, i32 %123, i32 0, i32 %124)
  %126 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %127 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %126, i32 0, i32 0
  %128 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %129 = load i32, i32* @BITRATE_MIN, align 4
  %130 = load i32, i32* @BITRATE_MAX, align 4
  %131 = load i32, i32* @BITRATE_STEP, align 4
  %132 = load i32, i32* @BITRATE_DEFAULT, align 4
  %133 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %127, i32* @venc_ctrl_ops, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %135 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %134, i32 0, i32 0
  %136 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_PEAK, align 4
  %137 = load i32, i32* @BITRATE_MIN, align 4
  %138 = load i32, i32* @BITRATE_MAX, align 4
  %139 = load i32, i32* @BITRATE_STEP, align 4
  %140 = load i32, i32* @BITRATE_DEFAULT_PEAK, align 4
  %141 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %135, i32* @venc_ctrl_ops, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %143 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %142, i32 0, i32 0
  %144 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP, align 4
  %145 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %143, i32* @venc_ctrl_ops, i32 %144, i32 1, i32 51, i32 1, i32 26)
  %146 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %147 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %146, i32 0, i32 0
  %148 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_P_FRAME_QP, align 4
  %149 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %147, i32* @venc_ctrl_ops, i32 %148, i32 1, i32 51, i32 1, i32 28)
  %150 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %151 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %150, i32 0, i32 0
  %152 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_B_FRAME_QP, align 4
  %153 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %151, i32* @venc_ctrl_ops, i32 %152, i32 1, i32 51, i32 1, i32 30)
  %154 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %155 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %154, i32 0, i32 0
  %156 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MIN_QP, align 4
  %157 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %155, i32* @venc_ctrl_ops, i32 %156, i32 1, i32 51, i32 1, i32 1)
  %158 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %159 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %158, i32 0, i32 0
  %160 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MAX_QP, align 4
  %161 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %159, i32* @venc_ctrl_ops, i32 %160, i32 1, i32 51, i32 1, i32 51)
  %162 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %163 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %162, i32 0, i32 0
  %164 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_BYTES, align 4
  %165 = load i32, i32* @SLICE_BYTE_SIZE_MIN, align 4
  %166 = load i32, i32* @SLICE_BYTE_SIZE_MAX, align 4
  %167 = load i32, i32* @SLICE_BYTE_SIZE_MIN, align 4
  %168 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %163, i32* @venc_ctrl_ops, i32 %164, i32 %165, i32 %166, i32 1, i32 %167)
  %169 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %170 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %169, i32 0, i32 0
  %171 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB, align 4
  %172 = load i32, i32* @SLICE_MB_SIZE_MAX, align 4
  %173 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %170, i32* @venc_ctrl_ops, i32 %171, i32 1, i32 %172, i32 1, i32 1)
  %174 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %175 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %174, i32 0, i32 0
  %176 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA, align 4
  %177 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %175, i32* @venc_ctrl_ops, i32 %176, i32 -6, i32 6, i32 1, i32 0)
  %178 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %179 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %178, i32 0, i32 0
  %180 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA, align 4
  %181 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %179, i32* @venc_ctrl_ops, i32 %180, i32 -6, i32 6, i32 1, i32 0)
  %182 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %183 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %182, i32 0, i32 0
  %184 = load i32, i32* @V4L2_CID_MPEG_VIDEO_CYCLIC_INTRA_REFRESH_MB, align 4
  %185 = load i32, i32* @INTRA_REFRESH_MBS_MAX, align 4
  %186 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %183, i32* @venc_ctrl_ops, i32 %184, i32 0, i32 %185, i32 1, i32 0)
  %187 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %188 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %187, i32 0, i32 0
  %189 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %190 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %188, i32* @venc_ctrl_ops, i32 %189, i32 0, i32 65535, i32 1, i32 30)
  %191 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %192 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %191, i32 0, i32 0
  %193 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VPX_MIN_QP, align 4
  %194 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %192, i32* @venc_ctrl_ops, i32 %193, i32 1, i32 128, i32 1, i32 1)
  %195 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %196 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %195, i32 0, i32 0
  %197 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VPX_MAX_QP, align 4
  %198 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %196, i32* @venc_ctrl_ops, i32 %197, i32 1, i32 128, i32 1, i32 128)
  %199 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %200 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %199, i32 0, i32 0
  %201 = load i32, i32* @V4L2_CID_MPEG_VIDEO_B_FRAMES, align 4
  %202 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %200, i32* @venc_ctrl_ops, i32 %201, i32 0, i32 4, i32 1, i32 0)
  %203 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %204 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %203, i32 0, i32 0
  %205 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, align 4
  %206 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %204, i32* @venc_ctrl_ops, i32 %205, i32 0, i32 65535, i32 1, i32 0)
  %207 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %208 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %207, i32 0, i32 0
  %209 = load i32, i32* @V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME, align 4
  %210 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %208, i32* @venc_ctrl_ops, i32 %209, i32 0, i32 0, i32 0, i32 0)
  %211 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %212 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %12
  br label %226

218:                                              ; preds = %12
  %219 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %220 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %219, i32 0, i32 0
  %221 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__* %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %226

225:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %231

226:                                              ; preds = %224, %217
  %227 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %228 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %227, i32 0, i32 0
  %229 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %228)
  %230 = load i32, i32* %4, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %226, %225, %10
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_6__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
