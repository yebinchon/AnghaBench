; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set_trans_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set_trans_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_ctx = type { i32, %struct.TYPE_17__, %struct.TYPE_17__, i64, i64, %struct.rockchip_rga* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.rockchip_rga = type { i8**, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%union.rga_src_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i8*, i32 }
%union.rga_dst_info = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i8*, i32 }
%union.rga_src_x_factor = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i8* }
%union.rga_src_y_factor = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8* }
%union.rga_src_vir_info = type { i8* }
%union.rga_src_act_info = type { i8* }
%union.rga_dst_vir_info = type { i8* }
%union.rga_dst_act_info = type { i8* }
%struct.rga_addr_offset = type { i8*, i8*, i8* }
%struct.rga_corners_addr_offset = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8*, i8* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }

@RGA_SRC_INFO = common dso_local global i32 0, align 4
@RGA_MODE_BASE_REG = common dso_local global i32 0, align 4
@RGA_DST_INFO = common dso_local global i32 0, align 4
@RGA_SRC_X_FACTOR = common dso_local global i32 0, align 4
@RGA_SRC_Y_FACTOR = common dso_local global i32 0, align 4
@RGA_SRC_VIR_INFO = common dso_local global i32 0, align 4
@RGA_SRC_ACT_INFO = common dso_local global i32 0, align 4
@RGA_DST_VIR_INFO = common dso_local global i32 0, align 4
@RGA_DST_ACT_INFO = common dso_local global i32 0, align 4
@RGA_COLOR_FMT_YUV422SP = common dso_local global i64 0, align 8
@RGA_SRC_CSC_MODE_BT709_R0 = common dso_local global i8* null, align 8
@RGA_SRC_CSC_MODE_BT601_R0 = common dso_local global i8* null, align 8
@RGA_DST_CSC_MODE_BT601_R0 = common dso_local global i8* null, align 8
@RGA_SRC_MIRR_MODE_X = common dso_local global i32 0, align 4
@RGA_SRC_MIRR_MODE_Y = common dso_local global i32 0, align 4
@RGA_SRC_ROT_MODE_90_DEGREE = common dso_local global i64 0, align 8
@RGA_SRC_ROT_MODE_180_DEGREE = common dso_local global i64 0, align 8
@RGA_SRC_ROT_MODE_270_DEGREE = common dso_local global i64 0, align 8
@RGA_SRC_ROT_MODE_0_DEGREE = common dso_local global i64 0, align 8
@RGA_SRC_HSCL_MODE_NO = common dso_local global i32 0, align 4
@RGA_SRC_HSCL_MODE_DOWN = common dso_local global i32 0, align 4
@RGA_SRC_HSCL_MODE_UP = common dso_local global i32 0, align 4
@RGA_SRC_VSCL_MODE_NO = common dso_local global i32 0, align 4
@RGA_SRC_VSCL_MODE_DOWN = common dso_local global i32 0, align 4
@RGA_SRC_VSCL_MODE_UP = common dso_local global i32 0, align 4
@RGA_SRC_Y_RGB_BASE_ADDR = common dso_local global i32 0, align 4
@RGA_SRC_CB_BASE_ADDR = common dso_local global i32 0, align 4
@RGA_SRC_CR_BASE_ADDR = common dso_local global i32 0, align 4
@RGA_DST_Y_RGB_BASE_ADDR = common dso_local global i32 0, align 4
@RGA_DST_CB_BASE_ADDR = common dso_local global i32 0, align 4
@RGA_DST_CR_BASE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rga_ctx*)* @rga_cmd_set_trans_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rga_cmd_set_trans_info(%struct.rga_ctx* %0) #0 {
  %2 = alloca %struct.rga_ctx*, align 8
  %3 = alloca %struct.rockchip_rga*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.rga_src_info, align 8
  %16 = alloca %union.rga_dst_info, align 8
  %17 = alloca %union.rga_src_x_factor, align 8
  %18 = alloca %union.rga_src_y_factor, align 8
  %19 = alloca %union.rga_src_vir_info, align 8
  %20 = alloca %union.rga_src_act_info, align 8
  %21 = alloca %union.rga_dst_vir_info, align 8
  %22 = alloca %union.rga_dst_act_info, align 8
  %23 = alloca %struct.rga_addr_offset*, align 8
  %24 = alloca %struct.rga_corners_addr_offset, align 8
  %25 = alloca %struct.rga_corners_addr_offset, align 8
  %26 = alloca %struct.rga_corners_addr_offset, align 8
  %27 = alloca %struct.rga_corners_addr_offset, align 8
  store %struct.rga_ctx* %0, %struct.rga_ctx** %2, align 8
  %28 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %28, i32 0, i32 5
  %30 = load %struct.rockchip_rga*, %struct.rockchip_rga** %29, align 8
  store %struct.rockchip_rga* %30, %struct.rockchip_rga** %3, align 8
  %31 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %32 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  store i8** %33, i8*** %4, align 8
  %34 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  %59 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  %69 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %70 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* @RGA_SRC_INFO, align 4
  %76 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %77 = sub nsw i32 %75, %76
  %78 = ashr i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %74, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast %union.rga_src_info* %15 to i8**
  store i8* %81, i8** %82, align 8
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32, i32* @RGA_DST_INFO, align 4
  %85 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %86 = sub nsw i32 %84, %85
  %87 = ashr i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %83, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast %union.rga_dst_info* %16 to i8**
  store i8* %90, i8** %91, align 8
  %92 = load i8**, i8*** %4, align 8
  %93 = load i32, i32* @RGA_SRC_X_FACTOR, align 4
  %94 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %92, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast %union.rga_src_x_factor* %17 to i8**
  store i8* %99, i8** %100, align 8
  %101 = load i8**, i8*** %4, align 8
  %102 = load i32, i32* @RGA_SRC_Y_FACTOR, align 4
  %103 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %104 = sub nsw i32 %102, %103
  %105 = ashr i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %101, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast %union.rga_src_y_factor* %18 to i8**
  store i8* %108, i8** %109, align 8
  %110 = load i8**, i8*** %4, align 8
  %111 = load i32, i32* @RGA_SRC_VIR_INFO, align 4
  %112 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %113 = sub nsw i32 %111, %112
  %114 = ashr i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %110, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = bitcast %union.rga_src_vir_info* %19 to i8**
  store i8* %117, i8** %118, align 8
  %119 = load i8**, i8*** %4, align 8
  %120 = load i32, i32* @RGA_SRC_ACT_INFO, align 4
  %121 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %122 = sub nsw i32 %120, %121
  %123 = ashr i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %119, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast %union.rga_src_act_info* %20 to i8**
  store i8* %126, i8** %127, align 8
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* @RGA_DST_VIR_INFO, align 4
  %130 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %131 = sub nsw i32 %129, %130
  %132 = ashr i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %128, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = bitcast %union.rga_dst_vir_info* %21 to i8**
  store i8* %135, i8** %136, align 8
  %137 = load i8**, i8*** %4, align 8
  %138 = load i32, i32* @RGA_DST_ACT_INFO, align 4
  %139 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %140 = sub nsw i32 %138, %139
  %141 = ashr i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %137, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = bitcast %union.rga_dst_act_info* %22 to i8**
  store i8* %144, i8** %145, align 8
  %146 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %147 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %155 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %163 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = bitcast %union.rga_dst_info* %16 to %struct.TYPE_19__*
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %171 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = bitcast %union.rga_dst_info* %16 to %struct.TYPE_19__*
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %179 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @RGA_COLOR_FMT_YUV422SP, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %1
  %187 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %188 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @RGA_COLOR_FMT_YUV422SP, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %186
  %196 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %197 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  switch i32 %199, label %204 [
    i32 128, label %200
  ]

