; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_h264.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_h264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_h264_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_ENC_PIC_TYPE_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PIC_STRUCT = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_VSIZE_PX = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_LF_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_ALPHA_OFF = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_BETA_OFF = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC = common dso_local global i64 0, align 8
@S5P_FIMV_ENC_H264_ENTROPY_MODE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_H264_NUM_OF_REF = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_H264_TRANS_FLAG = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_CONFIG = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_FRAME_RATE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_QBOUND = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_MB_CTRL = common dso_local global i32 0, align 4
@P_B_FRAME_QP = common dso_local global i32 0, align 4
@EXT_ENC_CONTROL = common dso_local global i32 0, align 4
@SAMPLE_ASPECT_RATIO_IDC = common dso_local global i32 0, align 4
@EXTENDED_SAR = common dso_local global i32 0, align 4
@H264_I_PERIOD = common dso_local global i32 0, align 4
@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_h264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_enc_params*, align 8
  %5 = alloca %struct.s5p_mfc_h264_enc_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 2
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %3, align 8
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %11, i32 0, i32 1
  store %struct.s5p_mfc_enc_params* %12, %struct.s5p_mfc_enc_params** %4, align 8
  %13 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.s5p_mfc_h264_enc_params* %15, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %17 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %16)
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %19 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %20 = call i32 @mfc_read(%struct.s5p_mfc_dev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -196609
  store i32 %22, i32* %6, align 4
  %23 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %32 = call i32 @mfc_write(%struct.s5p_mfc_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %34 = load i32, i32* @S5P_FIMV_ENC_PROFILE, align 4
  %35 = call i32 @mfc_read(%struct.s5p_mfc_dev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -65281
  store i32 %37, i32* %6, align 4
  %38 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, -64
  store i32 %45, i32* %6, align 4
  %46 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @S5P_FIMV_ENC_PROFILE, align 4
  %54 = call i32 @mfc_write(%struct.s5p_mfc_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %56 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @S5P_FIMV_ENC_PIC_STRUCT, align 4
  %60 = call i32 @mfc_write(%struct.s5p_mfc_dev* %55, i32 %58, i32 %59)
  %61 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %1
  %66 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %67 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 1
  %71 = load i32, i32* @S5P_FIMV_ENC_VSIZE_PX, align 4
  %72 = call i32 @mfc_write(%struct.s5p_mfc_dev* %66, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %1
  %74 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %75 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @S5P_FIMV_ENC_LF_CTRL, align 4
  %79 = call i32 @mfc_write(%struct.s5p_mfc_dev* %74, i32 %77, i32 %78)
  %80 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  store i32 16, i32* %6, align 4
  %85 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 255, %87
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %99

92:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  %93 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 15
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %92, %84
  %100 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @S5P_FIMV_ENC_ALPHA_OFF, align 4
  %103 = call i32 @mfc_write(%struct.s5p_mfc_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  store i32 16, i32* %6, align 4
  %109 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %110 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 255, %111
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %123

116:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  %117 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %116, %108
  %124 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @S5P_FIMV_ENC_BETA_OFF, align 4
  %127 = call i32 @mfc_write(%struct.s5p_mfc_dev* %124, i32 %125, i32 %126)
  %128 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %135 = load i32, i32* @S5P_FIMV_ENC_H264_ENTROPY_MODE, align 4
  %136 = call i32 @mfc_write(%struct.s5p_mfc_dev* %134, i32 1, i32 %135)
  br label %141

137:                                              ; preds = %123
  %138 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %139 = load i32, i32* @S5P_FIMV_ENC_H264_ENTROPY_MODE, align 4
  %140 = call i32 @mfc_write(%struct.s5p_mfc_dev* %138, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %143 = load i32, i32* @S5P_FIMV_ENC_H264_NUM_OF_REF, align 4
  %144 = call i32 @mfc_read(%struct.s5p_mfc_dev* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, -97
  store i32 %146, i32* %6, align 4
  %147 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %148 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 %149, 5
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, -32
  store i32 %154, i32* %6, align 4
  %155 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %156 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @S5P_FIMV_ENC_H264_NUM_OF_REF, align 4
  %163 = call i32 @mfc_write(%struct.s5p_mfc_dev* %160, i32 %161, i32 %162)
  %164 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %165 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @S5P_FIMV_ENC_H264_TRANS_FLAG, align 4
  %169 = call i32 @mfc_write(%struct.s5p_mfc_dev* %164, i32 %167, i32 %168)
  %170 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %171 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %172 = call i32 @mfc_read(%struct.s5p_mfc_dev* %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, -257
  store i32 %174, i32* %6, align 4
  %175 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %176 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 8
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = and i32 %181, -64
  store i32 %182, i32* %6, align 4
  %183 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %184 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %191 = call i32 @mfc_write(%struct.s5p_mfc_dev* %188, i32 %189, i32 %190)
  %192 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %141
  %197 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %198 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %196
  %202 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %203 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %204 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %205, 1000
  %207 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %208 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %206, %209
  %211 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %212 = call i32 @mfc_write(%struct.s5p_mfc_dev* %202, i32 %210, i32 %211)
  br label %217

213:                                              ; preds = %196, %141
  %214 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %215 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %216 = call i32 @mfc_write(%struct.s5p_mfc_dev* %214, i32 0, i32 %215)
  br label %217

217:                                              ; preds = %213, %201
  %218 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %219 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %220 = call i32 @mfc_read(%struct.s5p_mfc_dev* %218, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = and i32 %221, -16129
  store i32 %222, i32* %6, align 4
  %223 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %224 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 8
  %226 = shl i32 %225, 8
  %227 = load i32, i32* %6, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = and i32 %229, -64
  store i32 %230, i32* %6, align 4
  %231 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %232 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %231, i32 0, i32 12
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %6, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %6, align 4
  %236 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %239 = call i32 @mfc_write(%struct.s5p_mfc_dev* %236, i32 %237, i32 %238)
  %240 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %241 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %283

244:                                              ; preds = %217
  %245 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %246 = load i32, i32* @S5P_FIMV_ENC_RC_MB_CTRL, align 4
  %247 = call i32 @mfc_read(%struct.s5p_mfc_dev* %245, i32 %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = and i32 %248, -9
  store i32 %249, i32* %6, align 4
  %250 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %251 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %250, i32 0, i32 13
  %252 = load i32, i32* %251, align 8
  %253 = shl i32 %252, 3
  %254 = load i32, i32* %6, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %6, align 4
  %257 = and i32 %256, -5
  store i32 %257, i32* %6, align 4
  %258 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %259 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %258, i32 0, i32 14
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 2
  %262 = load i32, i32* %6, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = and i32 %264, -3
  store i32 %265, i32* %6, align 4
  %266 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %267 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %266, i32 0, i32 15
  %268 = load i32, i32* %267, align 8
  %269 = shl i32 %268, 1
  %270 = load i32, i32* %6, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = and i32 %272, -2
  store i32 %273, i32* %6, align 4
  %274 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %275 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %274, i32 0, i32 16
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %6, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* @S5P_FIMV_ENC_RC_MB_CTRL, align 4
  %282 = call i32 @mfc_write(%struct.s5p_mfc_dev* %279, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %244, %217
  %284 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %285 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %316, label %288

288:                                              ; preds = %283
  %289 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %290 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %316, label %293

293:                                              ; preds = %288
  %294 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %295 = load i32, i32* @P_B_FRAME_QP, align 4
  %296 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %294, i32 %295)
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = and i32 %297, -4096
  store i32 %298, i32* %7, align 4
  %299 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %300 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %299, i32 0, i32 17
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, 63
  %303 = shl i32 %302, 6
  %304 = load i32, i32* %7, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %7, align 4
  %306 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %307 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %306, i32 0, i32 18
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 63
  %310 = load i32, i32* %7, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %7, align 4
  %312 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @P_B_FRAME_QP, align 4
  %315 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %293, %288, %283
  %317 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %318 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %319 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %317, i32 %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* %7, align 4
  %321 = and i32 %320, -32769
  store i32 %321, i32* %7, align 4
  %322 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %323 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %322, i32 0, i32 19
  %324 = load i32, i32* %323, align 8
  %325 = shl i32 %324, 1
  %326 = load i32, i32* %7, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %7, align 4
  %328 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %331 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %328, i32 %329, i32 %330)
  %332 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %333 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %332, i32 0, i32 19
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %377

336:                                              ; preds = %316
  %337 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %338 = load i32, i32* @SAMPLE_ASPECT_RATIO_IDC, align 4
  %339 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %337, i32 %338)
  store i32 %339, i32* %7, align 4
  %340 = load i32, i32* %7, align 4
  %341 = and i32 %340, -256
  store i32 %341, i32* %7, align 4
  %342 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %343 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %342, i32 0, i32 20
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %7, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %7, align 4
  %347 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @SAMPLE_ASPECT_RATIO_IDC, align 4
  %350 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %347, i32 %348, i32 %349)
  %351 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %352 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %351, i32 0, i32 20
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 255
  br i1 %354, label %355, label %376

355:                                              ; preds = %336
  %356 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %357 = load i32, i32* @EXTENDED_SAR, align 4
  %358 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %356, i32 %357)
  store i32 %358, i32* %7, align 4
  %359 = load i32, i32* %7, align 4
  %360 = and i32 %359, 0
  store i32 %360, i32* %7, align 4
  %361 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %362 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %361, i32 0, i32 21
  %363 = load i32, i32* %362, align 8
  %364 = shl i32 %363, 16
  %365 = load i32, i32* %7, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %7, align 4
  %367 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %368 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %367, i32 0, i32 22
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %7, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %7, align 4
  %372 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* @EXTENDED_SAR, align 4
  %375 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %372, i32 %373, i32 %374)
  br label %376

376:                                              ; preds = %355, %336
  br label %377

377:                                              ; preds = %376, %316
  %378 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %379 = load i32, i32* @H264_I_PERIOD, align 4
  %380 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %378, i32 %379)
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %7, align 4
  %382 = and i32 %381, -65537
  store i32 %382, i32* %7, align 4
  %383 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %384 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %383, i32 0, i32 23
  %385 = load i32, i32* %384, align 8
  %386 = shl i32 %385, 16
  %387 = load i32, i32* %7, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %7, align 4
  %389 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %390 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %389, i32 0, i32 23
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %401

393:                                              ; preds = %377
  %394 = load i32, i32* %7, align 4
  %395 = and i32 %394, -65536
  store i32 %395, i32* %7, align 4
  %396 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %397 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %396, i32 0, i32 24
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* %7, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %7, align 4
  br label %401

401:                                              ; preds = %393, %377
  %402 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* @H264_I_PERIOD, align 4
  %405 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %402, i32 %403, i32 %404)
  %406 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %407 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %408 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %406, i32 %407)
  store i32 %408, i32* %7, align 4
  %409 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %410 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %423

414:                                              ; preds = %401
  %415 = load i32, i32* %7, align 4
  %416 = and i32 %415, 65535
  store i32 %416, i32* %7, align 4
  %417 = load %struct.s5p_mfc_h264_enc_params*, %struct.s5p_mfc_h264_enc_params** %5, align 8
  %418 = getelementptr inbounds %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_h264_enc_params* %417, i32 0, i32 25
  %419 = load i32, i32* %418, align 8
  %420 = shl i32 %419, 16
  %421 = load i32, i32* %7, align 4
  %422 = or i32 %421, %420
  store i32 %422, i32* %7, align 4
  br label %423

423:                                              ; preds = %414, %401
  %424 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %427 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %424, i32 %425, i32 %426)
  ret i32 0
}

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
