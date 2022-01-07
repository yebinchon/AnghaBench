; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_encode_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_encode_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CODA_DX6 = common dso_local global i64 0, align 8
@coda_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_P_FRAME_QP = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@V4L2_CID_MPEG_VIDEO_H264_MIN_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MAX_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_CONSTRAINED_INTRA_PREDICTION = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_CHROMA_QP_INDEX_OFFSET = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_3_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_2_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_3_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_3_2 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_P_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_5 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_BYTES = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_HEADER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_CYCLIC_INTRA_REFRESH_MB = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VBV_DELAY = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VBV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_encode_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_encode_ctrls(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %4 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CODA_DX6, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 60, i32 99
  store i32 %14, i32* %3, align 4
  %15 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %18 = call i32 @v4l2_ctrl_new_std(i32* %16, i32* @coda_ctrl_ops, i32 %17, i32 0, i32 32767000, i32 1000, i32 0)
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @v4l2_ctrl_new_std(i32* %20, i32* @coda_ctrl_ops, i32 %21, i32 0, i32 %22, i32 1, i32 16)
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_I_FRAME_QP, align 4
  %27 = call i32 @v4l2_ctrl_new_std(i32* %25, i32* @coda_ctrl_ops, i32 %26, i32 0, i32 51, i32 1, i32 25)
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_P_FRAME_QP, align 4
  %31 = call i32 @v4l2_ctrl_new_std(i32* %29, i32* @coda_ctrl_ops, i32 %30, i32 0, i32 51, i32 1, i32 25)
  %32 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CODA_960, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MIN_QP, align 4
  %45 = call i32 @v4l2_ctrl_new_std(i32* %43, i32* @coda_ctrl_ops, i32 %44, i32 0, i32 51, i32 1, i32 12)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MAX_QP, align 4
  %50 = call i32 @v4l2_ctrl_new_std(i32* %48, i32* @coda_ctrl_ops, i32 %49, i32 0, i32 51, i32 1, i32 51)
  %51 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_ALPHA, align 4
  %54 = call i32 @v4l2_ctrl_new_std(i32* %52, i32* @coda_ctrl_ops, i32 %53, i32 -6, i32 6, i32 1, i32 0)
  %55 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_BETA, align 4
  %58 = call i32 @v4l2_ctrl_new_std(i32* %56, i32* @coda_ctrl_ops, i32 %57, i32 -6, i32 6, i32 1, i32 0)
  %59 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LOOP_FILTER_MODE, align 4
  %62 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_DISABLED_AT_SLICE_BOUNDARY, align 4
  %63 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LOOP_FILTER_MODE_ENABLED, align 4
  %64 = call i32 @v4l2_ctrl_new_std_menu(i32* %60, i32* @coda_ctrl_ops, i32 %61, i32 %62, i32 0, i32 %63)
  %65 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_CONSTRAINED_INTRA_PREDICTION, align 4
  %68 = call i32 @v4l2_ctrl_new_std(i32* %66, i32* @coda_ctrl_ops, i32 %67, i32 0, i32 1, i32 1, i32 0)
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_CHROMA_QP_INDEX_OFFSET, align 4
  %72 = call i32 @v4l2_ctrl_new_std(i32* %70, i32* @coda_ctrl_ops, i32 %71, i32 -12, i32 12, i32 1, i32 0)
  %73 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %76 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %77 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %78 = call i32 @v4l2_ctrl_new_std_menu(i32* %74, i32* @coda_ctrl_ops, i32 %75, i32 %76, i32 0, i32 %77)
  %79 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CODA_HX4, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %46
  %89 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CODA_7541, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %88, %46
  %99 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %100 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %102 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_1, align 4
  %103 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_2_0, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_0, align 4
  %106 = shl i32 1, %105
  %107 = or i32 %104, %106
  %108 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_1, align 4
  %109 = shl i32 1, %108
  %110 = or i32 %107, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_1, align 4
  %113 = call i32 @v4l2_ctrl_new_std_menu(i32* %100, i32* @coda_ctrl_ops, i32 %101, i32 %102, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %98, %88
  %115 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CODA_960, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %114
  %125 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %126 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %128 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  %129 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_2_0, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_0, align 4
  %132 = shl i32 1, %131
  %133 = or i32 %130, %132
  %134 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_1, align 4
  %135 = shl i32 1, %134
  %136 = or i32 %133, %135
  %137 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_3_2, align 4
  %138 = shl i32 1, %137
  %139 = or i32 %136, %138
  %140 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  %141 = shl i32 1, %140
  %142 = or i32 %139, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  %145 = call i32 @v4l2_ctrl_new_std_menu(i32* %126, i32* @coda_ctrl_ops, i32 %127, i32 %128, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %124, %114
  %147 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %148 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %147, i32 0, i32 0
  %149 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP, align 4
  %150 = call i32 @v4l2_ctrl_new_std(i32* %148, i32* @coda_ctrl_ops, i32 %149, i32 1, i32 31, i32 1, i32 2)
  %151 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %152 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_P_FRAME_QP, align 4
  %154 = call i32 @v4l2_ctrl_new_std(i32* %152, i32* @coda_ctrl_ops, i32 %153, i32 1, i32 31, i32 1, i32 2)
  %155 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %156 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %155, i32 0, i32 0
  %157 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE, align 4
  %158 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %159 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %160 = call i32 @v4l2_ctrl_new_std_menu(i32* %156, i32* @coda_ctrl_ops, i32 %157, i32 %158, i32 0, i32 %159)
  %161 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %162 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CODA_HX4, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %190, label %170

170:                                              ; preds = %146
  %171 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %172 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CODA_7541, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %190, label %180

180:                                              ; preds = %170
  %181 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %182 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CODA_960, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %180, %170, %146
  %191 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %192 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %191, i32 0, i32 0
  %193 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL, align 4
  %194 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %195 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %196 = shl i32 1, %195
  %197 = xor i32 %196, -1
  %198 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %199 = call i32 @v4l2_ctrl_new_std_menu(i32* %192, i32* @coda_ctrl_ops, i32 %193, i32 %194, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %190, %180
  %201 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %202 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %201, i32 0, i32 0
  %203 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MODE, align 4
  %204 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES, align 4
  %205 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_SINGLE, align 4
  %206 = call i32 @v4l2_ctrl_new_std_menu(i32* %202, i32* @coda_ctrl_ops, i32 %203, i32 %204, i32 0, i32 %205)
  %207 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %208 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %207, i32 0, i32 0
  %209 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_MB, align 4
  %210 = call i32 @v4l2_ctrl_new_std(i32* %208, i32* @coda_ctrl_ops, i32 %209, i32 1, i32 1073741823, i32 1, i32 1)
  %211 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %212 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %211, i32 0, i32 0
  %213 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MULTI_SLICE_MAX_BYTES, align 4
  %214 = call i32 @v4l2_ctrl_new_std(i32* %212, i32* @coda_ctrl_ops, i32 %213, i32 1, i32 1073741823, i32 1, i32 500)
  %215 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %216 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %215, i32 0, i32 0
  %217 = load i32, i32* @V4L2_CID_MPEG_VIDEO_HEADER_MODE, align 4
  %218 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME, align 4
  %219 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE, align 4
  %220 = shl i32 1, %219
  %221 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME, align 4
  %222 = call i32 @v4l2_ctrl_new_std_menu(i32* %216, i32* @coda_ctrl_ops, i32 %217, i32 %218, i32 %220, i32 %221)
  %223 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %224 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %223, i32 0, i32 0
  %225 = load i32, i32* @V4L2_CID_MPEG_VIDEO_CYCLIC_INTRA_REFRESH_MB, align 4
  %226 = call i32 @v4l2_ctrl_new_std(i32* %224, i32* @coda_ctrl_ops, i32 %225, i32 0, i32 8160, i32 1, i32 0)
  %227 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %228 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %227, i32 0, i32 0
  %229 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VBV_DELAY, align 4
  %230 = call i32 @v4l2_ctrl_new_std(i32* %228, i32* @coda_ctrl_ops, i32 %229, i32 0, i32 32767, i32 1, i32 0)
  %231 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %232 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %231, i32 0, i32 0
  %233 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VBV_SIZE, align 4
  %234 = call i32 @v4l2_ctrl_new_std(i32* %232, i32* @coda_ctrl_ops, i32 %233, i32 0, i32 262144, i32 1, i32 0)
  ret void
}

declare dso_local i32 @v4l2_ctrl_new_std(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
