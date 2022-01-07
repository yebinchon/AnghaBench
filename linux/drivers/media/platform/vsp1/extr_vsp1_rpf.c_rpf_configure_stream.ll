; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vsp1_pipeline = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_rwpf = type { i32, i32, %struct.TYPE_10__, %struct.v4l2_pix_format_mplane, %struct.vsp1_format_info* }
%struct.TYPE_10__ = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vsp1_format_info = type { i32, i32, i64, i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64 }
%struct.v4l2_rect = type { i32, i32 }

@VI6_RPF_SRCM_PSTRIDE_Y_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRCM_PSTRIDE_C_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRCM_PSTRIDE = common dso_local global i32 0, align 4
@RWPF_PAD_SINK = common dso_local global i32 0, align 4
@RWPF_PAD_SOURCE = common dso_local global i32 0, align 4
@VI6_RPF_INFMT_CIPM = common dso_local global i32 0, align 4
@VI6_RPF_INFMT_RDFMT_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_INFMT_SPYCS = common dso_local global i32 0, align 4
@VI6_RPF_INFMT_SPUVS = common dso_local global i32 0, align 4
@VI6_RPF_INFMT_CSC = common dso_local global i32 0, align 4
@VI6_RPF_INFMT = common dso_local global i32 0, align 4
@VI6_RPF_DSWAP = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@VI6_RPF_LOC = common dso_local global i32 0, align 4
@VI6_RPF_LOC_HCOORD_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_LOC_VCOORD_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_ALPH_SEL = common dso_local global i32 0, align 4
@VI6_RPF_ALPH_SEL_AEXT_EXT = common dso_local global i32 0, align 4
@VI6_RPF_ALPH_SEL_ASEL_PACKED = common dso_local global i32 0, align 4
@VI6_RPF_ALPH_SEL_ASEL_FIXED = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FLAG_PREMUL_ALPHA = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA_A_MMD_RATIO = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA_P_MMD_RATIO = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA_P_MMD_NONE = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA_A_MMD_NONE = common dso_local global i32 0, align 4
@VI6_RPF_MSK_CTRL = common dso_local global i32 0, align 4
@VI6_RPF_CKEY_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @rpf_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpf_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_rwpf*, align 8
  %10 = alloca %struct.vsp1_format_info*, align 8
  %11 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.v4l2_rect*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %21 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %22 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %21, i32 0, i32 1
  %23 = call %struct.vsp1_rwpf* @to_rwpf(i32* %22)
  store %struct.vsp1_rwpf* %23, %struct.vsp1_rwpf** %9, align 8
  %24 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %25 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %24, i32 0, i32 4
  %26 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %25, align 8
  store %struct.vsp1_format_info* %26, %struct.vsp1_format_info** %10, align 8
  %27 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %28 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %27, i32 0, i32 3
  store %struct.v4l2_pix_format_mplane* %28, %struct.v4l2_pix_format_mplane** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VI6_RPF_SRCM_PSTRIDE_Y_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VI6_RPF_SRCM_PSTRIDE_C_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %16, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %41, %4
  %53 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %54 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %62 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %63 = load i32, i32* @VI6_RPF_SRCM_PSTRIDE, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %61, %struct.vsp1_dl_body* %62, i32 %63, i32 %64)
  %66 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %67 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %66, i32 0, i32 2
  %68 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %69 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RWPF_PAD_SINK, align 4
  %73 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__* %67, i32 %71, i32 %72)
  store %struct.v4l2_mbus_framefmt* %73, %struct.v4l2_mbus_framefmt** %13, align 8
  %74 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %75 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %74, i32 0, i32 2
  %76 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %77 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RWPF_PAD_SOURCE, align 4
  %81 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__* %75, i32 %79, i32 %80)
  store %struct.v4l2_mbus_framefmt* %81, %struct.v4l2_mbus_framefmt** %12, align 8
  %82 = load i32, i32* @VI6_RPF_INFMT_CIPM, align 4
  %83 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %84 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VI6_RPF_INFMT_RDFMT_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %82, %87
  store i32 %88, i32* %17, align 4
  %89 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %90 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %60
  %94 = load i32, i32* @VI6_RPF_INFMT_SPYCS, align 4
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %93, %60
  %98 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %99 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @VI6_RPF_INFMT_SPUVS, align 4
  %104 = load i32, i32* %17, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %108 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %111 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @VI6_RPF_INFMT_CSC, align 4
  %116 = load i32, i32* %17, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %120 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %121 = load i32, i32* @VI6_RPF_INFMT, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %119, %struct.vsp1_dl_body* %120, i32 %121, i32 %122)
  %124 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %125 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %126 = load i32, i32* @VI6_RPF_DSWAP, align 4
  %127 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %128 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %124, %struct.vsp1_dl_body* %125, i32 %126, i32 %129)
  %131 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %132 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %118
  %136 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %137 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %140 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %145 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %148 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.TYPE_9__* %138, i32 %143, i32 %146, i32 %147)
  store %struct.v4l2_rect* %148, %struct.v4l2_rect** %18, align 8
  %149 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %150 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %14, align 4
  %152 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %153 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %135, %118
  %156 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %157 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = udiv i32 %161, 2
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %165 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %166 = load i32, i32* @VI6_RPF_LOC, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @VI6_RPF_LOC_HCOORD_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @VI6_RPF_LOC_VCOORD_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = or i32 %169, %172
  %174 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %164, %struct.vsp1_dl_body* %165, i32 %166, i32 %173)
  %175 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %176 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %177 = load i32, i32* @VI6_RPF_ALPH_SEL, align 4
  %178 = load i32, i32* @VI6_RPF_ALPH_SEL_AEXT_EXT, align 4
  %179 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %180 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %163
  %184 = load i32, i32* @VI6_RPF_ALPH_SEL_ASEL_PACKED, align 4
  br label %187