200:                                              ; preds = %195
  %201 = load i8*, i8** @RGA_SRC_CSC_MODE_BT709_R0, align 8
  %202 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  br label %208

204:                                              ; preds = %195
  %205 = load i8*, i8** @RGA_SRC_CSC_MODE_BT601_R0, align 8
  %206 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 5
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %200
  br label %209

209:                                              ; preds = %208, %186
  br label %210

210:                                              ; preds = %209, %1
  %211 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %212 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @RGA_COLOR_FMT_YUV422SP, align 8
  %218 = icmp sge i64 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %210
  %220 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %221 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  switch i32 %223, label %228 [
    i32 128, label %224
  ]

224:                                              ; preds = %219
  %225 = load i8*, i8** @RGA_SRC_CSC_MODE_BT709_R0, align 8
  %226 = bitcast %union.rga_dst_info* %16 to %struct.TYPE_19__*
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  br label %232

228:                                              ; preds = %219
  %229 = load i8*, i8** @RGA_DST_CSC_MODE_BT601_R0, align 8
  %230 = bitcast %union.rga_dst_info* %16 to %struct.TYPE_19__*
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %228, %224
  br label %233

233:                                              ; preds = %232, %210
  %234 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %235 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @RGA_SRC_MIRR_MODE_X, align 4
  %240 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %233
  %245 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %246 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i32, i32* @RGA_SRC_MIRR_MODE_Y, align 4
  %251 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %257 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  switch i32 %258, label %271 [
    i32 90, label %259
    i32 180, label %263
    i32 270, label %267
  ]

