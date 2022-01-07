; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c___coda_decoder_seq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c___coda_decoder_seq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, i32, i64, %struct.TYPE_8__, %struct.coda_dev* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.coda_dev = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.coda_q_data = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Video Data Order Adapter: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@CODA_FRAME_CHROMA_INTERLEAVE = common dso_local global i32 0, align 4
@CODA9_FRAME_TILED2LINEAR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@GDI_TILED_FRAME_MB_RASTER_MAP = common dso_local global i64 0, align 8
@CODA_REG_BIT_FRAME_MEM_CTRL = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_BB_START = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_BB_SIZE = common dso_local global i32 0, align 4
@CODA_REORDER_ENABLE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@CODA_NO_INT_ENABLE = common dso_local global i64 0, align 8
@CODA_CMD_DEC_SEQ_OPTION = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_MPEG4 = common dso_local global i64 0, align 8
@CODA_MP4_AUX_MPEG4 = common dso_local global i64 0, align 8
@CODA_MP4_CLASS_MPEG4 = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_MP4_ASP_CLASS = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@CODA_CMD_DEC_SEQ_PS_BB_START = common dso_local global i32 0, align 4
@CODA7_PS_BUF_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_PS_BB_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_X264_MV_EN = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_SPP_CHUNK_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_JPG_THUMB_EN = common dso_local global i32 0, align 4
@CODA_CMD_DEC_SEQ_SRC_SIZE = common dso_local global i32 0, align 4
@CODA_BIT_DEC_SEQ_INIT_ESCAPE = common dso_local global i64 0, align 8
@CODA_COMMAND_SEQ_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"CODA_COMMAND_SEQ_INIT timeout\0A\00", align 1
@CODA_RET_DEC_SEQ_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"CODA_COMMAND_SEQ_INIT failed, error code = 0x%x\0A\00", align 1
@CODA_RET_DEC_SEQ_ERR_REASON = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CODA_RET_DEC_SEQ_SRC_SIZE = common dso_local global i32 0, align 4
@CODA_DX6 = common dso_local global i64 0, align 8
@CODADX6_PICWIDTH_OFFSET = common dso_local global i64 0, align 8
@CODADX6_PICWIDTH_MASK = common dso_local global i64 0, align 8
@CODADX6_PICHEIGHT_MASK = common dso_local global i64 0, align 8
@CODA7_PICWIDTH_OFFSET = common dso_local global i64 0, align 8
@CODA7_PICWIDTH_MASK = common dso_local global i64 0, align 8
@CODA7_PICHEIGHT_MASK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"stream is %dx%d, not %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"start decoding: %dx%d\0A\00", align 1
@CODA_RET_DEC_SEQ_FRAME_NEED = common dso_local global i32 0, align 4
@CODA_MAX_FRAMEBUFFERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"not enough framebuffers to decode (%d < %d)\0A\00", align 1
@CODA_RET_DEC_SEQ_CROP_LEFT_RIGHT = common dso_local global i32 0, align 4
@CODA_RET_DEC_SEQ_CROP_TOP_BOTTOM = common dso_local global i32 0, align 4
@CODA7_RET_DEC_SEQ_HEADER_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @__coda_decoder_seq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__coda_decoder_seq_init(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_q_data*, align 8
  %5 = alloca %struct.coda_q_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.coda_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 14
  %21 = load %struct.coda_dev*, %struct.coda_dev** %20, align 8
  store %struct.coda_dev* %21, %struct.coda_dev** %8, align 8
  %22 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %23 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %22, i32 0, i32 2
  %24 = call i32 @lockdep_assert_held(i32* %23)
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %26 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i32, %struct.coda_ctx*, i8*, ...) @coda_dbg(i32 1, %struct.coda_ctx* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %34 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %35 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %33, i32 %34)
  store %struct.coda_q_data* %35, %struct.coda_q_data** %4, align 8
  %36 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %37 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %38 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %36, i32 %37)
  store %struct.coda_q_data* %38, %struct.coda_q_data** %5, align 8
  %39 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %43, i32 0, i32 13
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load %struct.coda_q_data*, %struct.coda_q_data** %4, align 8
  %48 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %51 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %54 = call i32 @coda_kfifo_sync_to_device_full(%struct.coda_ctx* %53)
  %55 = load i32, i32* @CODA_FRAME_CHROMA_INTERLEAVE, align 4
  %56 = or i32 %55, 1536
  %57 = load i32, i32* @CODA9_FRAME_TILED2LINEAR, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %1
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67, %1
  %72 = load i32, i32* @CODA_FRAME_CHROMA_INTERLEAVE, align 4
  %73 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GDI_TILED_FRAME_MB_RASTER_MAP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @CODA9_FRAME_TILED2LINEAR, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ 0, %88 ], [ %90, %89 ]
  %93 = or i32 1536, %92
  %94 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %77
  %99 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %100 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CODA_REG_BIT_FRAME_MEM_CTRL, align 4
  %104 = call i32 @coda_write(%struct.coda_dev* %99, i32 %102, i32 %103)
  %105 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 8
  %107 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %107, i32 0, i32 12
  store i64 0, i64* %108, align 8
  %109 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %110 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @CODA_REG_BIT_FRM_DIS_FLG(i32 %112)
  %114 = call i32 @coda_write(%struct.coda_dev* %109, i32 0, i32 %113)
  %115 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @CODA_CMD_DEC_SEQ_BB_START, align 4
  %119 = call i32 @coda_write(%struct.coda_dev* %115, i32 %117, i32 %118)
  %120 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sdiv i64 %121, 1024
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* @CODA_CMD_DEC_SEQ_BB_SIZE, align 4
  %125 = call i32 @coda_write(%struct.coda_dev* %120, i32 %123, i32 %124)
  store i64 0, i64* %13, align 8
  %126 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %127 = call i64 @coda_reorder_enable(%struct.coda_ctx* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %98
  %130 = load i64, i64* @CODA_REORDER_ENABLE, align 8
  %131 = load i64, i64* %13, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %129, %98
  %134 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %134, i32 0, i32 10
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i64, i64* @CODA_NO_INT_ENABLE, align 8
  %143 = load i64, i64* %13, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %13, align 8
  br label %145

145:                                              ; preds = %141, %133
  %146 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %147 = load i64, i64* %13, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @CODA_CMD_DEC_SEQ_OPTION, align 4
  %150 = call i32 @coda_write(%struct.coda_dev* %146, i32 %148, i32 %149)
  %151 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %152 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %151, i32 0, i32 10
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %157 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  %159 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %160 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %159, i32 0, i32 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CODA_960, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %145
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i64, i64* @CODA_MP4_AUX_MPEG4, align 8
  %172 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i64 %171, i64* %174, align 8
  br label %179

175:                                              ; preds = %166, %145
  %176 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %170
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @V4L2_PIX_FMT_MPEG4, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %185 = load i32, i32* @CODA_MP4_CLASS_MPEG4, align 4
  %186 = load i32, i32* @CODA_CMD_DEC_SEQ_MP4_ASP_CLASS, align 4
  %187 = call i32 @coda_write(%struct.coda_dev* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %179
  %189 = load i64, i64* %11, align 8
  %190 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %237

192:                                              ; preds = %188
  %193 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %194 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CODA_HX4, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %192
  %201 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %202 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %201, i32 0, i32 0
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CODA_7541, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %200, %192
  %209 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %210 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %211 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CODA_CMD_DEC_SEQ_PS_BB_START, align 4
  %215 = call i32 @coda_write(%struct.coda_dev* %209, i32 %213, i32 %214)
  %216 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %217 = load i32, i32* @CODA7_PS_BUF_SIZE, align 4
  %218 = sdiv i32 %217, 1024
  %219 = load i32, i32* @CODA_CMD_DEC_SEQ_PS_BB_SIZE, align 4
  %220 = call i32 @coda_write(%struct.coda_dev* %216, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %208, %200
  %222 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %223 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %222, i32 0, i32 0
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @CODA_960, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %221
  %230 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %231 = load i32, i32* @CODA_CMD_DEC_SEQ_X264_MV_EN, align 4
  %232 = call i32 @coda_write(%struct.coda_dev* %230, i32 0, i32 %231)
  %233 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %234 = load i32, i32* @CODA_CMD_DEC_SEQ_SPP_CHUNK_SIZE, align 4
  %235 = call i32 @coda_write(%struct.coda_dev* %233, i32 512, i32 %234)
  br label %236

236:                                              ; preds = %229, %221
  br label %237

237:                                              ; preds = %236, %188
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %243 = load i32, i32* @CODA_CMD_DEC_SEQ_JPG_THUMB_EN, align 4
  %244 = call i32 @coda_write(%struct.coda_dev* %242, i32 0, i32 %243)
  br label %245

245:                                              ; preds = %241, %237
  %246 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %247 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @CODA_960, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %255 = load i32, i32* @CODA_CMD_DEC_SEQ_SRC_SIZE, align 4
  %256 = call i32 @coda_write(%struct.coda_dev* %254, i32 0, i32 %255)
  br label %257

257:                                              ; preds = %253, %245
  %258 = load i64, i64* @CODA_BIT_DEC_SEQ_INIT_ESCAPE, align 8
  %259 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %260 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %259, i32 0, i32 7
  store i64 %258, i64* %260, align 8
  %261 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %262 = load i32, i32* @CODA_COMMAND_SEQ_INIT, align 4
  %263 = call i32 @coda_command_sync(%struct.coda_ctx* %261, i32 %262)
  store i32 %263, i32* %14, align 4
  %264 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %265 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %264, i32 0, i32 7
  store i64 0, i64* %265, align 8
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %257
  %269 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %270 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %269, i32 0, i32 1
  %271 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %272 = load i32, i32* %14, align 4
  store i32 %272, i32* %2, align 4
  br label %478

273:                                              ; preds = %257
  %274 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %275 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %274, i32 0, i32 3
  store i32 -1, i32* %275, align 4
  %276 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %277 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %276, i32 0, i32 4
  store i32 1, i32* %277, align 8
  %278 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %279 = call i32 @coda_kfifo_sync_from_device(%struct.coda_ctx* %278)
  %280 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %281 = load i32, i32* @CODA_RET_DEC_SEQ_SUCCESS, align 4
  %282 = call i8* @coda_read(%struct.coda_dev* %280, i32 %281)
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %273
  %285 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %286 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %285, i32 0, i32 1
  %287 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %288 = load i32, i32* @CODA_RET_DEC_SEQ_ERR_REASON, align 4
  %289 = call i8* @coda_read(%struct.coda_dev* %287, i32 %288)
  %290 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %286, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %289)
  %291 = load i32, i32* @EAGAIN, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %2, align 4
  br label %478

293:                                              ; preds = %273
  %294 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %295 = load i32, i32* @CODA_RET_DEC_SEQ_SRC_SIZE, align 4
  %296 = call i8* @coda_read(%struct.coda_dev* %294, i32 %295)
  %297 = ptrtoint i8* %296 to i64
  store i64 %297, i64* %13, align 8
  %298 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %299 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %298, i32 0, i32 0
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @CODA_DX6, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %316

305:                                              ; preds = %293
  %306 = load i64, i64* %13, align 8
  %307 = load i64, i64* @CODADX6_PICWIDTH_OFFSET, align 8
  %308 = ashr i64 %306, %307
  %309 = load i64, i64* @CODADX6_PICWIDTH_MASK, align 8
  %310 = and i64 %308, %309
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %9, align 4
  %312 = load i64, i64* %13, align 8
  %313 = load i64, i64* @CODADX6_PICHEIGHT_MASK, align 8
  %314 = and i64 %312, %313
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %10, align 4
  br label %327

316:                                              ; preds = %293
  %317 = load i64, i64* %13, align 8
  %318 = load i64, i64* @CODA7_PICWIDTH_OFFSET, align 8
  %319 = ashr i64 %317, %318
  %320 = load i64, i64* @CODA7_PICWIDTH_MASK, align 8
  %321 = and i64 %319, %320
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %9, align 4
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* @CODA7_PICHEIGHT_MASK, align 8
  %325 = and i64 %323, %324
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %10, align 4
  br label %327

327:                                              ; preds = %316, %305
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %330 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = icmp sgt i32 %328, %331
  br i1 %332, label %339, label %333

333:                                              ; preds = %327
  %334 = load i32, i32* %10, align 4
  %335 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %336 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = icmp sgt i32 %334, %337
  br i1 %338, label %339, label %353

339:                                              ; preds = %333, %327
  %340 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %341 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %340, i32 0, i32 1
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* %10, align 4
  %344 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %345 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %348 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %342, i32 %343, i32 %346, i32 %349)
  %351 = load i32, i32* @EINVAL, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %2, align 4
  br label %478

353:                                              ; preds = %333
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @round_up(i32 %354, i32 16)
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @round_up(i32 %356, i32 16)
  store i32 %357, i32* %10, align 4
  %358 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %10, align 4
  %361 = call i32 (i32, %struct.coda_ctx*, i8*, ...) @coda_dbg(i32 1, %struct.coda_ctx* %358, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %359, i32 %360)
  %362 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %363 = load i32, i32* @CODA_RET_DEC_SEQ_FRAME_NEED, align 4
  %364 = call i8* @coda_read(%struct.coda_dev* %362, i32 %363)
  %365 = ptrtoint i8* %364 to i32
  %366 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %367 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %366, i32 0, i32 5
  store i32 %365, i32* %367, align 4
  %368 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %369 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %353
  %373 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %374 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 4
  br label %377

377:                                              ; preds = %372, %353
  %378 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %379 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @CODA_MAX_FRAMEBUFFERS, align 4
  %382 = icmp sgt i32 %380, %381
  br i1 %382, label %383, label %393

383:                                              ; preds = %377
  %384 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %385 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %384, i32 0, i32 1
  %386 = load i32, i32* @CODA_MAX_FRAMEBUFFERS, align 4
  %387 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %388 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %385, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %386, i32 %389)
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %2, align 4
  br label %478

