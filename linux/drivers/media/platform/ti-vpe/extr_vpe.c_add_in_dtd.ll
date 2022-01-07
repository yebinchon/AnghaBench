; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_add_in_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_add_in_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_port_data = type { i64, i32, i32 }
%struct.vpdma_data_format = type { i32 }
%struct.vpe_ctx = type { i32, i32*, i32, i32, i32, %struct.TYPE_3__**, %struct.vpe_q_data* }
%struct.TYPE_3__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.vpe_q_data = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__, %struct.vpe_fmt* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vpe_fmt = type { i64, %struct.vpdma_data_format**, i64 }
%struct.vb2_v4l2_buffer = type { i32 }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@port_data = common dso_local global %struct.vpe_port_data* null, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@VPE_PORT_MV_IN = common dso_local global i32 0, align 4
@vpdma_misc_fmts = common dso_local global %struct.vpdma_data_format* null, align 8
@VPDMA_DATA_FMT_MV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"acquiring output buffer(%d) dma_addr failed\0A\00", align 1
@Q_DATA_INTERLACED_SEQ_TB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@Q_DATA_FRAME_1D = common dso_local global i32 0, align 4
@VPDMA_DATA_FRAME_1D = common dso_local global i32 0, align 4
@Q_DATA_MODE_TILED = common dso_local global i32 0, align 4
@VPDMA_DATA_MODE_TILED = common dso_local global i32 0, align 4
@VPE_LUMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*, i32)* @add_in_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_in_dtd(%struct.vpe_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpe_q_data*, align 8
  %6 = alloca %struct.vpe_port_data*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca %struct.vpe_fmt*, align 8
  %10 = alloca %struct.vpdma_data_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %21, i32 0, i32 6
  %23 = load %struct.vpe_q_data*, %struct.vpe_q_data** %22, align 8
  %24 = load i64, i64* @Q_DATA_SRC, align 8
  %25 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %23, i64 %24
  store %struct.vpe_q_data* %25, %struct.vpe_q_data** %5, align 8
  %26 = load %struct.vpe_port_data*, %struct.vpe_port_data** @port_data, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %26, i64 %28
  store %struct.vpe_port_data* %29, %struct.vpe_port_data** %6, align 8
  %30 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %34 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.vb2_buffer* %38, %struct.vb2_buffer** %7, align 8
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %40 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %39)
  store %struct.vb2_v4l2_buffer* %40, %struct.vb2_v4l2_buffer** %8, align 8
  %41 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %42 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %41, i32 0, i32 6
  %43 = load %struct.vpe_fmt*, %struct.vpe_fmt** %42, align 8
  store %struct.vpe_fmt* %43, %struct.vpe_fmt** %9, align 8
  %44 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @VPE_PORT_MV_IN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %2
  %57 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** @vpdma_misc_fmts, align 8
  %58 = load i64, i64* @VPDMA_DATA_FMT_MV, align 8
  %59 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %57, i64 %58
  store %struct.vpdma_data_format* %59, %struct.vpdma_data_format** %10, align 8
  %60 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  br label %177

67:                                               ; preds = %2
  %68 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %69 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %74 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  store i32 %78, i32* %18, align 4
  %79 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %80 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %79, i32 0, i32 1
  %81 = load %struct.vpdma_data_format**, %struct.vpdma_data_format*** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.vpdma_data_format*, %struct.vpdma_data_format** %81, i64 %83
  %85 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %84, align 8
  store %struct.vpdma_data_format* %85, %struct.vpdma_data_format** %10, align 8
  %86 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %87 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %105

90:                                               ; preds = %77
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %95 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %94, i32 0)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %97 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %102 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %100, %103
  store i32 %104, i32* %17, align 4
  br label %109

105:                                              ; preds = %90, %77
  %106 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %106, i32 %107)
  store i32 %108, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %105, %93
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @vpe_err(i32 %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %245

118:                                              ; preds = %109
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %15, align 4
  %122 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %123 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @Q_DATA_INTERLACED_SEQ_TB, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %118
  %129 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %130 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = srem i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = add i64 %131, %136
  %138 = urem i64 %137, 2
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %175

142:                                              ; preds = %128
  %143 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %144 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %19, align 4
  %147 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %148 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %158

153:                                              ; preds = %142
  %154 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %10, align 8
  %155 = getelementptr inbounds %struct.vpdma_data_format, %struct.vpdma_data_format* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 3
  br label %158

158:                                              ; preds = %153, %152
  %159 = phi i32 [ 1, %152 ], [ %157, %153 ]
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %19, align 4
  %164 = sdiv i32 %163, 2
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %162, %158
  %166 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %167 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %20, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %165, %128
  br label %176

176:                                              ; preds = %175, %118
  br label %177

177:                                              ; preds = %176, %56
  %178 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %179 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @Q_DATA_FRAME_1D, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @VPDMA_DATA_FRAME_1D, align 4
  %186 = load i32, i32* %16, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %190 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @Q_DATA_MODE_TILED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @VPDMA_DATA_MODE_TILED, align 4
  %197 = load i32, i32* %16, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %16, align 4
  br label %199

199:                                              ; preds = %195, %188
  %200 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %201 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %13, align 4
  %204 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %205 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %14, align 4
  %208 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %209 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %199
  %213 = load %struct.vpe_fmt*, %struct.vpe_fmt** %9, align 8
  %214 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i32, i32* %14, align 4
  %220 = sdiv i32 %219, 2
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %218, %212, %199
  %222 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %223 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %222, i32 0, i32 3
  %224 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %225 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %228 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @VPE_LUMA, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.vpe_q_data*, %struct.vpe_q_data** %5, align 8
  %234 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %233, i32 0, i32 5
  %235 = load %struct.vpdma_data_format*, %struct.vpdma_data_format** %10, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.vpe_port_data*, %struct.vpe_port_data** %6, align 8
  %238 = getelementptr inbounds %struct.vpe_port_data, %struct.vpe_port_data* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @vpdma_add_in_dtd(i32* %223, i32 %226, i32 %232, %struct.TYPE_4__* %234, %struct.vpdma_data_format* %235, i32 %236, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 0, i32 0)
  br label %245

245:                                              ; preds = %221, %112
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vpe_err(i32, i8*, i32) #1

declare dso_local i32 @vpdma_add_in_dtd(i32*, i32, i32, %struct.TYPE_4__*, %struct.vpdma_data_format*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