259:                                              ; preds = %255
  %260 = load i64, i64* @RGA_SRC_ROT_MODE_90_DEGREE, align 8
  %261 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  store i64 %260, i64* %262, align 8
  br label %275

263:                                              ; preds = %255
  %264 = load i64, i64* @RGA_SRC_ROT_MODE_180_DEGREE, align 8
  %265 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  store i64 %264, i64* %266, align 8
  br label %275

267:                                              ; preds = %255
  %268 = load i64, i64* @RGA_SRC_ROT_MODE_270_DEGREE, align 8
  %269 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  store i64 %268, i64* %270, align 8
  br label %275

271:                                              ; preds = %255
  %272 = load i64, i64* @RGA_SRC_ROT_MODE_0_DEGREE, align 8
  %273 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %271, %267, %263, %259
  %276 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @RGA_SRC_ROT_MODE_90_DEGREE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %287, label %281

281:                                              ; preds = %275
  %282 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @RGA_SRC_ROT_MODE_270_DEGREE, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %319

287:                                              ; preds = %281, %275
  %288 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %289 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %295 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %316

299:                                              ; preds = %293, %287
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %7, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i32, i32* %7, align 4
  %305 = sub i32 %304, 8
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %303, %299
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %11, align 4
  %309 = sub i32 %307, %308
  %310 = call i32 @abs(i32 %309)
  %311 = icmp slt i32 %310, 16
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  %313 = load i32, i32* %8, align 4
  %314 = sub i32 %313, 16
  store i32 %314, i32* %8, align 4
  br label %315

315:                                              ; preds = %312, %306
  br label %316

316:                                              ; preds = %315, %293
  %317 = load i32, i32* %12, align 4
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %11, align 4
  store i32 %318, i32* %5, align 4
  br label %322

319:                                              ; preds = %281
  %320 = load i32, i32* %12, align 4
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %11, align 4
  store i32 %321, i32* %6, align 4
  br label %322

322:                                              ; preds = %319, %316
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %5, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load i32, i32* @RGA_SRC_HSCL_MODE_NO, align 4
  %328 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 4
  store i32 %327, i32* %329, align 8
  %330 = bitcast %union.rga_src_x_factor* %17 to i8**
  store i8* null, i8** %330, align 8
  br label %357

