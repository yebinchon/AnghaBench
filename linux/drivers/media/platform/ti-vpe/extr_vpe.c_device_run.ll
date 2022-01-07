; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__*, i64, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, i32**, i32*, %struct.TYPE_12__, %struct.vpe_q_data* }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i64, i32, %struct.sc_data* }
%struct.sc_data = type { i64, i32, i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.vpe_q_data = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@Q_DATA_DST = common dso_local global i64 0, align 8
@Q_DATA_SRC = common dso_local global i64 0, align 8
@Q_DATA_INTERLACED_SEQ_TB = common dso_local global i32 0, align 4
@CFD_MMR_CLIENT = common dso_local global i32 0, align 4
@CFD_SC_CLIENT = common dso_local global i32 0, align 4
@SC_COEF_SRAM_SIZE = common dso_local global i32 0, align 4
@VPE_PORT_MV_OUT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i64 0, align 8
@VPE_PORT_RGB_OUT = common dso_local global i32 0, align 4
@VPE_PORT_LUMA_OUT = common dso_local global i32 0, align 4
@VPE_PORT_CHROMA_OUT = common dso_local global i32 0, align 4
@VPE_PORT_LUMA3_IN = common dso_local global i32 0, align 4
@VPE_PORT_CHROMA3_IN = common dso_local global i32 0, align 4
@VPE_PORT_LUMA2_IN = common dso_local global i32 0, align 4
@VPE_PORT_CHROMA2_IN = common dso_local global i32 0, align 4
@VPE_PORT_LUMA1_IN = common dso_local global i32 0, align 4
@VPE_PORT_CHROMA1_IN = common dso_local global i32 0, align 4
@VPE_PORT_MV_IN = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA1_IN = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA1_IN = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA2_IN = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA2_IN = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA3_IN = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA3_IN = common dso_local global i32 0, align 4
@VPE_CHAN_MV_IN = common dso_local global i32 0, align 4
@VPE_CHAN_RGB_OUT = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA_OUT = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA_OUT = common dso_local global i32 0, align 4
@VPE_CHAN_MV_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca %struct.sc_data*, align 8
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca %struct.vpe_q_data*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vpe_ctx*
  store %struct.vpe_ctx* %8, %struct.vpe_ctx** %3, align 8
  %9 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load %struct.sc_data*, %struct.sc_data** %12, align 8
  store %struct.sc_data* %13, %struct.sc_data** %4, align 8
  %14 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %14, i32 0, i32 11
  %16 = load %struct.vpe_q_data*, %struct.vpe_q_data** %15, align 8
  %17 = load i64, i64* @Q_DATA_DST, align 8
  %18 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %16, i64 %17
  store %struct.vpe_q_data* %18, %struct.vpe_q_data** %5, align 8
  %19 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %19, i32 0, i32 11
  %21 = load %struct.vpe_q_data*, %struct.vpe_q_data** %20, align 8
  %22 = load i64, i64* @Q_DATA_SRC, align 8
  %23 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %21, i64 %22
  store %struct.vpe_q_data* %23, %struct.vpe_q_data** %6, align 8
  %24 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %1
  %29 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %30 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @Q_DATA_INTERLACED_SEQ_TB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @v4l2_m2m_next_src_buf(i32 %45)
  %47 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %47, i32 0, i32 8
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  store i32* %46, i32** %50, align 8
  %51 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %51, i32 0, i32 8
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  br label %77

59:                                               ; preds = %35, %28, %1
  %60 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @v4l2_m2m_src_buf_remove(i32 %63)
  %65 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %65, i32 0, i32 8
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  store i32* %64, i32** %68, align 8
  %69 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %69, i32 0, i32 8
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  br label %77

77:                                               ; preds = %59, %41
  %78 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32* @v4l2_m2m_dst_buf_remove(i32 %81)
  %83 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %83, i32 0, i32 9
  store i32* %82, i32** %84, align 8
  %85 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %77
  %96 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %96, i32 0, i32 8
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %137

102:                                              ; preds = %95
  %103 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %103, i32 0, i32 8
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %108, i32 0, i32 8
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 2
  store i32* %107, i32** %111, align 8
  %112 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %112, i32 0, i32 8
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 2
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @WARN_ON(i32 %118)
  %120 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %120, i32 0, i32 8
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %125, i32 0, i32 8
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %124, i32** %128, align 8
  %129 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %129, i32 0, i32 8
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i32 @WARN_ON(i32 %135)
  br label %137

137:                                              ; preds = %102, %95
  %138 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %144 = call i32 @config_edi_input_mode(%struct.vpe_ctx* %143, i32 3)
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145, %77
  %147 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %147, i32 0, i32 3
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %153 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %151, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %146
  %158 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %159 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %157, %146
  %163 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %169 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %168, i32 0, i32 7
  %170 = call i32 @vpdma_map_desc_buf(i32 %167, %struct.TYPE_15__* %169)
  %171 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %171, i32 0, i32 2
  %173 = load i32, i32* @CFD_MMR_CLIENT, align 4
  %174 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %174, i32 0, i32 7
  %176 = call i32 @vpdma_add_cfd_adb(%struct.TYPE_14__* %172, i32 %173, %struct.TYPE_15__* %175)
  %177 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %178 = call i32 @set_line_modes(%struct.vpe_ctx* %177)
  %179 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %183, i32 0, i32 3
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i64 %182, i64* %186, align 8
  %187 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %188 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %162, %157
  %190 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %191 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %194 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %192, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %189
  %199 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %200 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %198, %189
  %204 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %204, i32 0, i32 3
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %210 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %209, i32 0, i32 6
  %211 = call i32 @vpdma_map_desc_buf(i32 %208, %struct.TYPE_15__* %210)
  %212 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %213 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %212, i32 0, i32 2
  %214 = load i32, i32* @CFD_SC_CLIENT, align 4
  %215 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %216 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %215, i32 0, i32 6
  %217 = call i32 @vpdma_add_cfd_block(%struct.TYPE_14__* %213, i32 %214, %struct.TYPE_15__* %216, i32 0)
  %218 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %219 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %223 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %225 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %224, i32 0, i32 1
  store i32 0, i32* %225, align 8
  br label %226

226:                                              ; preds = %203, %198
  %227 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %228 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %231 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %229, %233
  br i1 %234, label %240, label %235

235:                                              ; preds = %226
  %236 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %237 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %235, %226
  %241 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %242 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %241, i32 0, i32 3
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %247 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %246, i32 0, i32 5
  %248 = call i32 @vpdma_map_desc_buf(i32 %245, %struct.TYPE_15__* %247)
  %249 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %250 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %249, i32 0, i32 2
  %251 = load i32, i32* @CFD_SC_CLIENT, align 4
  %252 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %253 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %252, i32 0, i32 5
  %254 = load i32, i32* @SC_COEF_SRAM_SIZE, align 4
  %255 = ashr i32 %254, 4
  %256 = call i32 @vpdma_add_cfd_block(%struct.TYPE_14__* %250, i32 %251, %struct.TYPE_15__* %253, i32 %255)
  %257 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %258 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %262 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.sc_data*, %struct.sc_data** %4, align 8
  %264 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %263, i32 0, i32 3
  store i32 0, i32* %264, align 8
  br label %265

265:                                              ; preds = %240, %235
  %266 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %267 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %272 = load i32, i32* @VPE_PORT_MV_OUT, align 4
  %273 = call i32 @add_out_dtd(%struct.vpe_ctx* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %265
  %275 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %276 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @V4L2_COLORSPACE_SRGB, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %282 = load i32, i32* @VPE_PORT_RGB_OUT, align 4
  %283 = call i32 @add_out_dtd(%struct.vpe_ctx* %281, i32 %282)
  br label %299

284:                                              ; preds = %274
  %285 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %286 = load i32, i32* @VPE_PORT_LUMA_OUT, align 4
  %287 = call i32 @add_out_dtd(%struct.vpe_ctx* %285, i32 %286)
  %288 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %289 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %288, i32 0, i32 2
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %284
  %295 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %296 = load i32, i32* @VPE_PORT_CHROMA_OUT, align 4
  %297 = call i32 @add_out_dtd(%struct.vpe_ctx* %295, i32 %296)
  br label %298

298:                                              ; preds = %294, %284
  br label %299

299:                                              ; preds = %298, %280
  %300 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %301 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %299
  %305 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %306 = load i32, i32* @VPE_PORT_LUMA3_IN, align 4
  %307 = call i32 @add_in_dtd(%struct.vpe_ctx* %305, i32 %306)
  %308 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %309 = load i32, i32* @VPE_PORT_CHROMA3_IN, align 4
  %310 = call i32 @add_in_dtd(%struct.vpe_ctx* %308, i32 %309)
  %311 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %312 = load i32, i32* @VPE_PORT_LUMA2_IN, align 4
  %313 = call i32 @add_in_dtd(%struct.vpe_ctx* %311, i32 %312)
  %314 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %315 = load i32, i32* @VPE_PORT_CHROMA2_IN, align 4
  %316 = call i32 @add_in_dtd(%struct.vpe_ctx* %314, i32 %315)
  br label %317

317:                                              ; preds = %304, %299
  %318 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %319 = load i32, i32* @VPE_PORT_LUMA1_IN, align 4
  %320 = call i32 @add_in_dtd(%struct.vpe_ctx* %318, i32 %319)
  %321 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %322 = load i32, i32* @VPE_PORT_CHROMA1_IN, align 4
  %323 = call i32 @add_in_dtd(%struct.vpe_ctx* %321, i32 %322)
  %324 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %325 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %317
  %329 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %330 = load i32, i32* @VPE_PORT_MV_IN, align 4
  %331 = call i32 @add_in_dtd(%struct.vpe_ctx* %329, i32 %330)
  br label %332

332:                                              ; preds = %328, %317
  %333 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %334 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %333, i32 0, i32 2
  %335 = load i32, i32* @VPE_CHAN_LUMA1_IN, align 4
  %336 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %334, i32 %335)
  %337 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %338 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %337, i32 0, i32 2
  %339 = load i32, i32* @VPE_CHAN_CHROMA1_IN, align 4
  %340 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %338, i32 %339)
  %341 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %342 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %366