185:                                              ; preds = %163
  %186 = load i32, i32* @VI6_RPF_ALPH_SEL_ASEL_FIXED, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = or i32 %178, %188
  %190 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %175, %struct.vsp1_dl_body* %176, i32 %177, i32 %189)
  %191 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %192 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %228

199:                                              ; preds = %187
  %200 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %10, align 8
  %201 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %11, align 8
  %206 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @V4L2_PIX_FMT_FLAG_PREMUL_ALPHA, align 4
  %209 = and i32 %207, %208
  store i32 %209, i32* %20, align 4
  %210 = load i32, i32* @VI6_RPF_MULT_ALPHA_A_MMD_RATIO, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @VI6_RPF_MULT_ALPHA_P_MMD_RATIO, align 4
  br label %217

215:                                              ; preds = %204
  %216 = load i32, i32* @VI6_RPF_MULT_ALPHA_P_MMD_NONE, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = or i32 %210, %218
  store i32 %219, i32* %19, align 4
  br label %224

220:                                              ; preds = %199
  %221 = load i32, i32* @VI6_RPF_MULT_ALPHA_A_MMD_NONE, align 4
  %222 = load i32, i32* @VI6_RPF_MULT_ALPHA_P_MMD_NONE, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %19, align 4
  br label %224

224:                                              ; preds = %220, %217
  %225 = load i32, i32* %19, align 4
  %226 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %227 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %224, %187
  %229 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %230 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %231 = load i32, i32* @VI6_RPF_MSK_CTRL, align 4
  %232 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %229, %struct.vsp1_dl_body* %230, i32 %231, i32 0)
  %233 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %234 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %235 = load i32, i32* @VI6_RPF_CKEY_CTRL, align 4
  %236 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %233, %struct.vsp1_dl_body* %234, i32 %235, i32 0)
  ret void
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

declare dso_local i32 @vsp1_rpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