331:                                              ; preds = %322
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %5, align 4
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = load i32, i32* @RGA_SRC_HSCL_MODE_DOWN, align 4
  %337 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 8
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* %5, align 4
  %341 = call i8* @rga_get_scaling(i32 %339, i32 %340)
  %342 = getelementptr i8, i8* %341, i64 1
  %343 = bitcast %union.rga_src_x_factor* %17 to %struct.TYPE_21__*
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  br label %356

345:                                              ; preds = %331
  %346 = load i32, i32* @RGA_SRC_HSCL_MODE_UP, align 4
  %347 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 4
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sub i32 %349, 1
  %351 = load i32, i32* %5, align 4
  %352 = sub i32 %351, 1
  %353 = call i8* @rga_get_scaling(i32 %350, i32 %352)
  %354 = bitcast %union.rga_src_x_factor* %17 to %struct.TYPE_21__*
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 0
  store i8* %353, i8** %355, align 8
  br label %356

356:                                              ; preds = %345, %335
  br label %357

357:                                              ; preds = %356, %326
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* %6, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %357
  %362 = load i32, i32* @RGA_SRC_VSCL_MODE_NO, align 4
  %363 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 3
  store i32 %362, i32* %364, align 4
  %365 = bitcast %union.rga_src_y_factor* %18 to i8**
  store i8* null, i8** %365, align 8
  br label %392

366:                                              ; preds = %357
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %6, align 4
  %369 = icmp ugt i32 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = load i32, i32* @RGA_SRC_VSCL_MODE_DOWN, align 4
  %372 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* %6, align 4
  %376 = call i8* @rga_get_scaling(i32 %374, i32 %375)
  %377 = getelementptr i8, i8* %376, i64 1
  %378 = bitcast %union.rga_src_y_factor* %18 to %struct.TYPE_22__*
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  br label %391

380:                                              ; preds = %366
  %381 = load i32, i32* @RGA_SRC_VSCL_MODE_UP, align 4
  %382 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 3
  store i32 %381, i32* %383, align 4
  %384 = load i32, i32* %7, align 4
  %385 = sub i32 %384, 1
  %386 = load i32, i32* %6, align 4
  %387 = sub i32 %386, 1
  %388 = call i8* @rga_get_scaling(i32 %385, i32 %387)
  %389 = bitcast %union.rga_src_y_factor* %18 to %struct.TYPE_22__*
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 0
  store i8* %388, i8** %390, align 8
  br label %391

391:                                              ; preds = %380, %370
  br label %392