345:                                              ; preds = %332
  %346 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %347 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %346, i32 0, i32 2
  %348 = load i32, i32* @VPE_CHAN_LUMA2_IN, align 4
  %349 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %347, i32 %348)
  %350 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %351 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %350, i32 0, i32 2
  %352 = load i32, i32* @VPE_CHAN_CHROMA2_IN, align 4
  %353 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %351, i32 %352)
  %354 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %355 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %354, i32 0, i32 2
  %356 = load i32, i32* @VPE_CHAN_LUMA3_IN, align 4
  %357 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %355, i32 %356)
  %358 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %359 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %358, i32 0, i32 2
  %360 = load i32, i32* @VPE_CHAN_CHROMA3_IN, align 4
  %361 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %359, i32 %360)
  %362 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %363 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %362, i32 0, i32 2
  %364 = load i32, i32* @VPE_CHAN_MV_IN, align 4
  %365 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %363, i32 %364)
  br label %366

366:                                              ; preds = %345, %332
  %367 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %368 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @V4L2_COLORSPACE_SRGB, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %374 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %373, i32 0, i32 2
  %375 = load i32, i32* @VPE_CHAN_RGB_OUT, align 4
  %376 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %374, i32 %375)
  br label %394

377:                                              ; preds = %366
  %378 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %379 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %378, i32 0, i32 2
  %380 = load i32, i32* @VPE_CHAN_LUMA_OUT, align 4
  %381 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %379, i32 %380)
  %382 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %383 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %382, i32 0, i32 2
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %377
  %389 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %390 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %389, i32 0, i32 2
  %391 = load i32, i32* @VPE_CHAN_CHROMA_OUT, align 4
  %392 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %390, i32 %391)
  br label %393