393:                                              ; preds = %377
  %394 = load i64, i64* %11, align 8
  %395 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %448

397:                                              ; preds = %393
  %398 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %399 = load i32, i32* @CODA_RET_DEC_SEQ_CROP_LEFT_RIGHT, align 4
  %400 = call i8* @coda_read(%struct.coda_dev* %398, i32 %399)
  %401 = ptrtoint i8* %400 to i64
  store i64 %401, i64* %15, align 8
  %402 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %403 = load i32, i32* @CODA_RET_DEC_SEQ_CROP_TOP_BOTTOM, align 4
  %404 = call i8* @coda_read(%struct.coda_dev* %402, i32 %403)
  %405 = ptrtoint i8* %404 to i64
  store i64 %405, i64* %16, align 8
  %406 = load i64, i64* %15, align 8
  %407 = ashr i64 %406, 10
  %408 = and i64 %407, 1023
  %409 = trunc i64 %408 to i32
  %410 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %411 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  store i32 %409, i32* %412, align 8
  %413 = load i64, i64* %16, align 8
  %414 = ashr i64 %413, 10
  %415 = and i64 %414, 1023
  %416 = trunc i64 %415 to i32
  %417 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %418 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 1
  store i32 %416, i32* %419, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %422 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = sub nsw i32 %420, %424
  %426 = sext i32 %425 to i64
  %427 = load i64, i64* %15, align 8
  %428 = and i64 %427, 1023
  %429 = sub nsw i64 %426, %428
  %430 = trunc i64 %429 to i32
  %431 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %432 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 2
  store i32 %430, i32* %433, align 8
  %434 = load i32, i32* %10, align 4
  %435 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %436 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %434, %438
  %440 = sext i32 %439 to i64
  %441 = load i64, i64* %16, align 8
  %442 = and i64 %441, 1023
  %443 = sub nsw i64 %440, %442
  %444 = trunc i64 %443 to i32
  %445 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %446 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 3
  store i32 %444, i32* %447, align 4
  br label %448