392:                                              ; preds = %391, %361
  %393 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %394 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = ashr i32 %396, 2
  %398 = bitcast %union.rga_src_vir_info* %19 to %struct.TYPE_23__*
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  %400 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %401 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = ashr i32 %403, 2
  %405 = bitcast %union.rga_src_vir_info* %19 to %struct.TYPE_23__*
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  %407 = load i32, i32* %7, align 4
  %408 = sub i32 %407, 1
  %409 = bitcast %union.rga_src_act_info* %20 to %struct.TYPE_24__*
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 0
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sub i32 %411, 1
  %413 = bitcast %union.rga_src_act_info* %20 to %struct.TYPE_24__*
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  %415 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %416 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = ashr i32 %418, 2
  %420 = bitcast %union.rga_dst_vir_info* %21 to %struct.TYPE_25__*
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load i32, i32* %11, align 4
  %423 = sub i32 %422, 1
  %424 = bitcast %union.rga_dst_act_info* %22 to %struct.TYPE_26__*
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 0
  store i32 %423, i32* %425, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sub i32 %426, 1
  %428 = bitcast %union.rga_dst_act_info* %22 to %struct.TYPE_26__*
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 1
  store i32 %427, i32* %429, align 4
  %430 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %431 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %430, i32 0, i32 2
  %432 = load i32, i32* %9, align 4
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %7, align 4
  call void @rga_get_addr_offset(%struct.rga_corners_addr_offset* sret %26, %struct.TYPE_17__* %431, i32 %432, i32 %433, i32 %434, i32 %435)
  %436 = bitcast %struct.rga_corners_addr_offset* %25 to i8*
  %437 = bitcast %struct.rga_corners_addr_offset* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %436, i8* align 8 %437, i64 24, i1 false)
  %438 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %439 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %438, i32 0, i32 1
  %440 = load i32, i32* %13, align 4
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %12, align 4
  %443 = load i32, i32* %11, align 4
  call void @rga_get_addr_offset(%struct.rga_corners_addr_offset* sret %27, %struct.TYPE_17__* %439, i32 %440, i32 %441, i32 %442, i32 %443)
  %444 = bitcast %struct.rga_corners_addr_offset* %24 to i8*
  %445 = bitcast %struct.rga_corners_addr_offset* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %444, i8* align 8 %445, i64 24, i1 false)
  %446 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = bitcast %union.rga_src_info* %15 to %struct.TYPE_14__*
  %450 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call %struct.rga_addr_offset* @rga_lookup_draw_pos(%struct.rga_corners_addr_offset* %24, i64 %448, i32 %451)
  store %struct.rga_addr_offset* %452, %struct.rga_addr_offset** %23, align 8
  %453 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %25, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 2
  %455 = load i8*, i8** %454, align 8
  %456 = load i8**, i8*** %4, align 8
  %457 = load i32, i32* @RGA_SRC_Y_RGB_BASE_ADDR, align 4
  %458 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %459 = sub nsw i32 %457, %458
  %460 = ashr i32 %459, 2
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %456, i64 %461
  store i8* %455, i8** %462, align 8
  %463 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %25, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 1
  %465 = load i8*, i8** %464, align 8
  %466 = load i8**, i8*** %4, align 8
  %467 = load i32, i32* @RGA_SRC_CB_BASE_ADDR, align 4
  %468 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %469 = sub nsw i32 %467, %468
  %470 = ashr i32 %469, 2
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %466, i64 %471
  store i8* %465, i8** %472, align 8
  %473 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %25, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load i8**, i8*** %4, align 8
  %477 = load i32, i32* @RGA_SRC_CR_BASE_ADDR, align 4
  %478 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %479 = sub nsw i32 %477, %478
  %480 = ashr i32 %479, 2
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8*, i8** %476, i64 %481
  store i8* %475, i8** %482, align 8
  %483 = bitcast %union.rga_src_x_factor* %17 to i8**
  %484 = load i8*, i8** %483, align 8
  %485 = load i8**, i8*** %4, align 8
  %486 = load i32, i32* @RGA_SRC_X_FACTOR, align 4
  %487 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %488 = sub nsw i32 %486, %487
  %489 = ashr i32 %488, 2
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8*, i8** %485, i64 %490
  store i8* %484, i8** %491, align 8
  %492 = bitcast %union.rga_src_y_factor* %18 to i8**
  %493 = load i8*, i8** %492, align 8
  %494 = load i8**, i8*** %4, align 8
  %495 = load i32, i32* @RGA_SRC_Y_FACTOR, align 4
  %496 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %497 = sub nsw i32 %495, %496
  %498 = ashr i32 %497, 2
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8*, i8** %494, i64 %499
  store i8* %493, i8** %500, align 8
  %501 = bitcast %union.rga_src_vir_info* %19 to i8**
  %502 = load i8*, i8** %501, align 8
  %503 = load i8**, i8*** %4, align 8
  %504 = load i32, i32* @RGA_SRC_VIR_INFO, align 4
  %505 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %506 = sub nsw i32 %504, %505
  %507 = ashr i32 %506, 2
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8*, i8** %503, i64 %508
  store i8* %502, i8** %509, align 8
  %510 = bitcast %union.rga_src_act_info* %20 to i8**
  %511 = load i8*, i8** %510, align 8
  %512 = load i8**, i8*** %4, align 8
  %513 = load i32, i32* @RGA_SRC_ACT_INFO, align 4
  %514 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %515 = sub nsw i32 %513, %514
  %516 = ashr i32 %515, 2
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8*, i8** %512, i64 %517
  store i8* %511, i8** %518, align 8
  %519 = bitcast %union.rga_src_info* %15 to i8**
  %520 = load i8*, i8** %519, align 8
  %521 = load i8**, i8*** %4, align 8
  %522 = load i32, i32* @RGA_SRC_INFO, align 4
  %523 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %524 = sub nsw i32 %522, %523
  %525 = ashr i32 %524, 2
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8*, i8** %521, i64 %526
  store i8* %520, i8** %527, align 8
  %528 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %23, align 8
  %529 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %528, i32 0, i32 2
  %530 = load i8*, i8** %529, align 8
  %531 = load i8**, i8*** %4, align 8
  %532 = load i32, i32* @RGA_DST_Y_RGB_BASE_ADDR, align 4
  %533 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %534 = sub nsw i32 %532, %533
  %535 = ashr i32 %534, 2
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8*, i8** %531, i64 %536
  store i8* %530, i8** %537, align 8
  %538 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %23, align 8
  %539 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %538, i32 0, i32 1
  %540 = load i8*, i8** %539, align 8
  %541 = load i8**, i8*** %4, align 8
  %542 = load i32, i32* @RGA_DST_CB_BASE_ADDR, align 4
  %543 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %544 = sub nsw i32 %542, %543
  %545 = ashr i32 %544, 2
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8*, i8** %541, i64 %546
  store i8* %540, i8** %547, align 8
  %548 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %23, align 8
  %549 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %548, i32 0, i32 0
  %550 = load i8*, i8** %549, align 8
  %551 = load i8**, i8*** %4, align 8
  %552 = load i32, i32* @RGA_DST_CR_BASE_ADDR, align 4
  %553 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %554 = sub nsw i32 %552, %553
  %555 = ashr i32 %554, 2
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8*, i8** %551, i64 %556
  store i8* %550, i8** %557, align 8
  %558 = bitcast %union.rga_dst_vir_info* %21 to i8**
  %559 = load i8*, i8** %558, align 8
  %560 = load i8**, i8*** %4, align 8
  %561 = load i32, i32* @RGA_DST_VIR_INFO, align 4
  %562 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %563 = sub nsw i32 %561, %562
  %564 = ashr i32 %563, 2
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8*, i8** %560, i64 %565
  store i8* %559, i8** %566, align 8
  %567 = bitcast %union.rga_dst_act_info* %22 to i8**
  %568 = load i8*, i8** %567, align 8
  %569 = load i8**, i8*** %4, align 8
  %570 = load i32, i32* @RGA_DST_ACT_INFO, align 4
  %571 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %572 = sub nsw i32 %570, %571
  %573 = ashr i32 %572, 2
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8*, i8** %569, i64 %574
  store i8* %568, i8** %575, align 8
  %576 = bitcast %union.rga_dst_info* %16 to i8**
  %577 = load i8*, i8** %576, align 8
  %578 = load i8**, i8*** %4, align 8
  %579 = load i32, i32* @RGA_DST_INFO, align 4
  %580 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %581 = sub nsw i32 %579, %580
  %582 = ashr i32 %581, 2
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8*, i8** %578, i64 %583
  store i8* %577, i8** %584, align 8
  ret void
}

declare dso_local i32 @abs(i32) #1

declare dso_local i8* @rga_get_scaling(i32, i32) #1

declare dso_local void @rga_get_addr_offset(%struct.rga_corners_addr_offset* sret, %struct.TYPE_17__*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rga_addr_offset* @rga_lookup_draw_pos(%struct.rga_corners_addr_offset*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