393:                                              ; preds = %388, %377
  br label %394

394:                                              ; preds = %393, %372
  %395 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %396 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %395, i32 0, i32 4
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %394
  %400 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %401 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %400, i32 0, i32 2
  %402 = load i32, i32* @VPE_CHAN_MV_OUT, align 4
  %403 = call i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__* %401, i32 %402)
  br label %404

404:                                              ; preds = %399, %394
  %405 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %406 = call i32 @enable_irqs(%struct.vpe_ctx* %405)
  %407 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %408 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %407, i32 0, i32 3
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %413 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  %415 = call i32 @vpdma_map_desc_buf(i32 %411, %struct.TYPE_15__* %414)
  %416 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %417 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %416, i32 0, i32 3
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %422 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %421, i32 0, i32 2
  %423 = call i32 @vpdma_submit_descs(i32 %420, %struct.TYPE_14__* %422, i32 0)
  ret void
}

declare dso_local i32* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @config_edi_input_mode(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @vpdma_map_desc_buf(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @vpdma_add_cfd_adb(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @set_line_modes(%struct.vpe_ctx*) #1

declare dso_local i32 @vpdma_add_cfd_block(%struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @add_out_dtd(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @add_in_dtd(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @vpdma_add_sync_on_channel_ctd(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @enable_irqs(%struct.vpe_ctx*) #1

declare dso_local i32 @vpdma_submit_descs(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
