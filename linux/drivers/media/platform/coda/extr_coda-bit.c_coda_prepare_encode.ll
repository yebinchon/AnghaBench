; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_prepare_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_prepare_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, i32*, i32, %struct.TYPE_5__, i32, %struct.TYPE_8__, %struct.coda_dev*, i32**, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.coda_dev = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.coda_q_data = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"parameter change failed: %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot set intra qp, fmt not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot set inter qp, fmt not supported\0A\00", align 1
@CODA_ROT_MIR_ENABLE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_ROT_MODE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_QS = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_PIC_SRC_INDEX = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_PIC_SRC_STRIDE = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_PIC_SUB_FRAME_SYNC = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_PIC_SRC_ADDR_Y = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_SRC_ADDR_Y = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_OPTION = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_BB_START = common dso_local global i32 0, align 4
@CODA_CMD_ENC_PIC_BB_SIZE = common dso_local global i32 0, align 4
@CODA_BIT_STREAM_END_FLAG = common dso_local global i32 0, align 4
@CODA_REG_BIT_BIT_STREAM_PARAM = common dso_local global i32 0, align 4
@CODA_DX6 = common dso_local global i64 0, align 8
@CODA7_REG_BIT_AXI_SRAM_USE = common dso_local global i32 0, align 4
@CODA_COMMAND_PIC_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_prepare_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_prepare_encode(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.coda_q_data*, align 8
  %4 = alloca %struct.coda_q_data*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.coda_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %16, i32 0, i32 6
  %18 = load %struct.coda_dev*, %struct.coda_dev** %17, align 8
  store %struct.coda_dev* %18, %struct.coda_dev** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %20 = call i32 @coda_enc_param_change(%struct.coda_ctx* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %24, i32 0, i32 6
  %26 = load %struct.coda_dev*, %struct.coda_dev** %25, align 8
  %27 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %15, align 4
  %29 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %34)
  store %struct.vb2_v4l2_buffer* %35, %struct.vb2_v4l2_buffer** %5, align 8
  %36 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %39)
  store %struct.vb2_v4l2_buffer* %40, %struct.vb2_v4l2_buffer** %6, align 8
  %41 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %42 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %43 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %41, i32 %42)
  store %struct.coda_q_data* %43, %struct.coda_q_data** %3, align 8
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %45 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %46 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %44, i32 %45)
  store %struct.coda_q_data* %46, %struct.coda_q_data** %4, align 8
  %47 = load %struct.coda_q_data*, %struct.coda_q_data** %4, align 8
  %48 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %30
  %71 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %92

74:                                               ; preds = %30
  %75 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %85 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %83, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %80, %74
  br label %92

92:                                               ; preds = %91, %70
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %97 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %98 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %104 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %119

107:                                              ; preds = %92
  %108 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %109 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %110 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %116 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %107, %95
  %120 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %121 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CODA_960, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %129 = call i32 @coda_set_gdi_regs(%struct.coda_ctx* %128)
  br label %130

130:                                              ; preds = %127, %119
  %131 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %244

138:                                              ; preds = %135, %130
  %139 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %140 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %139, i32 0, i32 1
  %141 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %140, i32 0)
  %142 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %143 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %141, %146
  %148 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %149 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %147, %152
  %154 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %155 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %153, %158
  store i32 %159, i32* %10, align 4
  %160 = load %struct.coda_q_data*, %struct.coda_q_data** %4, align 8
  %161 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %162, %167
  %169 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %170 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %168, %173
  %175 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %176 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %174, %179
  store i32 %180, i32* %11, align 4
  %181 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %182 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %181, i32 0, i32 1
  %183 = call i32 @vb2_plane_vaddr(i32* %182, i32 0)
  %184 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %185 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %184, i32 0, i32 7
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %191 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @memcpy(i32 %183, i32* %189, i32 %194)
  %196 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %197 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %196, i32 0, i32 1
  %198 = call i32 @vb2_plane_vaddr(i32* %197, i32 0)
  %199 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %200 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %198, %203
  %205 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %206 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %205, i32 0, i32 7
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %212 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @memcpy(i32 %204, i32* %210, i32 %215)
  %217 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %218 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %217, i32 0, i32 1
  %219 = call i32 @vb2_plane_vaddr(i32* %218, i32 0)
  %220 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %221 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %219, %224
  %226 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %227 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %225, %230
  %232 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %233 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %232, i32 0, i32 7
  %234 = load i32**, i32*** %233, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 2
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %239 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @memcpy(i32 %231, i32* %237, i32 %242)
  br label %251

244:                                              ; preds = %135
  %245 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %246 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %245, i32 0, i32 1
  %247 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %246, i32 0)
  store i32 %247, i32* %10, align 4
  %248 = load %struct.coda_q_data*, %struct.coda_q_data** %4, align 8
  %249 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %244, %138
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %251
  %255 = load i32, i32* %13, align 4
  switch i32 %255, label %267 [
    i32 130, label %256
    i32 128, label %261
    i32 129, label %266
  ]

256:                                              ; preds = %254
  %257 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %258 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %9, align 4
  br label %273

261:                                              ; preds = %254
  %262 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %263 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %9, align 4
  br label %273

266:                                              ; preds = %254
  store i32 30, i32* %9, align 4
  br label %273

