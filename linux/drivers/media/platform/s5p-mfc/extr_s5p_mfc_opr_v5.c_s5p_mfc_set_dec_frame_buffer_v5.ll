; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_dec_frame_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_dec_frame_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.s5p_mfc_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_SI_CH0_DPB_CONF_CTRL = common dso_local global i64 0, align 8
@S5P_FIMV_DPB_COUNT_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_H264_VERT_NB_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_VERT_NB_MV_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H264_NB_IP_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_NB_IP_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_NB_DCAC_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_NB_DCAC_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_UP_NB_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_UPNB_MV_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_SA_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_SP_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_STX_PARSER_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_MPEG4_OT_LINE_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_H263_OT_LINE_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_H263_UP_NB_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_H263_SA_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_H263_NB_DCAC_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_NB_DCAC_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_OT_LINE_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_UP_NB_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_SA_MV_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_BITPLANE3_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_DEC_VC1_BITPLANE_SIZE = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_BITPLANE2_ADR = common dso_local global i64 0, align 8
@S5P_FIMV_VC1_BITPLANE1_ADR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unknown codec for decoding (%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Frm size: %d ch: %d mv: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Luma %d: %zx\0A\00", align 1
@S5P_FIMV_DEC_LUMA_ADR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"\09Chroma %d: %zx\0A\00", align 1
@S5P_FIMV_DEC_CHROMA_ADR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"\09Buf2: %zx, size: %d\0A\00", align 1
@S5P_FIMV_H264_MV_ADR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Buf1: %zu, buf_size1: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Buf 1/2 size after: %d/%d (frames %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Not enough memory has been allocated\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ALLOC_LUMA_DPB_SIZE = common dso_local global i32 0, align 4
@ALLOC_CHROMA_DPB_SIZE = common dso_local global i32 0, align 4
@ALLOC_MV_SIZE = common dso_local global i32 0, align 4
@S5P_FIMV_CH_INIT_BUFS = common dso_local global i32 0, align 4
@S5P_FIMV_CH_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_INST_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_dec_frame_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_dec_frame_buffer_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %14, i32 0, i32 9
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %15, align 8
  store %struct.s5p_mfc_dev* %16, %struct.s5p_mfc_dev** %8, align 8
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %34 = load i64, i64* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 8
  %35 = call i32 @mfc_read(%struct.s5p_mfc_dev* %33, i64 %34)
  %36 = load i32, i32* @S5P_FIMV_DPB_COUNT_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 8
  %46 = call i32 @mfc_write(%struct.s5p_mfc_dev* %39, i32 %44, i64 %45)
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %48 = call i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx* %47)
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %291 [
    i32 132, label %52
    i32 130, label %79
    i32 133, label %145
    i32 128, label %198
    i32 129, label %198
    i32 131, label %290
  ]

52:                                               ; preds = %1
  %53 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @OFFSETA(i64 %54)
  %56 = load i64, i64* @S5P_FIMV_H264_VERT_NB_MV_ADR, align 8
  %57 = call i32 @mfc_write(%struct.s5p_mfc_dev* %53, i32 %55, i64 %56)
  %58 = load i64, i64* @S5P_FIMV_DEC_VERT_NB_MV_SIZE, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* @S5P_FIMV_DEC_VERT_NB_MV_SIZE, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @OFFSETA(i64 %67)
  %69 = load i64, i64* @S5P_FIMV_H264_NB_IP_ADR, align 8
  %70 = call i32 @mfc_write(%struct.s5p_mfc_dev* %66, i32 %68, i64 %69)
  %71 = load i64, i64* @S5P_FIMV_DEC_NB_IP_SIZE, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* @S5P_FIMV_DEC_NB_IP_SIZE, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  br label %298

79:                                               ; preds = %1
  %80 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @OFFSETA(i64 %81)
  %83 = load i64, i64* @S5P_FIMV_MPEG4_NB_DCAC_ADR, align 8
  %84 = call i32 @mfc_write(%struct.s5p_mfc_dev* %80, i32 %82, i64 %83)
  %85 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @OFFSETA(i64 %94)
  %96 = load i64, i64* @S5P_FIMV_MPEG4_UP_NB_MV_ADR, align 8
  %97 = call i32 @mfc_write(%struct.s5p_mfc_dev* %93, i32 %95, i64 %96)
  %98 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @OFFSETA(i64 %107)
  %109 = load i64, i64* @S5P_FIMV_MPEG4_SA_MV_ADR, align 8
  %110 = call i32 @mfc_write(%struct.s5p_mfc_dev* %106, i32 %108, i64 %109)
  %111 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %12, align 4
  %119 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @OFFSETA(i64 %120)
  %122 = load i64, i64* @S5P_FIMV_MPEG4_SP_ADR, align 8
  %123 = call i32 @mfc_write(%struct.s5p_mfc_dev* %119, i32 %121, i64 %122)
  %124 = load i64, i64* @S5P_FIMV_DEC_STX_PARSER_SIZE, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* @S5P_FIMV_DEC_STX_PARSER_SIZE, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %12, align 4
  %132 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @OFFSETA(i64 %133)
  %135 = load i64, i64* @S5P_FIMV_MPEG4_OT_LINE_ADR, align 8
  %136 = call i32 @mfc_write(%struct.s5p_mfc_dev* %132, i32 %134, i64 %135)
  %137 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %12, align 4
  br label %298

145:                                              ; preds = %1
  %146 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @OFFSETA(i64 %147)
  %149 = load i64, i64* @S5P_FIMV_H263_OT_LINE_ADR, align 8
  %150 = call i32 @mfc_write(%struct.s5p_mfc_dev* %146, i32 %148, i64 %149)
  %151 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @OFFSETA(i64 %160)
  %162 = load i64, i64* @S5P_FIMV_H263_UP_NB_MV_ADR, align 8
  %163 = call i32 @mfc_write(%struct.s5p_mfc_dev* %159, i32 %161, i64 %162)
  %164 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %165 = load i64, i64* %10, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %10, align 8
  %167 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = sub i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @OFFSETA(i64 %173)
  %175 = load i64, i64* @S5P_FIMV_H263_SA_MV_ADR, align 8
  %176 = call i32 @mfc_write(%struct.s5p_mfc_dev* %172, i32 %174, i64 %175)
  %177 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = sub i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %12, align 4
  %185 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @OFFSETA(i64 %186)
  %188 = load i64, i64* @S5P_FIMV_H263_NB_DCAC_ADR, align 8
  %189 = call i32 @mfc_write(%struct.s5p_mfc_dev* %185, i32 %187, i64 %188)
  %190 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %10, align 8
  %193 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = sub i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %12, align 4
  br label %298

198:                                              ; preds = %1, %1
  %199 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @OFFSETA(i64 %200)
  %202 = load i64, i64* @S5P_FIMV_VC1_NB_DCAC_ADR, align 8
  %203 = call i32 @mfc_write(%struct.s5p_mfc_dev* %199, i32 %201, i64 %202)
  %204 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %10, align 8
  %207 = load i64, i64* @S5P_FIMV_DEC_NB_DCAC_SIZE, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = sub i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %12, align 4
  %212 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @OFFSETA(i64 %213)
  %215 = load i64, i64* @S5P_FIMV_VC1_OT_LINE_ADR, align 8
  %216 = call i32 @mfc_write(%struct.s5p_mfc_dev* %212, i32 %214, i64 %215)
  %217 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %10, align 8
  %220 = load i64, i64* @S5P_FIMV_DEC_OVERLAP_TRANSFORM_SIZE, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = sub i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  %225 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %226 = load i64, i64* %10, align 8
  %227 = call i32 @OFFSETA(i64 %226)
  %228 = load i64, i64* @S5P_FIMV_VC1_UP_NB_MV_ADR, align 8
  %229 = call i32 @mfc_write(%struct.s5p_mfc_dev* %225, i32 %227, i64 %228)
  %230 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %231, %230
  store i64 %232, i64* %10, align 8
  %233 = load i64, i64* @S5P_FIMV_DEC_UPNB_MV_SIZE, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = sub i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %12, align 4
  %238 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %239 = load i64, i64* %10, align 8
  %240 = call i32 @OFFSETA(i64 %239)
  %241 = load i64, i64* @S5P_FIMV_VC1_SA_MV_ADR, align 8
  %242 = call i32 @mfc_write(%struct.s5p_mfc_dev* %238, i32 %240, i64 %241)
  %243 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %244 = load i64, i64* %10, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %10, align 8
  %246 = load i64, i64* @S5P_FIMV_DEC_SUB_ANCHOR_MV_SIZE, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = sub i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %12, align 4
  %251 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %252 = load i64, i64* %10, align 8
  %253 = call i32 @OFFSETA(i64 %252)
  %254 = load i64, i64* @S5P_FIMV_VC1_BITPLANE3_ADR, align 8
  %255 = call i32 @mfc_write(%struct.s5p_mfc_dev* %251, i32 %253, i64 %254)
  %256 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %257 = load i64, i64* %10, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %10, align 8
  %259 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %12, align 4
  %264 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %265 = load i64, i64* %10, align 8
  %266 = call i32 @OFFSETA(i64 %265)
  %267 = load i64, i64* @S5P_FIMV_VC1_BITPLANE2_ADR, align 8
  %268 = call i32 @mfc_write(%struct.s5p_mfc_dev* %264, i32 %266, i64 %267)
  %269 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %270 = load i64, i64* %10, align 8
  %271 = add i64 %270, %269
  store i64 %271, i64* %10, align 8
  %272 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = sub i64 %274, %272
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %12, align 4
  %277 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %278 = load i64, i64* %10, align 8
  %279 = call i32 @OFFSETA(i64 %278)
  %280 = load i64, i64* @S5P_FIMV_VC1_BITPLANE1_ADR, align 8
  %281 = call i32 @mfc_write(%struct.s5p_mfc_dev* %277, i32 %279, i64 %280)
  %282 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %283 = load i64, i64* %10, align 8
  %284 = add i64 %283, %282
  store i64 %284, i64* %10, align 8
  %285 = load i64, i64* @S5P_FIMV_DEC_VC1_BITPLANE_SIZE, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = sub i64 %287, %285
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %12, align 4
  br label %298

290:                                              ; preds = %1
  br label %298

291:                                              ; preds = %1
  %292 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %293 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %2, align 4
  br label %457

298:                                              ; preds = %290, %198, %145, %79, %52
  %299 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %300 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  store i32 %301, i32* %4, align 4
  %302 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %303 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %6, align 4
  %305 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %306 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* %7, align 4
  %311 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %308, i32 %309, i32 %310)
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %404, %298
  %313 = load i32, i32* %5, align 4
  %314 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %315 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp ult i32 %313, %316
  br i1 %317, label %318, label %407

