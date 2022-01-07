; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, %struct.TYPE_2__*, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_ENC_HSIZE_PX = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_VSIZE_PX = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PIC_TYPE_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_B_RECON_WRITE_ON = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_MSLICE_CTRL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_MSLICE_MB = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_MSLICE_BIT = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_CIR_CTRL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12M = common dso_local global i64 0, align 8
@S5P_FIMV_ENC_MAP_FOR_CUR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12MT = common dso_local global i64 0, align 8
@S5P_FIMV_ENC_PADDING_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_CONFIG = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_BIT_RATE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_RPARA = common dso_local global i32 0, align 4
@EXT_ENC_CONTROL = common dso_local global i32 0, align 4
@RC_CONTROL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_enc_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 4
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %3, align 8
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 3
  store %struct.s5p_mfc_enc_params* %11, %struct.s5p_mfc_enc_params** %4, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @S5P_FIMV_ENC_HSIZE_PX, align 4
  %17 = call i32 @mfc_write(%struct.s5p_mfc_dev* %12, i32 %15, i32 %16)
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S5P_FIMV_ENC_VSIZE_PX, align 4
  %23 = call i32 @mfc_write(%struct.s5p_mfc_dev* %18, i32 %21, i32 %22)
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %25 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %26 = call i32 @mfc_read(%struct.s5p_mfc_dev* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 262144
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -65536
  store i32 %30, i32* %5, align 4
  %31 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %39 = call i32 @mfc_write(%struct.s5p_mfc_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %41 = load i32, i32* @S5P_FIMV_ENC_B_RECON_WRITE_ON, align 4
  %42 = call i32 @mfc_write(%struct.s5p_mfc_dev* %40, i32 0, i32 %41)
  %43 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %44 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S5P_FIMV_ENC_MSLICE_CTRL, align 4
  %48 = call i32 @mfc_write(%struct.s5p_mfc_dev* %43, i32 %46, i32 %47)
  %49 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_MB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %56 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @S5P_FIMV_ENC_MSLICE_MB, align 4
  %60 = call i32 @mfc_write(%struct.s5p_mfc_dev* %55, i32 %58, i32 %59)
  br label %82

61:                                               ; preds = %1
  %62 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V4L2_MPEG_VIDEO_MULTI_SLICE_MODE_MAX_BYTES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %69 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @S5P_FIMV_ENC_MSLICE_BIT, align 4
  %73 = call i32 @mfc_write(%struct.s5p_mfc_dev* %68, i32 %71, i32 %72)
  br label %81

74:                                               ; preds = %61
  %75 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %76 = load i32, i32* @S5P_FIMV_ENC_MSLICE_MB, align 4
  %77 = call i32 @mfc_write(%struct.s5p_mfc_dev* %75, i32 0, i32 %76)
  %78 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %79 = load i32, i32* @S5P_FIMV_ENC_MSLICE_BIT, align 4
  %80 = call i32 @mfc_write(%struct.s5p_mfc_dev* %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %84 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @S5P_FIMV_ENC_CIR_CTRL, align 4
  %88 = call i32 @mfc_write(%struct.s5p_mfc_dev* %83, i32 %86, i32 %87)
  %89 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @V4L2_PIX_FMT_NV12M, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %82
  %97 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %98 = load i32, i32* @S5P_FIMV_ENC_MAP_FOR_CUR, align 4
  %99 = call i32 @mfc_write(%struct.s5p_mfc_dev* %97, i32 0, i32 %98)
  br label %113

100:                                              ; preds = %82
  %101 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %102 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @V4L2_PIX_FMT_NV12MT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %110 = load i32, i32* @S5P_FIMV_ENC_MAP_FOR_CUR, align 4
  %111 = call i32 @mfc_write(%struct.s5p_mfc_dev* %109, i32 3, i32 %110)
  br label %112

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %115 = load i32, i32* @S5P_FIMV_ENC_PADDING_CTRL, align 4
  %116 = call i32 @mfc_read(%struct.s5p_mfc_dev* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %113
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = or i64 %123, 2147483648
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, -16711681
  store i32 %127, i32* %5, align 4
  %128 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 16
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, -65281
  store i32 %135, i32* %5, align 4
  %136 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = shl i32 %138, 8
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, -256
  store i32 %143, i32* %5, align 4
  %144 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %145 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %150

149:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %121
  %151 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @S5P_FIMV_ENC_PADDING_CTRL, align 4
  %154 = call i32 @mfc_write(%struct.s5p_mfc_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %156 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %157 = call i32 @mfc_read(%struct.s5p_mfc_dev* %155, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = and i32 %158, -513
  store i32 %159, i32* %5, align 4
  %160 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %161 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %162, 9
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %169 = call i32 @mfc_write(%struct.s5p_mfc_dev* %166, i32 %167, i32 %168)
  %170 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %171 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %150
  %175 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %176 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %177 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @S5P_FIMV_ENC_RC_BIT_RATE, align 4
  %180 = call i32 @mfc_write(%struct.s5p_mfc_dev* %175, i32 %178, i32 %179)
  br label %185

181:                                              ; preds = %150
  %182 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %183 = load i32, i32* @S5P_FIMV_ENC_RC_BIT_RATE, align 4
  %184 = call i32 @mfc_write(%struct.s5p_mfc_dev* %182, i32 0, i32 %183)
  br label %185

185:                                              ; preds = %181, %174
  %186 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %187 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %192 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %193 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @S5P_FIMV_ENC_RC_RPARA, align 4
  %196 = call i32 @mfc_write(%struct.s5p_mfc_dev* %191, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %185
  %198 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %199 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %200 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %198, i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, -9
  store i32 %202, i32* %6, align 4
  %203 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %204 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 3
  %207 = load i32, i32* %6, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = and i32 %209, -7
  store i32 %210, i32* %6, align 4
  %211 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %212 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 8
  %214 = shl i32 %213, 1
  %215 = load i32, i32* %6, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %6, align 4
  %217 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %220 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %217, i32 %218, i32 %219)
  %221 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %222 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %223 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %222, i32 0, i32 13
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @RC_CONTROL_CONFIG, align 4
  %226 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %221, i32 %224, i32 %225)
  ret i32 0
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
