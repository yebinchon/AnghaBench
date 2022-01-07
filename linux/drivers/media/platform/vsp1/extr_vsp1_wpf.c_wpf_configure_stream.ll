; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32, %struct.TYPE_9__*, %struct.vsp1_rwpf**, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.vsp1_rwpf = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_6__, %struct.vsp1_format_info*, %struct.v4l2_pix_format_mplane }
%struct.TYPE_10__ = type { i32, i32, %struct.vsp1_device* }
%struct.vsp1_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.vsp1_format_info = type { i32, i32, i64, i64, i64 }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64 }

@RWPF_PAD_SINK = common dso_local global i32 0, align 4
@RWPF_PAD_SOURCE = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_WRFMT_SHIFT = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_ROT = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_PXA = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_SPYCS = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_SPUVS = common dso_local global i32 0, align 4
@VI6_WPF_DSTM_STRIDE_Y = common dso_local global i32 0, align 4
@VI6_WPF_DSTM_STRIDE_C = common dso_local global i32 0, align 4
@VI6_WPF_DSWAP = common dso_local global i32 0, align 4
@VSP1_HAS_WPF_HFLIP = common dso_local global i32 0, align 4
@VI6_WPF_ROT_CTRL = common dso_local global i32 0, align 4
@VI6_WPF_ROT_CTRL_LN16 = common dso_local global i32 0, align 4
@VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT = common dso_local global i32 0, align 4
@VI6_WPF_OUTFMT_CSC = common dso_local global i32 0, align 4
@VI6_DPR_WPF_FPORCH_FP_WPFN = common dso_local global i32 0, align 4
@VSP1_ENTITY_BRU = common dso_local global i64 0, align 8
@VI6_WPF_SRCRPF_VIRACT_MST = common dso_local global i32 0, align 4
@VI6_WPF_SRCRPF_VIRACT2_MST = common dso_local global i32 0, align 4
@VI6_WPF_SRCRPF = common dso_local global i32 0, align 4
@VI6_WFP_IRQ_ENB_DFEE = common dso_local global i32 0, align 4
@VI6_WPF_WRBCK_CTRL_WBMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @wpf_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpf_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_rwpf*, align 8
  %10 = alloca %struct.vsp1_device*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %19 = alloca %struct.vsp1_format_info*, align 8
  %20 = alloca %struct.vsp1_rwpf*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %21 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %22 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %21, i32 0, i32 0
  %23 = call %struct.vsp1_rwpf* @to_rwpf(i32* %22)
  store %struct.vsp1_rwpf* %23, %struct.vsp1_rwpf** %9, align 8
  %24 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %25 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.vsp1_device*, %struct.vsp1_device** %26, align 8
  store %struct.vsp1_device* %27, %struct.vsp1_device** %10, align 8
  %28 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %29 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %33 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %32, i32 0, i32 2
  %34 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %35 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RWPF_PAD_SINK, align 4
  %39 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__* %33, i32 %37, i32 %38)
  store %struct.v4l2_mbus_framefmt* %39, %struct.v4l2_mbus_framefmt** %12, align 8
  %40 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %41 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %40, i32 0, i32 2
  %42 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %43 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RWPF_PAD_SOURCE, align 4
  %47 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__* %41, i32 %45, i32 %46)
  store %struct.v4l2_mbus_framefmt* %47, %struct.v4l2_mbus_framefmt** %11, align 8
  %48 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %49 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %4
  %53 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %54 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %155

57:                                               ; preds = %52, %4
  %58 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %59 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %58, i32 0, i32 5
  store %struct.v4l2_pix_format_mplane* %59, %struct.v4l2_pix_format_mplane** %18, align 8
  %60 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %61 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %60, i32 0, i32 4
  %62 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %61, align 8
  store %struct.vsp1_format_info* %62, %struct.vsp1_format_info** %19, align 8
  %63 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %19, align 8
  %64 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VI6_WPF_OUTFMT_WRFMT_SHIFT, align 4
  %67 = shl i32 %65, %66
  store i32 %67, i32* %15, align 4
  %68 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %69 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load i32, i32* @VI6_WPF_OUTFMT_ROT, align 4
  %75 = load i32, i32* %15, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %57
  %78 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %19, align 8
  %79 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @VI6_WPF_OUTFMT_PXA, align 4
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %19, align 8
  %88 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @VI6_WPF_OUTFMT_SPYCS, align 4
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %19, align 8
  %97 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @VI6_WPF_OUTFMT_SPUVS, align 4
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %106 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %107 = load i32, i32* @VI6_WPF_DSTM_STRIDE_Y, align 4
  %108 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %18, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %105, %struct.vsp1_dl_body* %106, i32 %107, i32 %113)
  %115 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %18, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %130