318:                                              ; preds = %312
  %319 = load i32, i32* %5, align 4
  %320 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %321 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %320, i32 0, i32 6
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %319, i64 %329)
  %331 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %332 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %333 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %332, i32 0, i32 6
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @OFFSETB(i64 %341)
  %343 = load i64, i64* @S5P_FIMV_DEC_LUMA_ADR, align 8
  %344 = load i32, i32* %5, align 4
  %345 = mul i32 %344, 4
  %346 = zext i32 %345 to i64
  %347 = add nsw i64 %343, %346
  %348 = call i32 @mfc_write(%struct.s5p_mfc_dev* %331, i32 %342, i64 %347)
  %349 = load i32, i32* %5, align 4
  %350 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %351 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %350, i32 0, i32 6
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = load i32, i32* %5, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %349, i64 %359)
  %361 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %362 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %363 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %362, i32 0, i32 6
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %363, align 8
  %365 = load i32, i32* %5, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @OFFSETA(i64 %371)
  %373 = load i64, i64* @S5P_FIMV_DEC_CHROMA_ADR, align 8
  %374 = load i32, i32* %5, align 4
  %375 = mul i32 %374, 4
  %376 = zext i32 %375 to i64
  %377 = add nsw i64 %373, %376
  %378 = call i32 @mfc_write(%struct.s5p_mfc_dev* %361, i32 %372, i64 %377)
  %379 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %380 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %381, 132
  br i1 %382, label %383, label %403