267:                                              ; preds = %254
  %268 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %269 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %268, i32 0, i32 6
  %270 = load %struct.coda_dev*, %struct.coda_dev** %269, align 8
  %271 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %270, i32 0, i32 1
  %272 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %271, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %273

273:                                              ; preds = %267, %266, %261, %256
  br label %293

274:                                              ; preds = %251
  %275 = load i32, i32* %13, align 4
  switch i32 %275, label %286 [
    i32 130, label %276
    i32 128, label %281
  ]

276:                                              ; preds = %274
  %277 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %278 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %9, align 4
  br label %292

281:                                              ; preds = %274
  %282 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %283 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %9, align 4
  br label %292

286:                                              ; preds = %274
  %287 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %288 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %287, i32 0, i32 6
  %289 = load %struct.coda_dev*, %struct.coda_dev** %288, align 8
  %290 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %289, i32 0, i32 1
  %291 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %290, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %292

292:                                              ; preds = %286, %281, %276
  br label %293

293:                                              ; preds = %292, %273
  %294 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %295 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load i32, i32* @CODA_ROT_MIR_ENABLE, align 4
  %301 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %302 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %300, %304
  store i32 %305, i32* %12, align 4
  br label %306

306:                                              ; preds = %299, %293
  %307 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @CODA_CMD_ENC_PIC_ROT_MODE, align 4
  %310 = call i32 @coda_write(%struct.coda_dev* %307, i32 %308, i32 %309)
  %311 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* @CODA_CMD_ENC_PIC_QS, align 4
  %314 = call i32 @coda_write(%struct.coda_dev* %311, i32 %312, i32 %313)
  %315 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %316 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %315, i32 0, i32 0
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @CODA_960, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %336

322:                                              ; preds = %306
  %323 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %324 = load i32, i32* @CODA9_CMD_ENC_PIC_SRC_INDEX, align 4
  %325 = call i32 @coda_write(%struct.coda_dev* %323, i32 4, i32 %324)
  %326 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %327 = load %struct.coda_q_data*, %struct.coda_q_data** %3, align 8
  %328 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @CODA9_CMD_ENC_PIC_SRC_STRIDE, align 4
  %331 = call i32 @coda_write(%struct.coda_dev* %326, i32 %329, i32 %330)
  %332 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %333 = load i32, i32* @CODA9_CMD_ENC_PIC_SUB_FRAME_SYNC, align 4
  %334 = call i32 @coda_write(%struct.coda_dev* %332, i32 0, i32 %333)
  %335 = load i32, i32* @CODA9_CMD_ENC_PIC_SRC_ADDR_Y, align 4
  store i32 %335, i32* %14, align 4
  br label %338

336:                                              ; preds = %306
  %337 = load i32, i32* @CODA_CMD_ENC_PIC_SRC_ADDR_Y, align 4
  store i32 %337, i32* %14, align 4
  br label %338

338:                                              ; preds = %336, %322
  %339 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %340 = load %struct.coda_q_data*, %struct.coda_q_data** %3, align 8
  %341 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %342 = load i32, i32* %14, align 4
  %343 = call i32 @coda_write_base(%struct.coda_ctx* %339, %struct.coda_q_data* %340, %struct.vb2_v4l2_buffer* %341, i32 %342)
  %344 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %345 = load i32, i32* %8, align 4
  %346 = shl i32 %345, 1
  %347 = and i32 %346, 2
  %348 = load i32, i32* @CODA_CMD_ENC_PIC_OPTION, align 4
  %349 = call i32 @coda_write(%struct.coda_dev* %344, i32 %347, i32 %348)
  %350 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* @CODA_CMD_ENC_PIC_BB_START, align 4
  %353 = call i32 @coda_write(%struct.coda_dev* %350, i32 %351, i32 %352)
  %354 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sdiv i32 %355, 1024
  %357 = load i32, i32* @CODA_CMD_ENC_PIC_BB_SIZE, align 4
  %358 = call i32 @coda_write(%struct.coda_dev* %354, i32 %356, i32 %357)
  %359 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %360 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %375, label %363

363:                                              ; preds = %338
  %364 = load i32, i32* @CODA_BIT_STREAM_END_FLAG, align 4
  %365 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %366 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %370 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %371 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @CODA_REG_BIT_BIT_STREAM_PARAM, align 4
  %374 = call i32 @coda_write(%struct.coda_dev* %369, i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %363, %338
  %376 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %377 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %376, i32 0, i32 0
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @CODA_DX6, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %391

383:                                              ; preds = %375
  %384 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %385 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %386 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @CODA7_REG_BIT_AXI_SRAM_USE, align 4
  %390 = call i32 @coda_write(%struct.coda_dev* %384, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %383, %375
  %392 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %393 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %394 = call i32 @trace_coda_enc_pic_run(%struct.coda_ctx* %392, %struct.vb2_v4l2_buffer* %393)
  %395 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %396 = load i32, i32* @CODA_COMMAND_PIC_RUN, align 4
  %397 = call i32 @coda_command_async(%struct.coda_ctx* %395, i32 %396)
  ret i32 0
}

declare dso_local i32 @coda_enc_param_change(%struct.coda_ctx*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, ...) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @coda_set_gdi_regs(%struct.coda_ctx*) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @coda_write_base(%struct.coda_ctx*, %struct.coda_q_data*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @trace_coda_enc_pic_run(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @coda_command_async(%struct.coda_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