448:                                              ; preds = %397, %393
  %449 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %450 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %449, i32 0, i32 0
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @CODA_DX6, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %477

456:                                              ; preds = %448
  %457 = load %struct.coda_dev*, %struct.coda_dev** %8, align 8
  %458 = load i32, i32* @CODA7_RET_DEC_SEQ_HEADER_REPORT, align 4
  %459 = call i8* @coda_read(%struct.coda_dev* %457, i32 %458)
  %460 = ptrtoint i8* %459 to i64
  store i64 %460, i64* %13, align 8
  %461 = load i64, i64* %13, align 8
  %462 = and i64 %461, 255
  store i64 %462, i64* %17, align 8
  %463 = load i64, i64* %13, align 8
  %464 = ashr i64 %463, 8
  %465 = and i64 %464, 127
  store i64 %465, i64* %18, align 8
  %466 = load i64, i64* %17, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %456
  %469 = load i64, i64* %18, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %468, %456
  %472 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %473 = load i64, i64* %17, align 8
  %474 = load i64, i64* %18, align 8
  %475 = call i32 @coda_update_profile_level_ctrls(%struct.coda_ctx* %472, i64 %473, i64 %474)
  br label %476

476:                                              ; preds = %471, %468
  br label %477

477:                                              ; preds = %476, %448
  store i32 0, i32* %2, align 4
  br label %478

478:                                              ; preds = %477, %383, %339, %284, %268
  %479 = load i32, i32* %2, align 4
  ret i32 %479
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, ...) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @coda_kfifo_sync_to_device_full(%struct.coda_ctx*) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @CODA_REG_BIT_FRM_DIS_FLG(i32) #1

declare dso_local i64 @coda_reorder_enable(%struct.coda_ctx*) #1

declare dso_local i32 @coda_command_sync(%struct.coda_ctx*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @coda_kfifo_sync_from_device(%struct.coda_ctx*) #1

declare dso_local i8* @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_update_profile_level_ctrls(%struct.coda_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