383:                                              ; preds = %318
  %384 = load i64, i64* %11, align 8
  %385 = load i32, i32* %13, align 4
  %386 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %384, i32 %385)
  %387 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %388 = load i64, i64* %11, align 8
  %389 = call i32 @OFFSETB(i64 %388)
  %390 = load i64, i64* @S5P_FIMV_H264_MV_ADR, align 8
  %391 = load i32, i32* %5, align 4
  %392 = mul i32 %391, 4
  %393 = zext i32 %392 to i64
  %394 = add nsw i64 %390, %393
  %395 = call i32 @mfc_write(%struct.s5p_mfc_dev* %387, i32 %389, i64 %394)
  %396 = load i32, i32* %7, align 4
  %397 = zext i32 %396 to i64
  %398 = load i64, i64* %11, align 8
  %399 = add i64 %398, %397
  store i64 %399, i64* %11, align 8
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* %13, align 4
  %402 = sub i32 %401, %400
  store i32 %402, i32* %13, align 4
  br label %403

403:                                              ; preds = %383, %318
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %5, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %5, align 4
  br label %312

407:                                              ; preds = %312
  %408 = load i64, i64* %10, align 8
  %409 = load i32, i32* %12, align 4
  %410 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %408, i32 %409)
  %411 = load i32, i32* %12, align 4
  %412 = load i32, i32* %13, align 4
  %413 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %414 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %411, i32 %412, i32 %415)
  %417 = load i32, i32* %12, align 4
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %407
  %420 = load i32, i32* %13, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419, %407
  %423 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %424 = load i32, i32* @ENOMEM, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %2, align 4
  br label %457

