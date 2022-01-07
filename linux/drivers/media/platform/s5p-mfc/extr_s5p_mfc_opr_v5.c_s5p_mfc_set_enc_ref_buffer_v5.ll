; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_ref_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_ref_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.s5p_mfc_dev* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_NV12MT_HALIGN = common dso_local global i32 0, align 4
@S5P_FIMV_NV12MT_VALIGN = common dso_local global i32 0, align 4
@S5P_FIMV_NV12MT_SALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"buf_size1: %zu, buf_size2: %zu\0A\00", align 1
@S5P_FIMV_ENC_REF0_LUMA_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_REF2_LUMA_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_REF0_CHROMA_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_H264_UP_MV_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_UPMV_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H264_COZERO_FLAG_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_COLFLG_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H264_UP_INTRA_MD_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_INTRAMD_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H264_UP_INTRA_PRED_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_INTRAPRED_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H264_NBOR_INFO_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_NBORINFO_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_UP_MV_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_MPEG4_COZERO_FLAG_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_MPEG4_ACDC_COEF_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_ACDCCOEF_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H263_UP_MV_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_H263_ACDC_COEF_ADR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown codec set for encoding: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_ref_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_ref_buffer_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 5
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %15, align 8
  store %struct.s5p_mfc_dev* %16, %struct.s5p_mfc_dev** %4, align 8
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %37 = call i32 @ALIGN(i32 %35, i32 %36)
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %42 = call i32 @ALIGN(i32 %40, i32 %41)
  %43 = mul i32 %37, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @S5P_FIMV_NV12MT_SALIGN, align 4
  %46 = call i32 @ALIGN(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %67

51:                                               ; preds = %1
  %52 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %56 = call i32 @ALIGN(i32 %54, i32 %55)
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = lshr i32 %59, 1
  %61 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %62 = call i32 @ALIGN(i32 %60, i32 %61)
  %63 = mul i32 %56, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @S5P_FIMV_NV12MT_SALIGN, align 4
  %66 = call i32 @ALIGN(i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %86

67:                                               ; preds = %1
  %68 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add i32 %70, 16
  %72 = load i32, i32* @S5P_FIMV_NV12MT_HALIGN, align 4
  %73 = call i32 @ALIGN(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = lshr i32 %76, 1
  %78 = add i32 %77, 4
  %79 = load i32, i32* @S5P_FIMV_NV12MT_VALIGN, align 4
  %80 = call i32 @ALIGN(i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul i32 %81, %82
  %84 = load i32, i32* @S5P_FIMV_NV12MT_SALIGN, align 4
  %85 = call i32 @ALIGN(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %67, %51
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %88)
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %407 [
    i32 129, label %93
    i32 128, label %216
    i32 130, label %317
  ]

93:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %130, %93
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %133

97:                                               ; preds = %94
  %98 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @OFFSETA(i64 %99)
  %101 = load i32, i32* @S5P_FIMV_ENC_REF0_LUMA_ADR, align 4
  %102 = load i32, i32* %13, align 4
  %103 = mul nsw i32 4, %102
  %104 = add nsw i32 %101, %103
  %105 = call i32 @mfc_write(%struct.s5p_mfc_dev* %98, i32 %100, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %7, align 8
  %114 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @OFFSETB(i64 %115)
  %117 = load i32, i32* @S5P_FIMV_ENC_REF2_LUMA_ADR, align 4
  %118 = load i32, i32* %13, align 4
  %119 = mul nsw i32 4, %118
  %120 = add nsw i32 %117, %119
  %121 = call i32 @mfc_write(%struct.s5p_mfc_dev* %114, i32 %116, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %8, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %97
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %94

133:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %154, %133
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @OFFSETB(i64 %139)
  %141 = load i32, i32* @S5P_FIMV_ENC_REF0_CHROMA_ADR, align 4
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 4, %142
  %144 = add nsw i32 %141, %143
  %145 = call i32 @mfc_write(%struct.s5p_mfc_dev* %138, i32 %140, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %8, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %8, align 8
  br label %154

154:                                              ; preds = %137
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %134

157:                                              ; preds = %134
  %158 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @OFFSETA(i64 %159)
  %161 = load i32, i32* @S5P_FIMV_H264_UP_MV_ADR, align 4
  %162 = call i32 @mfc_write(%struct.s5p_mfc_dev* %158, i32 %160, i32 %161)
  %163 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %5, align 8
  %166 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %167 = load i64, i64* %7, align 8
  %168 = sub i64 %167, %166
  store i64 %168, i64* %7, align 8
  %169 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %170 = load i64, i64* %5, align 8
  %171 = call i32 @OFFSETA(i64 %170)
  %172 = load i32, i32* @S5P_FIMV_H264_COZERO_FLAG_ADR, align 4
  %173 = call i32 @mfc_write(%struct.s5p_mfc_dev* %169, i32 %171, i32 %172)
  %174 = load i64, i64* @S5P_FIMV_ENC_COLFLG_SIZE, align 8
  %175 = load i64, i64* %5, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* @S5P_FIMV_ENC_COLFLG_SIZE, align 8
  %178 = load i64, i64* %7, align 8
  %179 = sub i64 %178, %177
  store i64 %179, i64* %7, align 8
  %180 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %181 = load i64, i64* %5, align 8
  %182 = call i32 @OFFSETA(i64 %181)
  %183 = load i32, i32* @S5P_FIMV_H264_UP_INTRA_MD_ADR, align 4
  %184 = call i32 @mfc_write(%struct.s5p_mfc_dev* %180, i32 %182, i32 %183)
  %185 = load i64, i64* @S5P_FIMV_ENC_INTRAMD_SIZE, align 8
  %186 = load i64, i64* %5, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* @S5P_FIMV_ENC_INTRAMD_SIZE, align 8
  %189 = load i64, i64* %7, align 8
  %190 = sub i64 %189, %188
  store i64 %190, i64* %7, align 8
  %191 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i32 @OFFSETB(i64 %192)
  %194 = load i32, i32* @S5P_FIMV_H264_UP_INTRA_PRED_ADR, align 4
  %195 = call i32 @mfc_write(%struct.s5p_mfc_dev* %191, i32 %193, i32 %194)
  %196 = load i64, i64* @S5P_FIMV_ENC_INTRAPRED_SIZE, align 8
  %197 = load i64, i64* %6, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %6, align 8
  %199 = load i64, i64* @S5P_FIMV_ENC_INTRAPRED_SIZE, align 8
  %200 = load i64, i64* %8, align 8
  %201 = sub i64 %200, %199
  store i64 %201, i64* %8, align 8
  %202 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %203 = load i64, i64* %5, align 8
  %204 = call i32 @OFFSETA(i64 %203)
  %205 = load i32, i32* @S5P_FIMV_H264_NBOR_INFO_ADR, align 4
  %206 = call i32 @mfc_write(%struct.s5p_mfc_dev* %202, i32 %204, i32 %205)
  %207 = load i64, i64* @S5P_FIMV_ENC_NBORINFO_SIZE, align 8
  %208 = load i64, i64* %5, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %5, align 8
  %210 = load i64, i64* @S5P_FIMV_ENC_NBORINFO_SIZE, align 8
  %211 = load i64, i64* %7, align 8
  %212 = sub i64 %211, %210
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* %8, align 8
  %215 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %213, i64 %214)
  br label %414

216:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %253, %216
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %218, 2
  br i1 %219, label %220, label %256

220:                                              ; preds = %217
  %221 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %222 = load i64, i64* %5, align 8
  %223 = call i32 @OFFSETA(i64 %222)
  %224 = load i32, i32* @S5P_FIMV_ENC_REF0_LUMA_ADR, align 4
  %225 = load i32, i32* %13, align 4
  %226 = mul nsw i32 4, %225
  %227 = add nsw i32 %224, %226
  %228 = call i32 @mfc_write(%struct.s5p_mfc_dev* %221, i32 %223, i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %5, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %5, align 8
  %233 = load i32, i32* %9, align 4
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %7, align 8
  %236 = sub i64 %235, %234
  store i64 %236, i64* %7, align 8
  %237 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %238 = load i64, i64* %6, align 8
  %239 = call i32 @OFFSETB(i64 %238)
  %240 = load i32, i32* @S5P_FIMV_ENC_REF2_LUMA_ADR, align 4
  %241 = load i32, i32* %13, align 4
  %242 = mul nsw i32 4, %241
  %243 = add nsw i32 %240, %242
  %244 = call i32 @mfc_write(%struct.s5p_mfc_dev* %237, i32 %239, i32 %243)
  %245 = load i32, i32* %9, align 4
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, %246
  store i64 %248, i64* %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %8, align 8
  %252 = sub i64 %251, %250
  store i64 %252, i64* %8, align 8
  br label %253

253:                                              ; preds = %220
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %13, align 4
  br label %217

256:                                              ; preds = %217
  store i32 0, i32* %13, align 4
  br label %257

257:                                              ; preds = %277, %256
  %258 = load i32, i32* %13, align 4
  %259 = icmp slt i32 %258, 4
  br i1 %259, label %260, label %280

260:                                              ; preds = %257
  %261 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %262 = load i64, i64* %6, align 8
  %263 = call i32 @OFFSETB(i64 %262)
  %264 = load i32, i32* @S5P_FIMV_ENC_REF0_CHROMA_ADR, align 4
  %265 = load i32, i32* %13, align 4
  %266 = mul nsw i32 4, %265
  %267 = add nsw i32 %264, %266
  %268 = call i32 @mfc_write(%struct.s5p_mfc_dev* %261, i32 %263, i32 %267)
  %269 = load i32, i32* %10, align 4
  %270 = zext i32 %269 to i64
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %271, %270
  store i64 %272, i64* %6, align 8
  %273 = load i32, i32* %10, align 4
  %274 = zext i32 %273 to i64
  %275 = load i64, i64* %8, align 8
  %276 = sub i64 %275, %274
  store i64 %276, i64* %8, align 8
  br label %277

277:                                              ; preds = %260
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %257

280:                                              ; preds = %257
  %281 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %282 = load i64, i64* %5, align 8
  %283 = call i32 @OFFSETA(i64 %282)
  %284 = load i32, i32* @S5P_FIMV_MPEG4_UP_MV_ADR, align 4
  %285 = call i32 @mfc_write(%struct.s5p_mfc_dev* %281, i32 %283, i32 %284)
  %286 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %287 = load i64, i64* %5, align 8
  %288 = add i64 %287, %286
  store i64 %288, i64* %5, align 8
  %289 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %290 = load i64, i64* %7, align 8
  %291 = sub i64 %290, %289
  store i64 %291, i64* %7, align 8
  %292 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %293 = load i64, i64* %5, align 8
  %294 = call i32 @OFFSETA(i64 %293)
  %295 = load i32, i32* @S5P_FIMV_MPEG4_COZERO_FLAG_ADR, align 4
  %296 = call i32 @mfc_write(%struct.s5p_mfc_dev* %292, i32 %294, i32 %295)
  %297 = load i64, i64* @S5P_FIMV_ENC_COLFLG_SIZE, align 8
  %298 = load i64, i64* %5, align 8
  %299 = add i64 %298, %297
  store i64 %299, i64* %5, align 8
  %300 = load i64, i64* @S5P_FIMV_ENC_COLFLG_SIZE, align 8
  %301 = load i64, i64* %7, align 8
  %302 = sub i64 %301, %300
  store i64 %302, i64* %7, align 8
  %303 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %304 = load i64, i64* %5, align 8
  %305 = call i32 @OFFSETA(i64 %304)
  %306 = load i32, i32* @S5P_FIMV_MPEG4_ACDC_COEF_ADR, align 4
  %307 = call i32 @mfc_write(%struct.s5p_mfc_dev* %303, i32 %305, i32 %306)
  %308 = load i64, i64* @S5P_FIMV_ENC_ACDCCOEF_SIZE, align 8
  %309 = load i64, i64* %5, align 8
  %310 = add i64 %309, %308
  store i64 %310, i64* %5, align 8
  %311 = load i64, i64* @S5P_FIMV_ENC_ACDCCOEF_SIZE, align 8
  %312 = load i64, i64* %7, align 8
  %313 = sub i64 %312, %311
  store i64 %313, i64* %7, align 8
  %314 = load i64, i64* %7, align 8
  %315 = load i64, i64* %8, align 8
  %316 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %314, i64 %315)
  br label %414

317:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %318

318:                                              ; preds = %354, %317
  %319 = load i32, i32* %13, align 4
  %320 = icmp slt i32 %319, 2
  br i1 %320, label %321, label %357

321:                                              ; preds = %318
  %322 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %323 = load i64, i64* %5, align 8
  %324 = call i32 @OFFSETA(i64 %323)
  %325 = load i32, i32* @S5P_FIMV_ENC_REF0_LUMA_ADR, align 4
  %326 = load i32, i32* %13, align 4
  %327 = mul nsw i32 4, %326
  %328 = add nsw i32 %325, %327
  %329 = call i32 @mfc_write(%struct.s5p_mfc_dev* %322, i32 %324, i32 %328)
  %330 = load i32, i32* %9, align 4
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %5, align 8
  %333 = add i64 %332, %331
  store i64 %333, i64* %5, align 8
  %334 = load i32, i32* %9, align 4
  %335 = zext i32 %334 to i64
  %336 = load i64, i64* %7, align 8
  %337 = sub i64 %336, %335
  store i64 %337, i64* %7, align 8
  %338 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %339 = load i64, i64* %6, align 8
  %340 = call i32 @OFFSETB(i64 %339)
  %341 = load i32, i32* @S5P_FIMV_ENC_REF2_LUMA_ADR, align 4
  %342 = load i32, i32* %13, align 4
  %343 = mul nsw i32 4, %342
  %344 = add nsw i32 %341, %343
  %345 = call i32 @mfc_write(%struct.s5p_mfc_dev* %338, i32 %340, i32 %344)
  %346 = load i32, i32* %9, align 4
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %6, align 8
  %349 = add i64 %348, %347
  store i64 %349, i64* %6, align 8
  %350 = load i32, i32* %9, align 4
  %351 = zext i32 %350 to i64
  %352 = load i64, i64* %8, align 8
  %353 = sub i64 %352, %351
  store i64 %353, i64* %8, align 8
  br label %354

354:                                              ; preds = %321
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  br label %318

357:                                              ; preds = %318
  store i32 0, i32* %13, align 4
  br label %358

358:                                              ; preds = %378, %357
  %359 = load i32, i32* %13, align 4
  %360 = icmp slt i32 %359, 4
  br i1 %360, label %361, label %381

361:                                              ; preds = %358
  %362 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %363 = load i64, i64* %6, align 8
  %364 = call i32 @OFFSETB(i64 %363)
  %365 = load i32, i32* @S5P_FIMV_ENC_REF0_CHROMA_ADR, align 4
  %366 = load i32, i32* %13, align 4
  %367 = mul nsw i32 4, %366
  %368 = add nsw i32 %365, %367
  %369 = call i32 @mfc_write(%struct.s5p_mfc_dev* %362, i32 %364, i32 %368)
  %370 = load i32, i32* %10, align 4
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* %6, align 8
  %373 = add i64 %372, %371
  store i64 %373, i64* %6, align 8
  %374 = load i32, i32* %10, align 4
  %375 = zext i32 %374 to i64
  %376 = load i64, i64* %8, align 8
  %377 = sub i64 %376, %375
  store i64 %377, i64* %8, align 8
  br label %378

378:                                              ; preds = %361
  %379 = load i32, i32* %13, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %13, align 4
  br label %358

381:                                              ; preds = %358
  %382 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %383 = load i64, i64* %5, align 8
  %384 = call i32 @OFFSETA(i64 %383)
  %385 = load i32, i32* @S5P_FIMV_H263_UP_MV_ADR, align 4
  %386 = call i32 @mfc_write(%struct.s5p_mfc_dev* %382, i32 %384, i32 %385)
  %387 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %388 = load i64, i64* %5, align 8
  %389 = add i64 %388, %387
  store i64 %389, i64* %5, align 8
  %390 = load i64, i64* @S5P_FIMV_ENC_UPMV_SIZE, align 8
  %391 = load i64, i64* %7, align 8
  %392 = sub i64 %391, %390
  store i64 %392, i64* %7, align 8
  %393 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %394 = load i64, i64* %5, align 8
  %395 = call i32 @OFFSETA(i64 %394)
  %396 = load i32, i32* @S5P_FIMV_H263_ACDC_COEF_ADR, align 4
  %397 = call i32 @mfc_write(%struct.s5p_mfc_dev* %393, i32 %395, i32 %396)
  %398 = load i64, i64* @S5P_FIMV_ENC_ACDCCOEF_SIZE, align 8
  %399 = load i64, i64* %5, align 8
  %400 = add i64 %399, %398
  store i64 %400, i64* %5, align 8
  %401 = load i64, i64* @S5P_FIMV_ENC_ACDCCOEF_SIZE, align 8
  %402 = load i64, i64* %7, align 8
  %403 = sub i64 %402, %401
  store i64 %403, i64* %7, align 8
  %404 = load i64, i64* %7, align 8
  %405 = load i64, i64* %8, align 8
  %406 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %404, i64 %405)
  br label %414

407:                                              ; preds = %86
  %408 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %409 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %410)
  %412 = load i32, i32* @EINVAL, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %2, align 4
  br label %415

414:                                              ; preds = %381, %280, %157
  store i32 0, i32* %2, align 4
  br label %415

415:                                              ; preds = %414, %407
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64, i64) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @OFFSETA(i64) #1

declare dso_local i32 @OFFSETB(i64) #1

declare dso_local i32 @mfc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
