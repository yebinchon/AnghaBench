; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_codec_buffers_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_codec_buffers_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.s5p_mfc_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.s5p_mfc_dev = type { i32 }

@MFCINST_DECODER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Luma size:%d Chroma size:%d MV size:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Totals bufs: %d\0A\00", align 1
@MFCINST_ENCODER = common dso_local global i64 0, align 8
@S5P_FIMV_NUM_TMV_BUFFERS_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_TMV_BUFFER_ALIGN_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_HEVC_ENC = common dso_local global i32 0, align 4
@S5P_FIMV_LUMA_MB_TO_PIXEL_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_LUMA_DPB_BUFFER_ALIGN_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CHROMA_MB_TO_PIXEL_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CHROMA_DPB_BUFFER_ALIGN_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_ME_BUFFER_ALIGN_V6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"recon luma size: %zu chroma size: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Use min scratch buffer size\0A\00", align 1
@S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6 = common dso_local global i32 0, align 4
@DEC_VP9_STATIC_BUFFER_SIZE = common dso_local global i32 0, align 4
@BANK_L_CTX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate Bank1 memory\0A\00", align 1
@MFC_BANK1_ALIGN_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_alloc_codec_buffers_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_alloc_codec_buffers_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 17
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %11, align 8
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MB_WIDTH(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MB_HEIGHT(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MFCINST_DECODER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %201

41:                                               ; preds = %1
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MFCINST_ENCODER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %197

47:                                               ; preds = %41
  %48 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %49 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  br label %79

54:                                               ; preds = %47
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %56 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* @S5P_FIMV_NUM_TMV_BUFFERS_V6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @S5P_FIMV_TMV_BUFFER_SIZE_V8(i32 %60, i32 %61)
  %63 = load i32, i32* @S5P_FIMV_TMV_BUFFER_ALIGN_V6, align 4
  %64 = call i32 @ALIGN(i32 %62, i32 %63)
  %65 = mul i32 %59, %64
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %78

68:                                               ; preds = %54
  %69 = load i32, i32* @S5P_FIMV_NUM_TMV_BUFFERS_V6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @S5P_FIMV_TMV_BUFFER_SIZE_V6(i32 %70, i32 %71)
  %73 = load i32, i32* @S5P_FIMV_TMV_BUFFER_ALIGN_V6, align 4
  %74 = call i32 @ALIGN(i32 %72, i32 %73)
  %75 = mul i32 %69, %74
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78, %51
  %80 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %81 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %138

83:                                               ; preds = %79
  %84 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %84, i32 0, i32 13
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @S5P_MFC_LCU_WIDTH(i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @S5P_MFC_LCU_HEIGHT(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @S5P_FIMV_CODEC_HEVC_ENC, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %83
  %98 = load i32, i32* %5, align 4
  %99 = mul i32 %98, 16
  %100 = call i32 @ALIGN(i32 %99, i32 64)
  %101 = load i32, i32* %6, align 4
  %102 = mul i32 %101, 16
  %103 = call i32 @ALIGN(i32 %102, i32 32)
  %104 = mul i32 %100, %103
  %105 = add i32 %104, 64
  %106 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul i32 %108, 16
  %110 = call i32 @ALIGN(i32 %109, i32 64)
  %111 = load i32, i32* %6, align 4
  %112 = mul i32 %111, 8
  %113 = mul i32 %110, %112
  %114 = add i32 %113, 64
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  br label %137

117:                                              ; preds = %83
  %118 = load i32, i32* %7, align 4
  %119 = mul i32 %118, 32
  %120 = call i32 @ALIGN(i32 %119, i32 64)
  %121 = load i32, i32* %8, align 4
  %122 = mul i32 %121, 32
  %123 = call i32 @ALIGN(i32 %122, i32 32)
  %124 = mul i32 %120, %123
  %125 = add i32 %124, 64
  %126 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %127 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul i32 %128, 32
  %130 = call i32 @ALIGN(i32 %129, i32 64)
  %131 = load i32, i32* %8, align 4
  %132 = mul i32 %131, 16
  %133 = mul i32 %130, %132
  %134 = add i32 %133, 64
  %135 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %117, %97
  br label %157

138:                                              ; preds = %79
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = mul i32 %139, %140
  %142 = load i32, i32* @S5P_FIMV_LUMA_MB_TO_PIXEL_V6, align 4
  %143 = mul i32 %141, %142
  %144 = load i32, i32* @S5P_FIMV_LUMA_DPB_BUFFER_ALIGN_V6, align 4
  %145 = call i32 @ALIGN(i32 %143, i32 %144)
  %146 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = mul i32 %148, %149
  %151 = load i32, i32* @S5P_FIMV_CHROMA_MB_TO_PIXEL_V6, align 4
  %152 = mul i32 %150, %151
  %153 = load i32, i32* @S5P_FIMV_CHROMA_DPB_BUFFER_ALIGN_V6, align 4
  %154 = call i32 @ALIGN(i32 %152, i32 %153)
  %155 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %138, %137
  %158 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %159 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @S5P_FIMV_ME_BUFFER_SIZE_V8(i32 %164, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* @S5P_FIMV_ME_BUFFER_ALIGN_V6, align 4
  %172 = call i32 @ALIGN(i32 %170, i32 %171)
  %173 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  br label %189

175:                                              ; preds = %157
  %176 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %176, i32 0, i32 13
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @S5P_FIMV_ME_BUFFER_SIZE_V6(i32 %178, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @S5P_FIMV_ME_BUFFER_ALIGN_V6, align 4
  %186 = call i32 @ALIGN(i32 %184, i32 %185)
  %187 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %188 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %175, %161
  %190 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %191 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %194 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %195)
  br label %200

197:                                              ; preds = %41
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  br label %668

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %26
  %202 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %203 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  switch i32 %204, label %639 [
    i32 140, label %205
    i32 138, label %205
    i32 134, label %250
    i32 132, label %287
    i32 131, label %287
    i32 135, label %313
    i32 142, label %320
    i32 130, label %346
    i32 137, label %383
    i32 128, label %399
    i32 139, label %409
    i32 133, label %475
    i32 141, label %475
    i32 129, label %530
    i32 136, label %596
  ]

205:                                              ; preds = %201, %201
  %206 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %207 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %228

211:                                              ; preds = %205
  %212 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %213 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_DEC_V8(i32 %216, i32 %217)
  %219 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %220 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 8
  br label %227

221:                                              ; preds = %211
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_DEC_V6(i32 %222, i32 %223)
  %225 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %226 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %225, i32 0, i32 7
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %221, %215
  br label %228

228:                                              ; preds = %227, %209
  %229 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %230 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %233 = call i32 @ALIGN(i32 %231, i32 %232)
  %234 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %235 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 8
  %236 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %237 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %240 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %243 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %241, %244
  %246 = add i32 %238, %245
  %247 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %248 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 4
  br label %640

250:                                              ; preds = %201
  %251 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %252 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %273

256:                                              ; preds = %250
  %257 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %258 = call i32 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_DEC_V7(i32 %261, i32 %262)
  %264 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %265 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 8
  br label %272

266:                                              ; preds = %256
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_DEC_V6(i32 %267, i32 %268)
  %270 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %271 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %270, i32 0, i32 7
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %266, %260
  br label %273

273:                                              ; preds = %272, %254
  %274 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %275 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %278 = call i32 @ALIGN(i32 %276, i32 %277)
  %279 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %280 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %279, i32 0, i32 7
  store i32 %278, i32* %280, align 8
  %281 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %282 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %285 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %284, i32 0, i32 10
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  store i32 %283, i32* %286, align 4
  br label %640

287:                                              ; preds = %201, %201
  %288 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %289 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %299

293:                                              ; preds = %287
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* %6, align 4
  %296 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VC1_DEC_V6(i32 %294, i32 %295)
  %297 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %298 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %297, i32 0, i32 7
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %293, %291
  %300 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %301 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %304 = call i32 @ALIGN(i32 %302, i32 %303)
  %305 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %306 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %305, i32 0, i32 7
  store i32 %304, i32* %306, align 8
  %307 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %308 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %311 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %310, i32 0, i32 10
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 4
  br label %640

313:                                              ; preds = %201
  %314 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %315 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %314, i32 0, i32 10
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  store i32 0, i32* %316, align 4
  %317 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %318 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %317, i32 0, i32 11
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  store i32 0, i32* %319, align 4
  br label %640

320:                                              ; preds = %201
  %321 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %322 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %332

326:                                              ; preds = %320
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H263_DEC_V6(i32 %327, i32 %328)
  %330 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %331 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %330, i32 0, i32 7
  store i32 %329, i32* %331, align 8
  br label %332

332:                                              ; preds = %326, %324
  %333 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %334 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %337 = call i32 @ALIGN(i32 %335, i32 %336)
  %338 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %339 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %338, i32 0, i32 7
  store i32 %337, i32* %339, align 8
  %340 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %341 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %344 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %343, i32 0, i32 10
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  store i32 %342, i32* %345, align 4
  br label %640

346:                                              ; preds = %201
  %347 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %348 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %369

352:                                              ; preds = %346
  %353 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %354 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %352
  %357 = load i32, i32* %5, align 4
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_DEC_V8(i32 %357, i32 %358)
  %360 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %361 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %360, i32 0, i32 7
  store i32 %359, i32* %361, align 8
  br label %368

362:                                              ; preds = %352
  %363 = load i32, i32* %5, align 4
  %364 = load i32, i32* %6, align 4
  %365 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_DEC_V6(i32 %363, i32 %364)
  %366 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %367 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %366, i32 0, i32 7
  store i32 %365, i32* %367, align 8
  br label %368

368:                                              ; preds = %362, %356
  br label %369

369:                                              ; preds = %368, %350
  %370 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %371 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %374 = call i32 @ALIGN(i32 %372, i32 %373)
  %375 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %376 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %375, i32 0, i32 7
  store i32 %374, i32* %376, align 8
  %377 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %378 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %381 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %380, i32 0, i32 10
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  store i32 %379, i32* %382, align 4
  br label %640

383:                                              ; preds = %201
  %384 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %385 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %386 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %389 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %388, i32 0, i32 8
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %392 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = mul nsw i32 %390, %393
  %395 = add i32 %387, %394
  %396 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %397 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %396, i32 0, i32 10
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  store i32 %395, i32* %398, align 4
  br label %640

399:                                              ; preds = %201
  %400 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %401 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %402 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %401, i32 0, i32 7
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @DEC_VP9_STATIC_BUFFER_SIZE, align 4
  %405 = add i32 %403, %404
  %406 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %407 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %406, i32 0, i32 10
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  store i32 %405, i32* %408, align 4
  br label %640

409:                                              ; preds = %201
  %410 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %411 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %409
  %414 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %415 = load i32, i32* %5, align 4
  %416 = load i32, i32* %6, align 4
  %417 = call i32 @ENC_V100_H264_ME_SIZE(i32 %415, i32 %416)
  %418 = call i32 @ALIGN(i32 %417, i32 16)
  %419 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %420 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %419, i32 0, i32 6
  store i32 %418, i32* %420, align 4
  br label %438

421:                                              ; preds = %409
  %422 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %423 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %421
  %426 = load i32, i32* %5, align 4
  %427 = load i32, i32* %6, align 4
  %428 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_ENC_V8(i32 %426, i32 %427)
  %429 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %430 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %429, i32 0, i32 7
  store i32 %428, i32* %430, align 8
  br label %437

431:                                              ; preds = %421
  %432 = load i32, i32* %5, align 4
  %433 = load i32, i32* %6, align 4
  %434 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_ENC_V6(i32 %432, i32 %433)
  %435 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %436 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %435, i32 0, i32 7
  store i32 %434, i32* %436, align 8
  br label %437

437:                                              ; preds = %431, %425
  br label %438

438:                                              ; preds = %437, %413
  %439 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %440 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %443 = call i32 @ALIGN(i32 %441, i32 %442)
  %444 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %445 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %444, i32 0, i32 7
  store i32 %443, i32* %445, align 8
  %446 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %447 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %446, i32 0, i32 7
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %450 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = add i32 %448, %451
  %453 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %454 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %453, i32 0, i32 9
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %457 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %460 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 8
  %462 = add i32 %458, %461
  %463 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %464 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %462, %465
  %467 = mul i32 %455, %466
  %468 = add i32 %452, %467
  %469 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %470 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %469, i32 0, i32 10
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  store i32 %468, i32* %471, align 4
  %472 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %473 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %472, i32 0, i32 11
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 0
  store i32 0, i32* %474, align 4
  br label %640

475:                                              ; preds = %201, %201
  %476 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %477 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %475
  %480 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %481 = load i32, i32* %5, align 4
  %482 = load i32, i32* %6, align 4
  %483 = call i32 @ENC_V100_MPEG4_ME_SIZE(i32 %481, i32 %482)
  %484 = call i32 @ALIGN(i32 %483, i32 16)
  %485 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %486 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %485, i32 0, i32 6
  store i32 %484, i32* %486, align 4
  br label %493

487:                                              ; preds = %475
  %488 = load i32, i32* %5, align 4
  %489 = load i32, i32* %6, align 4
  %490 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_ENC_V6(i32 %488, i32 %489)
  %491 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %492 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %491, i32 0, i32 7
  store i32 %490, i32* %492, align 8
  br label %493

493:                                              ; preds = %487, %479
  %494 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %495 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %498 = call i32 @ALIGN(i32 %496, i32 %497)
  %499 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %500 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %499, i32 0, i32 7
  store i32 %498, i32* %500, align 8
  %501 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %502 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %505 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = add i32 %503, %506
  %508 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %509 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %508, i32 0, i32 9
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %512 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %511, i32 0, i32 4
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %515 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 8
  %517 = add i32 %513, %516
  %518 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %519 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %518, i32 0, i32 6
  %520 = load i32, i32* %519, align 4
  %521 = add i32 %517, %520
  %522 = mul i32 %510, %521
  %523 = add i32 %507, %522
  %524 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %525 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %524, i32 0, i32 10
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 0
  store i32 %523, i32* %526, align 4
  %527 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %528 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %527, i32 0, i32 11
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i32 0, i32 0
  store i32 0, i32* %529, align 4
  br label %640

530:                                              ; preds = %201
  %531 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %532 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %531)
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %542

534:                                              ; preds = %530
  %535 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %536 = load i32, i32* %5, align 4
  %537 = load i32, i32* %6, align 4
  %538 = call i32 @ENC_V100_VP8_ME_SIZE(i32 %536, i32 %537)
  %539 = call i32 @ALIGN(i32 %538, i32 16)
  %540 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %541 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %540, i32 0, i32 6
  store i32 %539, i32* %541, align 4
  br label %559

542:                                              ; preds = %530
  %543 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %544 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %552

546:                                              ; preds = %542
  %547 = load i32, i32* %5, align 4
  %548 = load i32, i32* %6, align 4
  %549 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_ENC_V8(i32 %547, i32 %548)
  %550 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %551 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %550, i32 0, i32 7
  store i32 %549, i32* %551, align 8
  br label %558

552:                                              ; preds = %542
  %553 = load i32, i32* %5, align 4
  %554 = load i32, i32* %6, align 4
  %555 = call i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_ENC_V7(i32 %553, i32 %554)
  %556 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %557 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %556, i32 0, i32 7
  store i32 %555, i32* %557, align 8
  br label %558

558:                                              ; preds = %552, %546
  br label %559

559:                                              ; preds = %558, %534
  %560 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %561 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %560, i32 0, i32 7
  %562 = load i32, i32* %561, align 8
  %563 = load i32, i32* @S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6, align 4
  %564 = call i32 @ALIGN(i32 %562, i32 %563)
  %565 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %566 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %565, i32 0, i32 7
  store i32 %564, i32* %566, align 8
  %567 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %568 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %567, i32 0, i32 7
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %571 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %569, %572
  %574 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %575 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %574, i32 0, i32 9
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %578 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %577, i32 0, i32 4
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %581 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %580, i32 0, i32 5
  %582 = load i32, i32* %581, align 8
  %583 = add i32 %579, %582
  %584 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %585 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %584, i32 0, i32 6
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %583, %586
  %588 = mul i32 %576, %587
  %589 = add i32 %573, %588
  %590 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %591 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %590, i32 0, i32 10
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %591, i32 0, i32 0
  store i32 %589, i32* %592, align 4
  %593 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %594 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %593, i32 0, i32 11
  %595 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %594, i32 0, i32 0
  store i32 0, i32* %595, align 4
  br label %640

596:                                              ; preds = %201
  %597 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %598 = load i32, i32* %7, align 4
  %599 = load i32, i32* %8, align 4
  %600 = call i32 @ENC_V100_HEVC_ME_SIZE(i32 %598, i32 %599)
  %601 = call i32 @ALIGN(i32 %600, i32 16)
  %602 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %603 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %602, i32 0, i32 6
  store i32 %601, i32* %603, align 4
  %604 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %605 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %604, i32 0, i32 7
  %606 = load i32, i32* %605, align 8
  %607 = call i32 @ALIGN(i32 %606, i32 256)
  %608 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %609 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %608, i32 0, i32 7
  store i32 %607, i32* %609, align 8
  %610 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %611 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %610, i32 0, i32 7
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %614 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %612, %615
  %617 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %618 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %617, i32 0, i32 9
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %621 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %624 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %623, i32 0, i32 5
  %625 = load i32, i32* %624, align 8
  %626 = add i32 %622, %625
  %627 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %628 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %627, i32 0, i32 6
  %629 = load i32, i32* %628, align 4
  %630 = add i32 %626, %629
  %631 = mul i32 %619, %630
  %632 = add i32 %616, %631
  %633 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %634 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %633, i32 0, i32 10
  %635 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %634, i32 0, i32 0
  store i32 %632, i32* %635, align 4
  %636 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %637 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %636, i32 0, i32 11
  %638 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i32 0, i32 0
  store i32 0, i32* %638, align 4
  br label %640

639:                                              ; preds = %201
  br label %640

640:                                              ; preds = %639, %596, %559, %493, %438, %399, %383, %369, %332, %313, %299, %273, %228
  %641 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %642 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %641, i32 0, i32 10
  %643 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 4
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %667

646:                                              ; preds = %640
  %647 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %648 = load i32, i32* @BANK_L_CTX, align 4
  %649 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %650 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %649, i32 0, i32 10
  %651 = call i32 @s5p_mfc_alloc_generic_buf(%struct.s5p_mfc_dev* %647, i32 %648, %struct.TYPE_4__* %650)
  store i32 %651, i32* %9, align 4
  %652 = load i32, i32* %9, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %646
  %655 = call i32 @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %656 = load i32, i32* %9, align 4
  store i32 %656, i32* %2, align 4
  br label %668

657:                                              ; preds = %646
  %658 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %659 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %658, i32 0, i32 10
  %660 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* @MFC_BANK1_ALIGN_ORDER, align 4
  %663 = shl i32 1, %662
  %664 = sub nsw i32 %663, 1
  %665 = and i32 %661, %664
  %666 = call i32 @BUG_ON(i32 %665)
  br label %667

667:                                              ; preds = %657, %640
  store i32 0, i32* %2, align 4
  br label %668

668:                                              ; preds = %667, %654, %197
  %669 = load i32, i32* %2, align 4
  ret i32 %669
}

declare dso_local i32 @MB_WIDTH(i32) #1

declare dso_local i32 @MB_HEIGHT(i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i64 @IS_MFCV10(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @S5P_FIMV_TMV_BUFFER_SIZE_V8(i32, i32) #1

declare dso_local i32 @S5P_FIMV_TMV_BUFFER_SIZE_V6(i32, i32) #1

declare dso_local i32 @S5P_MFC_LCU_WIDTH(i32) #1

declare dso_local i32 @S5P_MFC_LCU_HEIGHT(i32) #1

declare dso_local i32 @S5P_FIMV_ME_BUFFER_SIZE_V8(i32, i32, i32, i32) #1

declare dso_local i32 @S5P_FIMV_ME_BUFFER_SIZE_V6(i32, i32, i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_DEC_V8(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_DEC_V6(i32, i32) #1

declare dso_local i32 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_DEC_V7(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_DEC_V6(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VC1_DEC_V6(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H263_DEC_V6(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_DEC_V8(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_DEC_V6(i32, i32) #1

declare dso_local i32 @ENC_V100_H264_ME_SIZE(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_ENC_V8(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_H264_ENC_V6(i32, i32) #1

declare dso_local i32 @ENC_V100_MPEG4_ME_SIZE(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_MPEG4_ENC_V6(i32, i32) #1

declare dso_local i32 @ENC_V100_VP8_ME_SIZE(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_ENC_V8(i32, i32) #1

declare dso_local i32 @S5P_FIMV_SCRATCH_BUF_SIZE_VP8_ENC_V7(i32, i32) #1

declare dso_local i32 @ENC_V100_HEVC_ME_SIZE(i32, i32) #1

declare dso_local i32 @s5p_mfc_alloc_generic_buf(%struct.s5p_mfc_dev*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
