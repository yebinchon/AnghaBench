; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxp_ctx = type { i32, i32, %struct.TYPE_5__*, %struct.pxp_dev* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pxp_dev = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.pxp_q_data = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Acquiring DMA addresses of buffers failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_BFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@MEM2MEM_VFLIP = common dso_local global i32 0, align 4
@MEM2MEM_HFLIP = common dso_local global i32 0, align 4
@HW_PXP_CTRL = common dso_local global i64 0, align 8
@HW_PXP_OUT_CTRL = common dso_local global i64 0, align 8
@HW_PXP_OUT_BUF = common dso_local global i64 0, align 8
@HW_PXP_OUT_BUF2 = common dso_local global i64 0, align 8
@HW_PXP_OUT_PITCH = common dso_local global i64 0, align 8
@HW_PXP_OUT_LRC = common dso_local global i64 0, align 8
@HW_PXP_OUT_PS_ULC = common dso_local global i64 0, align 8
@HW_PXP_OUT_PS_LRC = common dso_local global i64 0, align 8
@HW_PXP_OUT_AS_ULC = common dso_local global i64 0, align 8
@HW_PXP_OUT_AS_LRC = common dso_local global i64 0, align 8
@HW_PXP_PS_CTRL = common dso_local global i64 0, align 8
@HW_PXP_PS_BUF = common dso_local global i64 0, align 8
@HW_PXP_PS_UBUF = common dso_local global i64 0, align 8
@HW_PXP_PS_VBUF = common dso_local global i64 0, align 8
@HW_PXP_PS_PITCH = common dso_local global i64 0, align 8
@HW_PXP_PS_BACKGROUND_0 = common dso_local global i64 0, align 8
@HW_PXP_PS_SCALE = common dso_local global i64 0, align 8
@HW_PXP_PS_OFFSET = common dso_local global i64 0, align 8
@HW_PXP_PS_CLRKEYLOW_0 = common dso_local global i64 0, align 8
@HW_PXP_PS_CLRKEYHIGH_0 = common dso_local global i64 0, align 8
@HW_PXP_AS_CLRKEYLOW_0 = common dso_local global i64 0, align 8
@HW_PXP_AS_CLRKEYHIGH_0 = common dso_local global i64 0, align 8
@BM_PXP_LUT_CTRL_BYPASS = common dso_local global i32 0, align 4
@HW_PXP_LUT_CTRL = common dso_local global i64 0, align 8
@HW_PXP_DATA_PATH_CTRL0 = common dso_local global i64 0, align 8
@HW_PXP_DATA_PATH_CTRL1 = common dso_local global i64 0, align 8
@HW_PXP_IRQ_MASK = common dso_local global i64 0, align 8
@BM_PXP_CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@HW_PXP_CTRL_SET = common dso_local global i64 0, align 8
@BM_PXP_CTRL_ENABLE = common dso_local global i32 0, align 4
@BM_PXP_CTRL_ENABLE_CSC2 = common dso_local global i32 0, align 4
@BM_PXP_CTRL_ENABLE_LUT = common dso_local global i32 0, align 4
@BM_PXP_CTRL_ENABLE_ROTATE0 = common dso_local global i32 0, align 4
@BM_PXP_CTRL_ENABLE_PS_AS_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxp_ctx*, %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*)* @pxp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_start(%struct.pxp_ctx* %0, %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxp_ctx*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.pxp_dev*, align 8
  %9 = alloca %struct.pxp_q_data*, align 8
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.pxp_ctx* %0, %struct.pxp_ctx** %5, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %6, align 8
  store %struct.vb2_v4l2_buffer* %2, %struct.vb2_v4l2_buffer** %7, align 8
  %42 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %42, i32 0, i32 3
  %44 = load %struct.pxp_dev*, %struct.pxp_dev** %43, align 8
  store %struct.pxp_dev* %44, %struct.pxp_dev** %8, align 8
  %45 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %46 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %47 = call %struct.pxp_q_data* @get_q_data(%struct.pxp_ctx* %45, i32 %46)
  store %struct.pxp_q_data* %47, %struct.pxp_q_data** %9, align 8
  %48 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @V4L2_M2M_SRC, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* @V4L2_M2M_DST, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* @V4L2_M2M_SRC, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i64, i64* @V4L2_M2M_DST, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i64, i64* @V4L2_M2M_SRC, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* @V4L2_M2M_DST, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %16, align 4
  %90 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i64, i64* @V4L2_M2M_SRC, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %13, align 4
  %99 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i64, i64* @V4L2_M2M_DST, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  %108 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %109 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %108, i32 0, i32 3
  %110 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_6__* %109, i32 0)
  store i32 %110, i32* %18, align 4
  %111 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %111, i32 0, i32 3
  %113 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_6__* %112, i32 0)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %3
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %116, %3
  %120 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %121 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %120, i32 0, i32 1
  %122 = call i32 @v4l2_err(i32* %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %591

125:                                              ; preds = %116
  %126 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %127 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %128 = call %struct.pxp_q_data* @get_q_data(%struct.pxp_ctx* %126, i32 %127)
  %129 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = sext i32 %130 to i64
  %133 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %134 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load %struct.pxp_q_data*, %struct.pxp_q_data** %9, align 8
  %136 = getelementptr inbounds %struct.pxp_q_data, %struct.pxp_q_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = sext i32 %137 to i64
  %140 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %141 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %143 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %147 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  %149 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %150 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %125
  %156 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %157 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %160 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %155, %125
  %162 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %163 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %166 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %168 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %171 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %169, %178
  %180 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %181 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %183 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MEM2MEM_VFLIP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @BF_PXP_CTRL_VFLIP0(i32 %190)
  %192 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %193 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @MEM2MEM_HFLIP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 @BF_PXP_CTRL_HFLIP0(i32 %200)
  %202 = or i32 %191, %201
  store i32 %202, i32* %20, align 4
  %203 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %204 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @BF_PXP_OUT_CTRL_ALPHA(i32 %205)
  %207 = call i32 @BF_PXP_OUT_CTRL_ALPHA_OUTPUT(i32 1)
  %208 = or i32 %206, %207
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @pxp_v4l2_pix_fmt_to_out_format(i32 %209)
  %211 = or i32 %208, %210
  store i32 %211, i32* %21, align 4
  %212 = load i32, i32* %19, align 4
  store i32 %212, i32* %22, align 4
  %213 = load i32, i32* %17, align 4
  switch i32 %213, label %220 [
    i32 138, label %214
    i32 136, label %214
    i32 137, label %214
    i32 135, label %214
  ]

214:                                              ; preds = %161, %161, %161, %161
  %215 = load i32, i32* %22, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %15, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %215, %218
  store i32 %219, i32* %23, align 4
  br label %221

220:                                              ; preds = %161
  store i32 0, i32* %23, align 4
  br label %221

221:                                              ; preds = %220, %214
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @BF_PXP_OUT_PITCH_PITCH(i32 %222)
  store i32 %223, i32* %24, align 4
  %224 = load i32, i32* %14, align 4
  %225 = sub nsw i32 %224, 1
  %226 = call i32 @BF_PXP_OUT_LRC_X(i32 %225)
  %227 = load i32, i32* %15, align 4
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @BF_PXP_OUT_LRC_Y(i32 %228)
  %230 = or i32 %226, %229
  store i32 %230, i32* %25, align 4
  %231 = call i32 @BF_PXP_OUT_PS_ULC_X(i32 0)
  %232 = call i32 @BF_PXP_OUT_PS_ULC_Y(i32 0)
  %233 = or i32 %231, %232
  store i32 %233, i32* %26, align 4
  %234 = load i32, i32* %14, align 4
  %235 = sub nsw i32 %234, 1
  %236 = call i32 @BF_PXP_OUT_PS_LRC_X(i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = sub nsw i32 %237, 1
  %239 = call i32 @BF_PXP_OUT_PS_LRC_Y(i32 %238)
  %240 = or i32 %236, %239
  store i32 %240, i32* %27, align 4
  %241 = call i32 @BF_PXP_OUT_AS_ULC_X(i32 1)
  %242 = call i32 @BF_PXP_OUT_AS_ULC_Y(i32 1)
  %243 = or i32 %241, %242
  store i32 %243, i32* %35, align 4
  %244 = call i32 @BF_PXP_OUT_AS_LRC_X(i32 0)
  %245 = call i32 @BF_PXP_OUT_AS_LRC_Y(i32 0)
  %246 = or i32 %244, %245
  store i32 %246, i32* %36, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %14, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %221
  br label %256

251:                                              ; preds = %221
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %14, align 4
  %254 = sdiv i32 %252, %253
  %255 = call i32 @ilog2(i32 %254)
  br label %256

256:                                              ; preds = %251, %250
  %257 = phi i32 [ 0, %250 ], [ %255, %251 ]
  store i32 %257, i32* %38, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %267

262:                                              ; preds = %256
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %15, align 4
  %265 = sdiv i32 %263, %264
  %266 = call i32 @ilog2(i32 %265)
  br label %267

267:                                              ; preds = %262, %261
  %268 = phi i32 [ 0, %261 ], [ %266, %262 ]
  store i32 %268, i32* %39, align 4
  %269 = load i32, i32* %38, align 4
  %270 = call i32 @BF_PXP_PS_CTRL_DECX(i32 %269)
  %271 = load i32, i32* %39, align 4
  %272 = call i32 @BF_PXP_PS_CTRL_DECY(i32 %271)
  %273 = or i32 %270, %272
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @pxp_v4l2_pix_fmt_to_ps_format(i32 %274)
  %276 = or i32 %273, %275
  store i32 %276, i32* %28, align 4
  %277 = load i32, i32* %18, align 4
  store i32 %277, i32* %29, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %11, align 4
  %280 = mul nsw i32 %278, %279
  store i32 %280, i32* %37, align 4
  %281 = load i32, i32* %13, align 4
  switch i32 %281, label %303 [
    i32 131, label %282
    i32 130, label %290
    i32 138, label %298
    i32 136, label %298
    i32 137, label %298
    i32 135, label %298
    i32 139, label %302
    i32 132, label %302
  ]

282:                                              ; preds = %267
  %283 = load i32, i32* %29, align 4
  %284 = load i32, i32* %37, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %30, align 4
  %286 = load i32, i32* %30, align 4
  %287 = load i32, i32* %37, align 4
  %288 = sdiv i32 %287, 4
  %289 = add nsw i32 %286, %288
  store i32 %289, i32* %31, align 4
  br label %304

290:                                              ; preds = %267
  %291 = load i32, i32* %29, align 4
  %292 = load i32, i32* %37, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %30, align 4
  %294 = load i32, i32* %30, align 4
  %295 = load i32, i32* %37, align 4
  %296 = sdiv i32 %295, 2
  %297 = add nsw i32 %294, %296
  store i32 %297, i32* %31, align 4
  br label %304

298:                                              ; preds = %267, %267, %267, %267
  %299 = load i32, i32* %29, align 4
  %300 = load i32, i32* %37, align 4
  %301 = add nsw i32 %299, %300
  store i32 %301, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %304

302:                                              ; preds = %267, %267
  store i32 0, i32* %30, align 4
  store i32 32896, i32* %31, align 4
  br label %304

303:                                              ; preds = %267
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %304

304:                                              ; preds = %303, %302, %298, %290, %282
  %305 = load i32, i32* %12, align 4
  %306 = call i32 @BF_PXP_PS_PITCH_PITCH(i32 %305)
  store i32 %306, i32* %32, align 4
  %307 = load i32, i32* %38, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %304
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %38, align 4
  %312 = ashr i32 %310, %311
  %313 = mul nsw i32 %312, 4096
  %314 = load i32, i32* %14, align 4
  %315 = sdiv i32 %313, %314
  store i32 %315, i32* %40, align 4
  br label %333

316:                                              ; preds = %304
  %317 = load i32, i32* %13, align 4
  switch i32 %317, label %325 [
    i32 134, label %318
    i32 129, label %318
    i32 133, label %318
    i32 128, label %318
    i32 137, label %318
    i32 138, label %318
    i32 136, label %318
    i32 135, label %318
    i32 130, label %318
    i32 131, label %318
  ]

318:                                              ; preds = %316, %316, %316, %316, %316, %316, %316, %316, %316, %316
  %319 = load i32, i32* %10, align 4
  %320 = sub nsw i32 %319, 2
  %321 = mul nsw i32 %320, 4096
  %322 = load i32, i32* %14, align 4
  %323 = sub nsw i32 %322, 1
  %324 = sdiv i32 %321, %323
  store i32 %324, i32* %40, align 4
  br label %332

325:                                              ; preds = %316
  %326 = load i32, i32* %10, align 4
  %327 = sub nsw i32 %326, 1
  %328 = mul nsw i32 %327, 4096
  %329 = load i32, i32* %14, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sdiv i32 %328, %330
  store i32 %331, i32* %40, align 4
  br label %332

332:                                              ; preds = %325, %318
  br label %333

333:                                              ; preds = %332, %309
  %334 = load i32, i32* %39, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load i32, i32* %11, align 4
  %338 = load i32, i32* %39, align 4
  %339 = ashr i32 %337, %338
  %340 = mul nsw i32 %339, 4096
  %341 = load i32, i32* %15, align 4
  %342 = sdiv i32 %340, %341
  store i32 %342, i32* %41, align 4
  br label %350

343:                                              ; preds = %333
  %344 = load i32, i32* %11, align 4
  %345 = sub nsw i32 %344, 1
  %346 = mul nsw i32 %345, 4096
  %347 = load i32, i32* %15, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sdiv i32 %346, %348
  store i32 %349, i32* %41, align 4
  br label %350

350:                                              ; preds = %343, %336
  %351 = load i32, i32* %41, align 4
  %352 = call i32 @BF_PXP_PS_SCALE_YSCALE(i32 %351)
  %353 = load i32, i32* %40, align 4
  %354 = call i32 @BF_PXP_PS_SCALE_XSCALE(i32 %353)
  %355 = or i32 %352, %354
  store i32 %355, i32* %33, align 4
  %356 = call i32 @BF_PXP_PS_OFFSET_YOFFSET(i32 0)
  %357 = call i32 @BF_PXP_PS_OFFSET_XOFFSET(i32 0)
  %358 = or i32 %356, %357
  store i32 %358, i32* %34, align 4
  %359 = load i32, i32* %20, align 4
  %360 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %361 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @HW_PXP_CTRL, align 8
  %364 = add nsw i64 %362, %363
  %365 = call i32 @writel(i32 %359, i64 %364)
  %366 = load i32, i32* %21, align 4
  %367 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %368 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @HW_PXP_OUT_CTRL, align 8
  %371 = add nsw i64 %369, %370
  %372 = call i32 @writel(i32 %366, i64 %371)
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %375 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @HW_PXP_OUT_BUF, align 8
  %378 = add nsw i64 %376, %377
  %379 = call i32 @writel(i32 %373, i64 %378)
  %380 = load i32, i32* %23, align 4
  %381 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %382 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @HW_PXP_OUT_BUF2, align 8
  %385 = add nsw i64 %383, %384
  %386 = call i32 @writel(i32 %380, i64 %385)
  %387 = load i32, i32* %24, align 4
  %388 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %389 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @HW_PXP_OUT_PITCH, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i32 @writel(i32 %387, i64 %392)
  %394 = load i32, i32* %25, align 4
  %395 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %396 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @HW_PXP_OUT_LRC, align 8
  %399 = add nsw i64 %397, %398
  %400 = call i32 @writel(i32 %394, i64 %399)
  %401 = load i32, i32* %26, align 4
  %402 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %403 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @HW_PXP_OUT_PS_ULC, align 8
  %406 = add nsw i64 %404, %405
  %407 = call i32 @writel(i32 %401, i64 %406)
  %408 = load i32, i32* %27, align 4
  %409 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %410 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @HW_PXP_OUT_PS_LRC, align 8
  %413 = add nsw i64 %411, %412
  %414 = call i32 @writel(i32 %408, i64 %413)
  %415 = load i32, i32* %35, align 4
  %416 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %417 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @HW_PXP_OUT_AS_ULC, align 8
  %420 = add nsw i64 %418, %419
  %421 = call i32 @writel(i32 %415, i64 %420)
  %422 = load i32, i32* %36, align 4
  %423 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %424 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @HW_PXP_OUT_AS_LRC, align 8
  %427 = add nsw i64 %425, %426
  %428 = call i32 @writel(i32 %422, i64 %427)
  %429 = load i32, i32* %28, align 4
  %430 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %431 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @HW_PXP_PS_CTRL, align 8
  %434 = add nsw i64 %432, %433
  %435 = call i32 @writel(i32 %429, i64 %434)
  %436 = load i32, i32* %29, align 4
  %437 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %438 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @HW_PXP_PS_BUF, align 8
  %441 = add nsw i64 %439, %440
  %442 = call i32 @writel(i32 %436, i64 %441)
  %443 = load i32, i32* %30, align 4
  %444 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %445 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @HW_PXP_PS_UBUF, align 8
  %448 = add nsw i64 %446, %447
  %449 = call i32 @writel(i32 %443, i64 %448)
  %450 = load i32, i32* %31, align 4
  %451 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %452 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @HW_PXP_PS_VBUF, align 8
  %455 = add nsw i64 %453, %454
  %456 = call i32 @writel(i32 %450, i64 %455)
  %457 = load i32, i32* %32, align 4
  %458 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %459 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @HW_PXP_PS_PITCH, align 8
  %462 = add nsw i64 %460, %461
  %463 = call i32 @writel(i32 %457, i64 %462)
  %464 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %465 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @HW_PXP_PS_BACKGROUND_0, align 8
  %468 = add nsw i64 %466, %467
  %469 = call i32 @writel(i32 16777215, i64 %468)
  %470 = load i32, i32* %33, align 4
  %471 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %472 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @HW_PXP_PS_SCALE, align 8
  %475 = add nsw i64 %473, %474
  %476 = call i32 @writel(i32 %470, i64 %475)
  %477 = load i32, i32* %34, align 4
  %478 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %479 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @HW_PXP_PS_OFFSET, align 8
  %482 = add nsw i64 %480, %481
  %483 = call i32 @writel(i32 %477, i64 %482)
  %484 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %485 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @HW_PXP_PS_CLRKEYLOW_0, align 8
  %488 = add nsw i64 %486, %487
  %489 = call i32 @writel(i32 16777215, i64 %488)
  %490 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %491 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @HW_PXP_PS_CLRKEYHIGH_0, align 8
  %494 = add nsw i64 %492, %493
  %495 = call i32 @writel(i32 0, i64 %494)
  %496 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %497 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = load i64, i64* @HW_PXP_AS_CLRKEYLOW_0, align 8
  %500 = add nsw i64 %498, %499
  %501 = call i32 @writel(i32 16777215, i64 %500)
  %502 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %503 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* @HW_PXP_AS_CLRKEYHIGH_0, align 8
  %506 = add nsw i64 %504, %505
  %507 = call i32 @writel(i32 0, i64 %506)
  %508 = load %struct.pxp_ctx*, %struct.pxp_ctx** %5, align 8
  %509 = call i32 @pxp_setup_csc(%struct.pxp_ctx* %508)
  %510 = load i32, i32* @BM_PXP_LUT_CTRL_BYPASS, align 4
  %511 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %512 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @HW_PXP_LUT_CTRL, align 8
  %515 = add nsw i64 %513, %514
  %516 = call i32 @writel(i32 %510, i64 %515)
  %517 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX15_SEL(i32 0)
  %518 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX14_SEL(i32 1)
  %519 = or i32 %517, %518
  %520 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX13_SEL(i32 0)
  %521 = or i32 %519, %520
  %522 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX12_SEL(i32 0)
  %523 = or i32 %521, %522
  %524 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX11_SEL(i32 0)
  %525 = or i32 %523, %524
  %526 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX10_SEL(i32 0)
  %527 = or i32 %525, %526
  %528 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX9_SEL(i32 1)
  %529 = or i32 %527, %528
  %530 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX8_SEL(i32 0)
  %531 = or i32 %529, %530
  %532 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX7_SEL(i32 0)
  %533 = or i32 %531, %532
  %534 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX6_SEL(i32 0)
  %535 = or i32 %533, %534
  %536 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX5_SEL(i32 0)
  %537 = or i32 %535, %536
  %538 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX4_SEL(i32 0)
  %539 = or i32 %537, %538
  %540 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX3_SEL(i32 0)
  %541 = or i32 %539, %540
  %542 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX2_SEL(i32 0)
  %543 = or i32 %541, %542
  %544 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX1_SEL(i32 0)
  %545 = or i32 %543, %544
  %546 = call i32 @BF_PXP_DATA_PATH_CTRL0_MUX0_SEL(i32 0)
  %547 = or i32 %545, %546
  %548 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %549 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @HW_PXP_DATA_PATH_CTRL0, align 8
  %552 = add nsw i64 %550, %551
  %553 = call i32 @writel(i32 %547, i64 %552)
  %554 = call i32 @BF_PXP_DATA_PATH_CTRL1_MUX17_SEL(i32 1)
  %555 = call i32 @BF_PXP_DATA_PATH_CTRL1_MUX16_SEL(i32 1)
  %556 = or i32 %554, %555
  %557 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %558 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = load i64, i64* @HW_PXP_DATA_PATH_CTRL1, align 8
  %561 = add nsw i64 %559, %560
  %562 = call i32 @writel(i32 %556, i64 %561)
  %563 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %564 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = load i64, i64* @HW_PXP_IRQ_MASK, align 8
  %567 = add nsw i64 %565, %566
  %568 = call i32 @writel(i32 65535, i64 %567)
  %569 = load i32, i32* @BM_PXP_CTRL_IRQ_ENABLE, align 4
  %570 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %571 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @HW_PXP_CTRL_SET, align 8
  %574 = add nsw i64 %572, %573
  %575 = call i32 @writel(i32 %569, i64 %574)
  %576 = load i32, i32* @BM_PXP_CTRL_ENABLE, align 4
  %577 = load i32, i32* @BM_PXP_CTRL_ENABLE_CSC2, align 4
  %578 = or i32 %576, %577
  %579 = load i32, i32* @BM_PXP_CTRL_ENABLE_LUT, align 4
  %580 = or i32 %578, %579
  %581 = load i32, i32* @BM_PXP_CTRL_ENABLE_ROTATE0, align 4
  %582 = or i32 %580, %581
  %583 = load i32, i32* @BM_PXP_CTRL_ENABLE_PS_AS_OUT, align 4
  %584 = or i32 %582, %583
  %585 = load %struct.pxp_dev*, %struct.pxp_dev** %8, align 8
  %586 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @HW_PXP_CTRL_SET, align 8
  %589 = add nsw i64 %587, %588
  %590 = call i32 @writel(i32 %584, i64 %589)
  store i32 0, i32* %4, align 4
  br label %591

591:                                              ; preds = %350, %119
  %592 = load i32, i32* %4, align 4
  ret i32 %592
}

declare dso_local %struct.pxp_q_data* @get_q_data(%struct.pxp_ctx*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @BF_PXP_CTRL_VFLIP0(i32) #1

declare dso_local i32 @BF_PXP_CTRL_HFLIP0(i32) #1

declare dso_local i32 @BF_PXP_OUT_CTRL_ALPHA(i32) #1

declare dso_local i32 @BF_PXP_OUT_CTRL_ALPHA_OUTPUT(i32) #1

declare dso_local i32 @pxp_v4l2_pix_fmt_to_out_format(i32) #1

declare dso_local i32 @BF_PXP_OUT_PITCH_PITCH(i32) #1

declare dso_local i32 @BF_PXP_OUT_LRC_X(i32) #1

declare dso_local i32 @BF_PXP_OUT_LRC_Y(i32) #1

declare dso_local i32 @BF_PXP_OUT_PS_ULC_X(i32) #1

declare dso_local i32 @BF_PXP_OUT_PS_ULC_Y(i32) #1

declare dso_local i32 @BF_PXP_OUT_PS_LRC_X(i32) #1

declare dso_local i32 @BF_PXP_OUT_PS_LRC_Y(i32) #1

declare dso_local i32 @BF_PXP_OUT_AS_ULC_X(i32) #1

declare dso_local i32 @BF_PXP_OUT_AS_ULC_Y(i32) #1

declare dso_local i32 @BF_PXP_OUT_AS_LRC_X(i32) #1

declare dso_local i32 @BF_PXP_OUT_AS_LRC_Y(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @BF_PXP_PS_CTRL_DECX(i32) #1

declare dso_local i32 @BF_PXP_PS_CTRL_DECY(i32) #1

declare dso_local i32 @pxp_v4l2_pix_fmt_to_ps_format(i32) #1

declare dso_local i32 @BF_PXP_PS_PITCH_PITCH(i32) #1

declare dso_local i32 @BF_PXP_PS_SCALE_YSCALE(i32) #1

declare dso_local i32 @BF_PXP_PS_SCALE_XSCALE(i32) #1

declare dso_local i32 @BF_PXP_PS_OFFSET_YOFFSET(i32) #1

declare dso_local i32 @BF_PXP_PS_OFFSET_XOFFSET(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pxp_setup_csc(%struct.pxp_ctx*) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX15_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX14_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX13_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX12_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX11_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX10_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX9_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX8_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX7_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX6_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX5_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX4_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX3_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX2_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX1_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL0_MUX0_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL1_MUX17_SEL(i32) #1

declare dso_local i32 @BF_PXP_DATA_PATH_CTRL1_MUX16_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