426:                                              ; preds = %419
  %427 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %428 = load i32, i32* %4, align 4
  %429 = load i32, i32* @ALLOC_LUMA_DPB_SIZE, align 4
  %430 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %427, i32 %428, i32 %429)
  %431 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %432 = load i32, i32* %6, align 4
  %433 = load i32, i32* @ALLOC_CHROMA_DPB_SIZE, align 4
  %434 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %431, i32 %432, i32 %433)
  %435 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %436 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 132
  br i1 %438, label %439, label %444

439:                                              ; preds = %426
  %440 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @ALLOC_MV_SIZE, align 4
  %443 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %440, i32 %441, i32 %442)
  br label %444

444:                                              ; preds = %439, %426
  %445 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %446 = load i32, i32* @S5P_FIMV_CH_INIT_BUFS, align 4
  %447 = load i32, i32* @S5P_FIMV_CH_MASK, align 4
  %448 = and i32 %446, %447
  %449 = load i32, i32* @S5P_FIMV_CH_SHIFT, align 4
  %450 = shl i32 %448, %449
  %451 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %452 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = or i32 %450, %453
  %455 = load i64, i64* @S5P_FIMV_SI_CH0_INST_ID, align 8
  %456 = call i32 @mfc_write(%struct.s5p_mfc_dev* %445, i32 %454, i64 %455)
  store i32 0, i32* %2, align 4
  br label %457

457:                                              ; preds = %444, %422, %291
  %458 = load i32, i32* %2, align 4
  ret i32 %458
}

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i64) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i64) #1

declare dso_local i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @OFFSETA(i64) #1

declare dso_local i32 @mfc_err(i8*, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @OFFSETB(i64) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