119:                                              ; preds = %104
  %120 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %121 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %122 = load i32, i32* @VI6_WPF_DSTM_STRIDE_C, align 4
  %123 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %18, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %120, %struct.vsp1_dl_body* %121, i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %119, %104
  %131 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %132 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %133 = load i32, i32* @VI6_WPF_DSWAP, align 4
  %134 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %19, align 8
  %135 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %131, %struct.vsp1_dl_body* %132, i32 %133, i32 %136)
  %138 = load %struct.vsp1_device*, %struct.vsp1_device** %10, align 8
  %139 = load i32, i32* @VSP1_HAS_WPF_HFLIP, align 4
  %140 = call i64 @vsp1_feature(%struct.vsp1_device* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %130
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %147 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %148 = load i32, i32* @VI6_WPF_ROT_CTRL, align 4
  %149 = load i32, i32* @VI6_WPF_ROT_CTRL_LN16, align 4
  %150 = load i32, i32* @VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT, align 4
  %151 = shl i32 256, %150
  %152 = or i32 %149, %151
  %153 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %146, %struct.vsp1_dl_body* %147, i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %145, %142, %130
  br label %155

155:                                              ; preds = %154, %52
  %156 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %157 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %160 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i32, i32* @VI6_WPF_OUTFMT_CSC, align 4
  %165 = load i32, i32* %15, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %163, %155
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %170 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @VI6_DPR_WPF_FPORCH(i32 %172)
  %174 = load i32, i32* @VI6_DPR_WPF_FPORCH_FP_WPFN, align 4
  %175 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %171, i32 %173, i32 %174)
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %221, %167
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.vsp1_device*, %struct.vsp1_device** %10, align 8
  %179 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %184, label %224

184:                                              ; preds = %176
  %185 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %186 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %185, i32 0, i32 2
  %187 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %187, i64 %189
  %191 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %190, align 8
  store %struct.vsp1_rwpf* %191, %struct.vsp1_rwpf** %20, align 8
  %192 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %20, align 8
  %193 = icmp ne %struct.vsp1_rwpf* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %184
  br label %221

195:                                              ; preds = %184
  %196 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %197 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = icmp ne %struct.TYPE_9__* %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %195
  %201 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %202 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %20, align 8
  %207 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @VI6_WPF_SRCRPF_RPF_ACT_MST(i32 %209)
  br label %217

211:                                              ; preds = %200, %195
  %212 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %20, align 8
  %213 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @VI6_WPF_SRCRPF_RPF_ACT_SUB(i32 %215)
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i32 [ %210, %205 ], [ %216, %211 ]
  %219 = load i32, i32* %16, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %16, align 4
  br label %221

221:                                              ; preds = %217, %194
  %222 = load i32, i32* %14, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %176

224:                                              ; preds = %176
  %225 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %226 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %225, i32 0, i32 1
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = icmp ne %struct.TYPE_9__* %227, null
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %231 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %230, i32 0, i32 1
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @VSP1_ENTITY_BRU, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = load i32, i32* @VI6_WPF_SRCRPF_VIRACT_MST, align 4
  br label %241

239:                                              ; preds = %229
  %240 = load i32, i32* @VI6_WPF_SRCRPF_VIRACT2_MST, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %243 = load i32, i32* %16, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %16, align 4
  br label %245

245:                                              ; preds = %241, %224
  %246 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %247 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %248 = load i32, i32* @VI6_WPF_SRCRPF, align 4
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %246, %struct.vsp1_dl_body* %247, i32 %248, i32 %249)
  %251 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @VI6_WPF_IRQ_STA(i32 %252)
  %254 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %251, i32 %253, i32 0)
  %255 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @VI6_WPF_IRQ_ENB(i32 %256)
  %258 = load i32, i32* @VI6_WFP_IRQ_ENB_DFEE, align 4
  %259 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %255, i32 %257, i32 %258)
  %260 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %261 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %245
  %265 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %266 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %267 = call i32 @wpf_configure_writeback_chain(%struct.vsp1_rwpf* %265, %struct.vsp1_dl_list* %266)
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %272 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %270, %264
  br label %274

274:                                              ; preds = %273, %245
  %275 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %276 = load i32, i32* %13, align 4
  %277 = call i32 @VI6_WPF_WRBCK_CTRL(i32 %276)
  %278 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %279 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* @VI6_WPF_WRBCK_CTRL_WBMD, align 4
  br label %285

284:                                              ; preds = %274
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i32 [ %283, %282 ], [ 0, %284 ]
  %287 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %275, i32 %277, i32 %286)
  ret void
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vsp1_wpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i64 @vsp1_feature(%struct.vsp1_device*, i32) #1

declare dso_local i32 @vsp1_dl_body_write(%struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @VI6_DPR_WPF_FPORCH(i32) #1

declare dso_local i32 @VI6_WPF_SRCRPF_RPF_ACT_MST(i32) #1

declare dso_local i32 @VI6_WPF_SRCRPF_RPF_ACT_SUB(i32) #1

declare dso_local i32 @VI6_WPF_IRQ_STA(i32) #1

declare dso_local i32 @VI6_WPF_IRQ_ENB(i32) #1

declare dso_local i32 @wpf_configure_writeback_chain(%struct.vsp1_rwpf*, %struct.vsp1_dl_list*) #1

declare dso_local i32 @VI6_WPF_WRBCK_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
