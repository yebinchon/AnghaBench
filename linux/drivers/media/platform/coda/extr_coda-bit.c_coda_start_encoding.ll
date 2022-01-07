; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_start_encoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_start_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32, i64, i32, i32, i64*, i32**, %struct.coda_dev*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__, i32, %struct.TYPE_12__ }
%struct.coda_dev = type { i32, %struct.TYPE_20__*, %struct.TYPE_13__, %struct.v4l2_device }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8** }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.coda_q_data = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"coda is not initialized.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CODA_REG_BIT_PARA_BUF_ADDR = common dso_local global i32 0, align 4
@CODADX6_STREAM_BUF_DYNALLOC_EN = common dso_local global i32 0, align 4
@CODADX6_STREAM_BUF_PIC_RESET = common dso_local global i32 0, align 4
@CODA_REG_BIT_STREAM_CTRL = common dso_local global i32 0, align 4
@CODA9_GDI_WPROT_RGN_EN = common dso_local global i32 0, align 4
@CODA7_STREAM_BUF_DYNALLOC_EN = common dso_local global i32 0, align 4
@CODA7_STREAM_BUF_PIC_RESET = common dso_local global i32 0, align 4
@CODA_FRAME_CHROMA_INTERLEAVE = common dso_local global i32 0, align 4
@CODA9_FRAME_TILED2LINEAR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@GDI_TILED_FRAME_MB_RASTER_MAP = common dso_local global i64 0, align 8
@CODA_REG_BIT_FRAME_MEM_CTRL = common dso_local global i32 0, align 4
@CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR = common dso_local global i32 0, align 4
@CODADX6_PICWIDTH_MASK = common dso_local global i32 0, align 4
@CODADX6_PICWIDTH_OFFSET = common dso_local global i32 0, align 4
@CODADX6_PICHEIGHT_MASK = common dso_local global i32 0, align 4
@CODA_PICHEIGHT_OFFSET = common dso_local global i32 0, align 4
@CODA7_PICWIDTH_MASK = common dso_local global i32 0, align 4
@CODA7_PICWIDTH_OFFSET = common dso_local global i32 0, align 4
@CODA7_PICHEIGHT_MASK = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_SRC_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_SRC_F_RATE = common dso_local global i32 0, align 4
@CODA9_STD_MPEG4 = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_COD_STD = common dso_local global i32 0, align 4
@CODA_STD_MPEG4 = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_MP4_PARA = common dso_local global i32 0, align 4
@CODA9_STD_H264 = common dso_local global i32 0, align 4
@CODA_STD_H264 = common dso_local global i32 0, align 4
@CODA_264PARAM_DISABLEDEBLK_MASK = common dso_local global i32 0, align 4
@CODA_264PARAM_DISABLEDEBLK_OFFSET = common dso_local global i32 0, align 4
@CODA_264PARAM_DEBLKFILTEROFFSETALPHA_MASK = common dso_local global i32 0, align 4
@CODA_264PARAM_DEBLKFILTEROFFSETALPHA_OFFSET = common dso_local global i32 0, align 4
@CODA_264PARAM_DEBLKFILTEROFFSETBETA_MASK = common dso_local global i32 0, align 4
@CODA_264PARAM_DEBLKFILTEROFFSETBETA_OFFSET = common dso_local global i32 0, align 4
@CODA_264PARAM_CONSTRAINEDINTRAPREDFLAG_OFFSET = common dso_local global i32 0, align 4
@CODA_264PARAM_CHROMAQPOFFSET_MASK = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_264_PARA = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_JPG_PARA = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_JPG_THUMB_EN = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"dst format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_SLICE_MODE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_GOP_SIZE = common dso_local global i32 0, align 4
@CODA_RATECONTROL_BITRATE_MASK = common dso_local global i32 0, align 4
@CODA_RATECONTROL_BITRATE_OFFSET = common dso_local global i32 0, align 4
@CODA_RATECONTROL_ENABLE_MASK = common dso_local global i32 0, align 4
@CODA_RATECONTROL_INITIALDELAY_MASK = common dso_local global i32 0, align 4
@CODA_RATECONTROL_INITIALDELAY_OFFSET = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_RC_PARA = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_RC_BUF_SIZE = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_INTRA_REFRESH = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_BB_START = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_BB_SIZE = common dso_local global i32 0, align 4
@CODA9_DEFAULT_GAMMA = common dso_local global i32 0, align 4
@CODA_DEFAULT_GAMMA = common dso_local global i32 0, align 4
@CODA_GAMMA_MASK = common dso_local global i32 0, align 4
@CODA_GAMMA_OFFSET = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_RC_GAMMA = common dso_local global i32 0, align 4
@CODA_QPMIN_OFFSET = common dso_local global i32 0, align 4
@CODA_QPMAX_OFFSET = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX = common dso_local global i32 0, align 4
@CODA9_OPTION_RCQPMAX_OFFSET = common dso_local global i32 0, align 4
@CODA9_OPTION_GAMMA_OFFSET = common dso_local global i32 0, align 4
@CODADX6_OPTION_GAMMA_OFFSET = common dso_local global i32 0, align 4
@CODA7_OPTION_GAMMA_OFFSET = common dso_local global i32 0, align 4
@CODA7_OPTION_RCQPMIN_OFFSET = common dso_local global i32 0, align 4
@CODA7_OPTION_RCQPMAX_OFFSET = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_OPTION = common dso_local global i32 0, align 4
@CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE = common dso_local global i32 0, align 4
@FMO_SLICE_SAVE_BUF_SIZE = common dso_local global i32 0, align 4
@CODADX6_CMD_ENC_SEQ_FMO = common dso_local global i32 0, align 4
@CODA7_CMD_ENC_SEQ_SEARCH_BASE = common dso_local global i32 0, align 4
@CODA7_CMD_ENC_SEQ_SEARCH_SIZE = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_SEQ_ME_OPTION = common dso_local global i32 0, align 4
@CODA9_CMD_ENC_SEQ_INTRA_WEIGHT = common dso_local global i32 0, align 4
@CODA_COMMAND_SEQ_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"CODA_COMMAND_SEQ_INIT timeout\0A\00", align 1
@CODA_RET_ENC_SEQ_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CODA_COMMAND_SEQ_INIT failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate framebuffers\0A\00", align 1
@CODA_CMD_SET_FRAME_BUF_NUM = common dso_local global i32 0, align 4
@CODA_CMD_SET_FRAME_BUF_STRIDE = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_BIT_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR = common dso_local global i32 0, align 4
@CODA7_CMD_SET_FRAME_AXI_OVL_ADDR = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_AXI_BTP_ADDR = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_SUBSAMP_A = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_SUBSAMP_B = common dso_local global i32 0, align 4
@CODA_COMMAND_SET_FRAME_BUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"CODA_COMMAND_SET_FRAME_BUF timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"start encoding %dx%d %4.4s->%4.4s @ %d/%d Hz\0A\00", align 1
@CODA_HEADER_H264_SPS = common dso_local global i32 0, align 4
@CODA_HEADER_H264_PPS = common dso_local global i32 0, align 4
@CODA_HEADER_MP4V_VOS = common dso_local global i32 0, align 4
@CODA_HEADER_MP4V_VIS = common dso_local global i32 0, align 4
@CODA_HEADER_MP4V_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_start_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_start_encoding(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.coda_q_data*, align 8
  %7 = alloca %struct.coda_q_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vb2_v4l2_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %17, i32 0, i32 6
  %19 = load %struct.coda_dev*, %struct.coda_dev** %18, align 8
  store %struct.coda_dev* %19, %struct.coda_dev** %4, align 8
  %20 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %21 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %20, i32 0, i32 3
  store %struct.v4l2_device* %21, %struct.v4l2_device** %5, align 8
  %22 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %23 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %24 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %22, i32 %23)
  store %struct.coda_q_data* %24, %struct.coda_q_data** %6, align 8
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %26 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %27 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %25, i32 %26)
  store %struct.coda_q_data* %27, %struct.coda_q_data** %7, align 8
  %28 = load %struct.coda_q_data*, %struct.coda_q_data** %7, align 8
  %29 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %34)
  store %struct.vb2_v4l2_buffer* %35, %struct.vb2_v4l2_buffer** %10, align 8
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 0
  %38 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.coda_q_data*, %struct.coda_q_data** %7, align 8
  %40 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %43 = call i32 @coda_is_initialized(%struct.coda_dev* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %1
  %46 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %47 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %1045

50:                                               ; preds = %1
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  %54 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 18
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kmalloc(i32 64, i32 %62)
  %64 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 18
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %53
  %70 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 18
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kmalloc(i32 64, i32 %78)
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 18
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* %79, i8** %84, align 8
  br label %85

85:                                               ; preds = %77, %69
  %86 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %87 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 17
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @coda_set_jpeg_compression_quality(%struct.coda_ctx* %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %50
  %93 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %94 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %97 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CODA_REG_BIT_PARA_BUF_ADDR, align 4
  %102 = call i32 @coda_write(%struct.coda_dev* %96, i32 %100, i32 %101)
  %103 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @CODA_REG_BIT_RD_PTR(i32 %107)
  %109 = call i32 @coda_write(%struct.coda_dev* %103, i32 %104, i32 %108)
  %110 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @CODA_REG_BIT_WR_PTR(i32 %114)
  %116 = call i32 @coda_write(%struct.coda_dev* %110, i32 %111, i32 %115)
  %117 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %118 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %140 [
    i32 132, label %122
    i32 133, label %129
    i32 131, label %133
    i32 134, label %133
  ]

122:                                              ; preds = %92
  %123 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %124 = load i32, i32* @CODADX6_STREAM_BUF_DYNALLOC_EN, align 4
  %125 = load i32, i32* @CODADX6_STREAM_BUF_PIC_RESET, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @CODA_REG_BIT_STREAM_CTRL, align 4
  %128 = call i32 @coda_write(%struct.coda_dev* %123, i32 %126, i32 %127)
  br label %140

129:                                              ; preds = %92
  %130 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %131 = load i32, i32* @CODA9_GDI_WPROT_RGN_EN, align 4
  %132 = call i32 @coda_write(%struct.coda_dev* %130, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %92, %92, %129
  %134 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %135 = load i32, i32* @CODA7_STREAM_BUF_DYNALLOC_EN, align 4
  %136 = load i32, i32* @CODA7_STREAM_BUF_PIC_RESET, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @CODA_REG_BIT_STREAM_CTRL, align 4
  %139 = call i32 @coda_write(%struct.coda_dev* %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %92, %133, %122
  %141 = load i32, i32* @CODA_FRAME_CHROMA_INTERLEAVE, align 4
  %142 = or i32 %141, 1536
  %143 = load i32, i32* @CODA9_FRAME_TILED2LINEAR, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %151 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %140
  %157 = load i32, i32* @CODA_FRAME_CHROMA_INTERLEAVE, align 4
  %158 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %159 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %140
  %163 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @GDI_TILED_FRAME_MB_RASTER_MAP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load i32, i32* @CODA9_FRAME_TILED2LINEAR, align 4
  %170 = or i32 1536, %169
  %171 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %168, %162
  %176 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %177 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %178 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CODA_REG_BIT_FRAME_MEM_CTRL, align 4
  %181 = call i32 @coda_write(%struct.coda_dev* %176, i32 %179, i32 %180)
  %182 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %183 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %182, i32 0, i32 1
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 132
  br i1 %187, label %188, label %196

188:                                              ; preds = %175
  %189 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %190 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %191 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR, align 4
  %195 = call i32 @coda_write(%struct.coda_dev* %189, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %188, %175
  store i32 0, i32* %13, align 4
  %197 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %198 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %197, i32 0, i32 1
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %265 [
    i32 132, label %202
    i32 131, label %221
    i32 134, label %221
    i32 133, label %246
  ]

202:                                              ; preds = %196
  %203 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %204 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @CODADX6_PICWIDTH_MASK, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @CODADX6_PICWIDTH_OFFSET, align 4
  %210 = shl i32 %208, %209
  store i32 %210, i32* %13, align 4
  %211 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %212 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @CODADX6_PICHEIGHT_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @CODA_PICHEIGHT_OFFSET, align 4
  %218 = shl i32 %216, %217
  %219 = load i32, i32* %13, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %13, align 4
  br label %265

221:                                              ; preds = %196, %196
  %222 = load i32, i32* %14, align 4
  %223 = icmp eq i32 %222, 130
  br i1 %223, label %224, label %245

224:                                              ; preds = %221
  %225 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %226 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @round_up(i32 %228, i32 16)
  %230 = load i32, i32* @CODA7_PICWIDTH_MASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* @CODA7_PICWIDTH_OFFSET, align 4
  %233 = shl i32 %231, %232
  store i32 %233, i32* %13, align 4
  %234 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %235 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @round_up(i32 %237, i32 16)
  %239 = load i32, i32* @CODA7_PICHEIGHT_MASK, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @CODA_PICHEIGHT_OFFSET, align 4
  %242 = shl i32 %240, %241
  %243 = load i32, i32* %13, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %13, align 4
  br label %265

245:                                              ; preds = %221
  br label %246

246:                                              ; preds = %196, %245
  %247 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %248 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @CODA7_PICWIDTH_MASK, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @CODA7_PICWIDTH_OFFSET, align 4
  %254 = shl i32 %252, %253
  store i32 %254, i32* %13, align 4
  %255 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %256 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @CODA7_PICHEIGHT_MASK, align 4
  %260 = and i32 %258, %259
  %261 = load i32, i32* @CODA_PICHEIGHT_OFFSET, align 4
  %262 = shl i32 %260, %261
  %263 = load i32, i32* %13, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %246, %196, %224, %202
  %266 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @CODA_CMD_ENC_SEQ_SRC_SIZE, align 4
  %269 = call i32 @coda_write(%struct.coda_dev* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %14, align 4
  %271 = icmp eq i32 %270, 129
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %274 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %273, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  store i32 0, i32* %275, align 8
  br label %276

276:                                              ; preds = %272, %265
  %277 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %278 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %279 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %278, i32 0, i32 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @CODA_CMD_ENC_SEQ_SRC_F_RATE, align 4
  %283 = call i32 @coda_write(%struct.coda_dev* %277, i32 %281, i32 %282)
  %284 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %285 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %284, i32 0, i32 9
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %290 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %289, i32 0, i32 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 16
  store i32 %288, i32* %291, align 8
  %292 = load i32, i32* %14, align 4
  switch i32 %292, label %398 [
    i32 128, label %293
    i32 130, label %314
    i32 129, label %376
  ]

293:                                              ; preds = %276
  %294 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %295 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %294, i32 0, i32 1
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 133
  br i1 %299, label %300, label %305

300:                                              ; preds = %293
  %301 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %302 = load i32, i32* @CODA9_STD_MPEG4, align 4
  %303 = load i32, i32* @CODA_CMD_ENC_SEQ_COD_STD, align 4
  %304 = call i32 @coda_write(%struct.coda_dev* %301, i32 %302, i32 %303)
  br label %310

305:                                              ; preds = %293
  %306 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %307 = load i32, i32* @CODA_STD_MPEG4, align 4
  %308 = load i32, i32* @CODA_CMD_ENC_SEQ_COD_STD, align 4
  %309 = call i32 @coda_write(%struct.coda_dev* %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %300
  %311 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %312 = load i32, i32* @CODA_CMD_ENC_SEQ_MP4_PARA, align 4
  %313 = call i32 @coda_write(%struct.coda_dev* %311, i32 0, i32 %312)
  br label %404

314:                                              ; preds = %276
  %315 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %316 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %315, i32 0, i32 1
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 133
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %323 = load i32, i32* @CODA9_STD_H264, align 4
  %324 = load i32, i32* @CODA_CMD_ENC_SEQ_COD_STD, align 4
  %325 = call i32 @coda_write(%struct.coda_dev* %322, i32 %323, i32 %324)
  br label %331

326:                                              ; preds = %314
  %327 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %328 = load i32, i32* @CODA_STD_H264, align 4
  %329 = load i32, i32* @CODA_CMD_ENC_SEQ_COD_STD, align 4
  %330 = call i32 @coda_write(%struct.coda_dev* %327, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %326, %321
  %332 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %333 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @CODA_264PARAM_DISABLEDEBLK_MASK, align 4
  %337 = and i32 %335, %336
  %338 = load i32, i32* @CODA_264PARAM_DISABLEDEBLK_OFFSET, align 4
  %339 = shl i32 %337, %338
  %340 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %341 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @CODA_264PARAM_DEBLKFILTEROFFSETALPHA_MASK, align 4
  %345 = and i32 %343, %344
  %346 = load i32, i32* @CODA_264PARAM_DEBLKFILTEROFFSETALPHA_OFFSET, align 4
  %347 = shl i32 %345, %346
  %348 = or i32 %339, %347
  %349 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %350 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @CODA_264PARAM_DEBLKFILTEROFFSETBETA_MASK, align 4
  %354 = and i32 %352, %353
  %355 = load i32, i32* @CODA_264PARAM_DEBLKFILTEROFFSETBETA_OFFSET, align 4
  %356 = shl i32 %354, %355
  %357 = or i32 %348, %356
  %358 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %359 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %358, i32 0, i32 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @CODA_264PARAM_CONSTRAINEDINTRAPREDFLAG_OFFSET, align 4
  %363 = shl i32 %361, %362
  %364 = or i32 %357, %363
  %365 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %366 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %365, i32 0, i32 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @CODA_264PARAM_CHROMAQPOFFSET_MASK, align 4
  %370 = and i32 %368, %369
  %371 = or i32 %364, %370
  store i32 %371, i32* %13, align 4
  %372 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* @CODA_CMD_ENC_SEQ_264_PARA, align 4
  %375 = call i32 @coda_write(%struct.coda_dev* %372, i32 %373, i32 %374)
  br label %404

376:                                              ; preds = %276
  %377 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %378 = load i32, i32* @CODA_CMD_ENC_SEQ_JPG_PARA, align 4
  %379 = call i32 @coda_write(%struct.coda_dev* %377, i32 0, i32 %378)
  %380 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %381 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %382 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL, align 4
  %386 = call i32 @coda_write(%struct.coda_dev* %380, i32 %384, i32 %385)
  %387 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %388 = load i32, i32* @CODA_CMD_ENC_SEQ_JPG_THUMB_EN, align 4
  %389 = call i32 @coda_write(%struct.coda_dev* %387, i32 0, i32 %388)
  %390 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %391 = load i32, i32* @CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE, align 4
  %392 = call i32 @coda_write(%struct.coda_dev* %390, i32 0, i32 %391)
  %393 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %394 = load i32, i32* @CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET, align 4
  %395 = call i32 @coda_write(%struct.coda_dev* %393, i32 0, i32 %394)
  %396 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %397 = call i32 @coda_jpeg_write_tables(%struct.coda_ctx* %396)
  br label %404

398:                                              ; preds = %276
  %399 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %400 = load i32, i32* %14, align 4
  %401 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %399, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %400)
  %402 = load i32, i32* @EINVAL, align 4
  %403 = sub nsw i32 0, %402
  store i32 %403, i32* %12, align 4
  br label %1040

404:                                              ; preds = %376, %331, %310
  %405 = load i32, i32* %14, align 4
  %406 = icmp ne i32 %405, 129
  br i1 %406, label %407, label %422

407:                                              ; preds = %404
  %408 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %409 = call i32 @coda_slice_mode(%struct.coda_ctx* %408)
  store i32 %409, i32* %13, align 4
  %410 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* @CODA_CMD_ENC_SEQ_SLICE_MODE, align 4
  %413 = call i32 @coda_write(%struct.coda_dev* %410, i32 %411, i32 %412)
  %414 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %415 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %414, i32 0, i32 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %13, align 4
  %418 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* @CODA_CMD_ENC_SEQ_GOP_SIZE, align 4
  %421 = call i32 @coda_write(%struct.coda_dev* %418, i32 %419, i32 %420)
  br label %422

422:                                              ; preds = %407, %404
  %423 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %424 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %423, i32 0, i32 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 8
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %468

428:                                              ; preds = %422
  %429 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %430 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %429, i32 0, i32 8
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 9
  store i32 0, i32* %431, align 4
  %432 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %433 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %432, i32 0, i32 8
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 10
  store i32 0, i32* %434, align 8
  %435 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %436 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %435, i32 0, i32 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 8
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @CODA_RATECONTROL_BITRATE_MASK, align 4
  %440 = and i32 %438, %439
  %441 = load i32, i32* @CODA_RATECONTROL_BITRATE_OFFSET, align 4
  %442 = shl i32 %440, %441
  store i32 %442, i32* %13, align 4
  %443 = load i32, i32* @CODA_RATECONTROL_ENABLE_MASK, align 4
  %444 = and i32 1, %443
  %445 = load i32, i32* %13, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %13, align 4
  %447 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %448 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %447, i32 0, i32 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 11
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @CODA_RATECONTROL_INITIALDELAY_MASK, align 4
  %452 = and i32 %450, %451
  %453 = load i32, i32* @CODA_RATECONTROL_INITIALDELAY_OFFSET, align 4
  %454 = shl i32 %452, %453
  %455 = load i32, i32* %13, align 4
  %456 = or i32 %455, %454
  store i32 %456, i32* %13, align 4
  %457 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %458 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %457, i32 0, i32 1
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 133
  br i1 %462, label %463, label %467

463:                                              ; preds = %428
  %464 = call i32 @BIT(i32 31)
  %465 = load i32, i32* %13, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %13, align 4
  br label %467

467:                                              ; preds = %463, %428
  br label %469

468:                                              ; preds = %422
  store i32 0, i32* %13, align 4
  br label %469

469:                                              ; preds = %468, %467
  %470 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %471 = load i32, i32* %13, align 4
  %472 = load i32, i32* @CODA_CMD_ENC_SEQ_RC_PARA, align 4
  %473 = call i32 @coda_write(%struct.coda_dev* %470, i32 %471, i32 %472)
  %474 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %475 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %476 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %475, i32 0, i32 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 12
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @CODA_CMD_ENC_SEQ_RC_BUF_SIZE, align 4
  %480 = call i32 @coda_write(%struct.coda_dev* %474, i32 %478, i32 %479)
  %481 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %482 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %483 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %482, i32 0, i32 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 13
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @CODA_CMD_ENC_SEQ_INTRA_REFRESH, align 4
  %487 = call i32 @coda_write(%struct.coda_dev* %481, i32 %485, i32 %486)
  %488 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %489 = load i32, i32* %8, align 4
  %490 = load i32, i32* @CODA_CMD_ENC_SEQ_BB_START, align 4
  %491 = call i32 @coda_write(%struct.coda_dev* %488, i32 %489, i32 %490)
  %492 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %493 = load i32, i32* %9, align 4
  %494 = sdiv i32 %493, 1024
  %495 = load i32, i32* @CODA_CMD_ENC_SEQ_BB_SIZE, align 4
  %496 = call i32 @coda_write(%struct.coda_dev* %492, i32 %494, i32 %495)
  store i32 0, i32* %13, align 4
  %497 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %498 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %497, i32 0, i32 1
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %501, 133
  br i1 %502, label %503, label %505

503:                                              ; preds = %469
  %504 = load i32, i32* @CODA9_DEFAULT_GAMMA, align 4
  store i32 %504, i32* %11, align 4
  br label %507

505:                                              ; preds = %469
  %506 = load i32, i32* @CODA_DEFAULT_GAMMA, align 4
  store i32 %506, i32* %11, align 4
  br label %507

507:                                              ; preds = %505, %503
  %508 = load i32, i32* %11, align 4
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %519

510:                                              ; preds = %507
  %511 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* @CODA_GAMMA_MASK, align 4
  %514 = and i32 %512, %513
  %515 = load i32, i32* @CODA_GAMMA_OFFSET, align 4
  %516 = shl i32 %514, %515
  %517 = load i32, i32* @CODA_CMD_ENC_SEQ_RC_GAMMA, align 4
  %518 = call i32 @coda_write(%struct.coda_dev* %511, i32 %516, i32 %517)
  br label %519

519:                                              ; preds = %510, %507
  %520 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %521 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %520, i32 0, i32 8
  %522 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i32 0, i32 14
  %523 = load i32, i32* %522, align 8
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %531, label %525

525:                                              ; preds = %519
  %526 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %527 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %526, i32 0, i32 8
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 15
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %548

531:                                              ; preds = %525, %519
  %532 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %533 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %534 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %533, i32 0, i32 8
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 14
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @CODA_QPMIN_OFFSET, align 4
  %538 = shl i32 %536, %537
  %539 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %540 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %539, i32 0, i32 8
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %540, i32 0, i32 15
  %542 = load i32, i32* %541, align 4
  %543 = load i32, i32* @CODA_QPMAX_OFFSET, align 4
  %544 = shl i32 %542, %543
  %545 = or i32 %538, %544
  %546 = load i32, i32* @CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX, align 4
  %547 = call i32 @coda_write(%struct.coda_dev* %532, i32 %545, i32 %546)
  br label %548

548:                                              ; preds = %531, %525
  %549 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %550 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %549, i32 0, i32 1
  %551 = load %struct.TYPE_20__*, %struct.TYPE_20__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = icmp eq i32 %553, 133
  br i1 %554, label %555, label %575

555:                                              ; preds = %548
  %556 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %557 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %556, i32 0, i32 8
  %558 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %557, i32 0, i32 15
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %566

561:                                              ; preds = %555
  %562 = load i32, i32* @CODA9_OPTION_RCQPMAX_OFFSET, align 4
  %563 = shl i32 1, %562
  %564 = load i32, i32* %13, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %13, align 4
  br label %566

566:                                              ; preds = %561, %555
  %567 = load i32, i32* @CODA_DEFAULT_GAMMA, align 4
  %568 = icmp sgt i32 %567, 0
  br i1 %568, label %569, label %574

569:                                              ; preds = %566
  %570 = load i32, i32* @CODA9_OPTION_GAMMA_OFFSET, align 4
  %571 = shl i32 1, %570
  %572 = load i32, i32* %13, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %13, align 4
  br label %574

574:                                              ; preds = %569, %566
  br label %619

575:                                              ; preds = %548
  %576 = load i32, i32* @CODA_DEFAULT_GAMMA, align 4
  %577 = icmp sgt i32 %576, 0
  br i1 %577, label %578, label %596

578:                                              ; preds = %575
  %579 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %580 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %579, i32 0, i32 1
  %581 = load %struct.TYPE_20__*, %struct.TYPE_20__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, 132
  br i1 %584, label %585, label %590

585:                                              ; preds = %578
  %586 = load i32, i32* @CODADX6_OPTION_GAMMA_OFFSET, align 4
  %587 = shl i32 1, %586
  %588 = load i32, i32* %13, align 4
  %589 = or i32 %588, %587
  store i32 %589, i32* %13, align 4
  br label %595

590:                                              ; preds = %578
  %591 = load i32, i32* @CODA7_OPTION_GAMMA_OFFSET, align 4
  %592 = shl i32 1, %591
  %593 = load i32, i32* %13, align 4
  %594 = or i32 %593, %592
  store i32 %594, i32* %13, align 4
  br label %595

595:                                              ; preds = %590, %585
  br label %596

596:                                              ; preds = %595, %575
  %597 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %598 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %597, i32 0, i32 8
  %599 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %598, i32 0, i32 14
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %596
  %603 = load i32, i32* @CODA7_OPTION_RCQPMIN_OFFSET, align 4
  %604 = shl i32 1, %603
  %605 = load i32, i32* %13, align 4
  %606 = or i32 %605, %604
  store i32 %606, i32* %13, align 4
  br label %607

607:                                              ; preds = %602, %596
  %608 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %609 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %608, i32 0, i32 8
  %610 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %609, i32 0, i32 15
  %611 = load i32, i32* %610, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %607
  %614 = load i32, i32* @CODA7_OPTION_RCQPMAX_OFFSET, align 4
  %615 = shl i32 1, %614
  %616 = load i32, i32* %13, align 4
  %617 = or i32 %616, %615
  store i32 %617, i32* %13, align 4
  br label %618

618:                                              ; preds = %613, %607
  br label %619

619:                                              ; preds = %618, %574
  %620 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %621 = load i32, i32* %13, align 4
  %622 = load i32, i32* @CODA_CMD_ENC_SEQ_OPTION, align 4
  %623 = call i32 @coda_write(%struct.coda_dev* %620, i32 %621, i32 %622)
  %624 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %625 = load i32, i32* @CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE, align 4
  %626 = call i32 @coda_write(%struct.coda_dev* %624, i32 0, i32 %625)
  %627 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %628 = call i32 @coda_setup_iram(%struct.coda_ctx* %627)
  %629 = load i32, i32* %14, align 4
  %630 = icmp eq i32 %629, 130
  br i1 %630, label %631, label %667

631:                                              ; preds = %619
  %632 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %633 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %632, i32 0, i32 1
  %634 = load %struct.TYPE_20__*, %struct.TYPE_20__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  switch i32 %636, label %666 [
    i32 132, label %637
    i32 131, label %644
    i32 134, label %644
    i32 133, label %659
  ]

637:                                              ; preds = %631
  %638 = load i32, i32* @FMO_SLICE_SAVE_BUF_SIZE, align 4
  %639 = shl i32 %638, 7
  store i32 %639, i32* %13, align 4
  %640 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %641 = load i32, i32* %13, align 4
  %642 = load i32, i32* @CODADX6_CMD_ENC_SEQ_FMO, align 4
  %643 = call i32 @coda_write(%struct.coda_dev* %640, i32 %641, i32 %642)
  br label %666

644:                                              ; preds = %631, %631
  %645 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %646 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %647 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %646, i32 0, i32 11
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* @CODA7_CMD_ENC_SEQ_SEARCH_BASE, align 4
  %651 = call i32 @coda_write(%struct.coda_dev* %645, i32 %649, i32 %650)
  %652 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %653 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %654 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %653, i32 0, i32 11
  %655 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %654, i32 0, i32 1
  %656 = load i32, i32* %655, align 4
  %657 = load i32, i32* @CODA7_CMD_ENC_SEQ_SEARCH_SIZE, align 4
  %658 = call i32 @coda_write(%struct.coda_dev* %652, i32 %656, i32 %657)
  br label %666

659:                                              ; preds = %631
  %660 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %661 = load i32, i32* @CODA9_CMD_ENC_SEQ_ME_OPTION, align 4
  %662 = call i32 @coda_write(%struct.coda_dev* %660, i32 0, i32 %661)
  %663 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %664 = load i32, i32* @CODA9_CMD_ENC_SEQ_INTRA_WEIGHT, align 4
  %665 = call i32 @coda_write(%struct.coda_dev* %663, i32 0, i32 %664)
  br label %666

666:                                              ; preds = %659, %631, %644, %637
  br label %667

667:                                              ; preds = %666, %619
  %668 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %669 = load i32, i32* @CODA_COMMAND_SEQ_INIT, align 4
  %670 = call i32 @coda_command_sync(%struct.coda_ctx* %668, i32 %669)
  store i32 %670, i32* %12, align 4
  %671 = load i32, i32* %12, align 4
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %673, label %676

673:                                              ; preds = %667
  %674 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %675 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %674, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %1040

676:                                              ; preds = %667
  %677 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %678 = load i32, i32* @CODA_RET_ENC_SEQ_SUCCESS, align 4
  %679 = call i64 @coda_read(%struct.coda_dev* %677, i32 %678)
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %681, label %686

681:                                              ; preds = %676
  %682 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %683 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %682, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %684 = load i32, i32* @EFAULT, align 4
  %685 = sub nsw i32 0, %684
  store i32 %685, i32* %12, align 4
  br label %1040

686:                                              ; preds = %676
  %687 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %688 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %687, i32 0, i32 2
  store i32 1, i32* %688, align 8
  %689 = load i32, i32* %14, align 4
  %690 = icmp ne i32 %689, 129
  br i1 %690, label %691, label %718

691:                                              ; preds = %686
  %692 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %693 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %692, i32 0, i32 1
  %694 = load %struct.TYPE_20__*, %struct.TYPE_20__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = icmp eq i32 %696, 133
  br i1 %697, label %698, label %701

698:                                              ; preds = %691
  %699 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %700 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %699, i32 0, i32 3
  store i32 4, i32* %700, align 4
  br label %704

701:                                              ; preds = %691
  %702 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %703 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %702, i32 0, i32 3
  store i32 2, i32* %703, align 4
  br label %704

704:                                              ; preds = %701, %698
  %705 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %706 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %707 = load i32, i32* %14, align 4
  %708 = call i32 @coda_alloc_framebuffers(%struct.coda_ctx* %705, %struct.coda_q_data* %706, i32 %707)
  store i32 %708, i32* %12, align 4
  %709 = load i32, i32* %12, align 4
  %710 = icmp slt i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %704
  %712 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %713 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %712, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %1040

714:                                              ; preds = %704
  store i32 2, i32* %15, align 4
  %715 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %716 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %715, i32 0, i32 2
  %717 = load i32, i32* %716, align 4
  store i32 %717, i32* %16, align 4
  br label %721

718:                                              ; preds = %686
  %719 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %720 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %719, i32 0, i32 3
  store i32 0, i32* %720, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %721

721:                                              ; preds = %718, %714
  %722 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %723 = load i32, i32* %15, align 4
  %724 = load i32, i32* @CODA_CMD_SET_FRAME_BUF_NUM, align 4
  %725 = call i32 @coda_write(%struct.coda_dev* %722, i32 %723, i32 %724)
  %726 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %727 = load i32, i32* %16, align 4
  %728 = load i32, i32* @CODA_CMD_SET_FRAME_BUF_STRIDE, align 4
  %729 = call i32 @coda_write(%struct.coda_dev* %726, i32 %727, i32 %728)
  %730 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %731 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %730, i32 0, i32 1
  %732 = load %struct.TYPE_20__*, %struct.TYPE_20__** %731, align 8
  %733 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 4
  %735 = icmp eq i32 %734, 131
  br i1 %735, label %743, label %736

736:                                              ; preds = %721
  %737 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %738 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %737, i32 0, i32 1
  %739 = load %struct.TYPE_20__*, %struct.TYPE_20__** %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 4
  %742 = icmp eq i32 %741, 134
  br i1 %742, label %743, label %750

743:                                              ; preds = %736, %721
  %744 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %745 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %746 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %745, i32 0, i32 2
  %747 = load i32, i32* %746, align 4
  %748 = load i32, i32* @CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE, align 4
  %749 = call i32 @coda_write(%struct.coda_dev* %744, i32 %747, i32 %748)
  br label %750

750:                                              ; preds = %743, %736
  %751 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %752 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %751, i32 0, i32 1
  %753 = load %struct.TYPE_20__*, %struct.TYPE_20__** %752, align 8
  %754 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 4
  %756 = icmp ne i32 %755, 132
  br i1 %756, label %757, label %834

757:                                              ; preds = %750
  %758 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %759 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %760 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %759, i32 0, i32 11
  %761 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %760, i32 0, i32 2
  %762 = load i32, i32* %761, align 8
  %763 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_BIT_ADDR, align 4
  %764 = call i32 @coda_write(%struct.coda_dev* %758, i32 %762, i32 %763)
  %765 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %766 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %767 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %766, i32 0, i32 11
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %767, i32 0, i32 3
  %769 = load i32, i32* %768, align 4
  %770 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR, align 4
  %771 = call i32 @coda_write(%struct.coda_dev* %765, i32 %769, i32 %770)
  %772 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %773 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %774 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %773, i32 0, i32 11
  %775 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %774, i32 0, i32 4
  %776 = load i32, i32* %775, align 8
  %777 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR, align 4
  %778 = call i32 @coda_write(%struct.coda_dev* %772, i32 %776, i32 %777)
  %779 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %780 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %781 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %780, i32 0, i32 11
  %782 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %781, i32 0, i32 5
  %783 = load i32, i32* %782, align 4
  %784 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR, align 4
  %785 = call i32 @coda_write(%struct.coda_dev* %779, i32 %783, i32 %784)
  %786 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %787 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %788 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %787, i32 0, i32 11
  %789 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %788, i32 0, i32 6
  %790 = load i32, i32* %789, align 8
  %791 = load i32, i32* @CODA7_CMD_SET_FRAME_AXI_OVL_ADDR, align 4
  %792 = call i32 @coda_write(%struct.coda_dev* %786, i32 %790, i32 %791)
  %793 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %794 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %793, i32 0, i32 1
  %795 = load %struct.TYPE_20__*, %struct.TYPE_20__** %794, align 8
  %796 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 4
  %798 = icmp eq i32 %797, 133
  br i1 %798, label %799, label %833

799:                                              ; preds = %757
  %800 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %801 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %802 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %801, i32 0, i32 11
  %803 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %802, i32 0, i32 7
  %804 = load i32, i32* %803, align 4
  %805 = load i32, i32* @CODA9_CMD_SET_FRAME_AXI_BTP_ADDR, align 4
  %806 = call i32 @coda_write(%struct.coda_dev* %800, i32 %804, i32 %805)
  %807 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %808 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %809 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %808, i32 0, i32 0
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  %812 = call i32 @coda9_set_frame_cache(%struct.coda_ctx* %807, i64 %811)
  %813 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %814 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %815 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %814, i32 0, i32 10
  %816 = load %struct.TYPE_16__*, %struct.TYPE_16__** %815, align 8
  %817 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %816, i64 2
  %818 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 4
  %821 = load i32, i32* @CODA9_CMD_SET_FRAME_SUBSAMP_A, align 4
  %822 = call i32 @coda_write(%struct.coda_dev* %813, i32 %820, i32 %821)
  %823 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %824 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %825 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %824, i32 0, i32 10
  %826 = load %struct.TYPE_16__*, %struct.TYPE_16__** %825, align 8
  %827 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %826, i64 3
  %828 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %827, i32 0, i32 0
  %829 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = load i32, i32* @CODA9_CMD_SET_FRAME_SUBSAMP_B, align 4
  %832 = call i32 @coda_write(%struct.coda_dev* %823, i32 %830, i32 %831)
  br label %833

833:                                              ; preds = %799, %757
  br label %834

834:                                              ; preds = %833, %750
  %835 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %836 = load i32, i32* @CODA_COMMAND_SET_FRAME_BUF, align 4
  %837 = call i32 @coda_command_sync(%struct.coda_ctx* %835, i32 %836)
  store i32 %837, i32* %12, align 4
  %838 = load i32, i32* %12, align 4
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %843

840:                                              ; preds = %834
  %841 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %842 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %841, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %1040

843:                                              ; preds = %834
  %844 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %845 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %846 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %845, i32 0, i32 3
  %847 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 4
  %849 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %850 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %849, i32 0, i32 3
  %851 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %850, i32 0, i32 1
  %852 = load i32, i32* %851, align 4
  %853 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %854 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %853, i32 0, i32 9
  %855 = load %struct.TYPE_17__*, %struct.TYPE_17__** %854, align 8
  %856 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %855, i32 0, i32 0
  %857 = bitcast i32* %856 to i8*
  %858 = bitcast i32* %14 to i8*
  %859 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %860 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %859, i32 0, i32 8
  %861 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = and i32 %862, 65535
  %864 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %865 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %864, i32 0, i32 8
  %866 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %865, i32 0, i32 0
  %867 = load i32, i32* %866, align 8
  %868 = ashr i32 %867, 16
  %869 = add nsw i32 %868, 1
  %870 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %844, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %848, i32 %852, i8* %857, i8* %858, i32 %863, i32 %869)
  %871 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %872 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %871, i32 0, i32 7
  %873 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 8
  %875 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %874)
  store %struct.vb2_v4l2_buffer* %875, %struct.vb2_v4l2_buffer** %10, align 8
  %876 = load i32, i32* %14, align 4
  switch i32 %876, label %1038 [
    i32 130, label %877
    i32 128, label %983
  ]

877:                                              ; preds = %843
  %878 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %879 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %880 = load i32, i32* @CODA_HEADER_H264_SPS, align 4
  %881 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %882 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %881, i32 0, i32 5
  %883 = load i32**, i32*** %882, align 8
  %884 = getelementptr inbounds i32*, i32** %883, i64 0
  %885 = load i32*, i32** %884, align 8
  %886 = getelementptr inbounds i32, i32* %885, i64 0
  %887 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %888 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %887, i32 0, i32 4
  %889 = load i64*, i64** %888, align 8
  %890 = getelementptr inbounds i64, i64* %889, i64 0
  %891 = call i32 @coda_encode_header(%struct.coda_ctx* %878, %struct.vb2_v4l2_buffer* %879, i32 %880, i32* %886, i64* %890)
  store i32 %891, i32* %12, align 4
  %892 = load i32, i32* %12, align 4
  %893 = icmp slt i32 %892, 0
  br i1 %893, label %894, label %895

894:                                              ; preds = %877
  br label %1040

895:                                              ; preds = %877
  %896 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %897 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %896, i32 0, i32 6
  %898 = load %struct.coda_dev*, %struct.coda_dev** %897, align 8
  %899 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %898, i32 0, i32 1
  %900 = load %struct.TYPE_20__*, %struct.TYPE_20__** %899, align 8
  %901 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 4
  %903 = icmp ne i32 %902, 133
  br i1 %903, label %904, label %943

904:                                              ; preds = %895
  %905 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %906 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %905, i32 0, i32 3
  %907 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %906, i32 0, i32 0
  %908 = load i32, i32* %907, align 4
  %909 = srem i32 %908, 16
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %918, label %911

911:                                              ; preds = %904
  %912 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %913 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %912, i32 0, i32 3
  %914 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %913, i32 0, i32 1
  %915 = load i32, i32* %914, align 4
  %916 = srem i32 %915, 16
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %943

918:                                              ; preds = %911, %904
  %919 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %920 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %921 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %920, i32 0, i32 3
  %922 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %921, i32 0, i32 0
  %923 = load i32, i32* %922, align 4
  %924 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %925 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %924, i32 0, i32 3
  %926 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %925, i32 0, i32 1
  %927 = load i32, i32* %926, align 4
  %928 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %929 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %928, i32 0, i32 5
  %930 = load i32**, i32*** %929, align 8
  %931 = getelementptr inbounds i32*, i32** %930, i64 0
  %932 = load i32*, i32** %931, align 8
  %933 = getelementptr inbounds i32, i32* %932, i64 0
  %934 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %935 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %934, i32 0, i32 4
  %936 = load i64*, i64** %935, align 8
  %937 = getelementptr inbounds i64, i64* %936, i64 0
  %938 = call i32 @coda_h264_sps_fixup(%struct.coda_ctx* %919, i32 %923, i32 %927, i32* %933, i64* %937, i32 8)
  store i32 %938, i32* %12, align 4
  %939 = load i32, i32* %12, align 4
  %940 = icmp slt i32 %939, 0
  br i1 %940, label %941, label %942

941:                                              ; preds = %918
  br label %1040

942:                                              ; preds = %918
  br label %943

943:                                              ; preds = %942, %911, %895
  %944 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %945 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %946 = load i32, i32* @CODA_HEADER_H264_PPS, align 4
  %947 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %948 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %947, i32 0, i32 5
  %949 = load i32**, i32*** %948, align 8
  %950 = getelementptr inbounds i32*, i32** %949, i64 1
  %951 = load i32*, i32** %950, align 8
  %952 = getelementptr inbounds i32, i32* %951, i64 0
  %953 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %954 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %953, i32 0, i32 4
  %955 = load i64*, i64** %954, align 8
  %956 = getelementptr inbounds i64, i64* %955, i64 1
  %957 = call i32 @coda_encode_header(%struct.coda_ctx* %944, %struct.vb2_v4l2_buffer* %945, i32 %946, i32* %952, i64* %956)
  store i32 %957, i32* %12, align 4
  %958 = load i32, i32* %12, align 4
  %959 = icmp slt i32 %958, 0
  br i1 %959, label %960, label %961

960:                                              ; preds = %943
  br label %1040

961:                                              ; preds = %943
  %962 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %963 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %962, i32 0, i32 4
  %964 = load i64*, i64** %963, align 8
  %965 = getelementptr inbounds i64, i64* %964, i64 0
  %966 = load i64, i64* %965, align 8
  %967 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %968 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %967, i32 0, i32 4
  %969 = load i64*, i64** %968, align 8
  %970 = getelementptr inbounds i64, i64* %969, i64 1
  %971 = load i64, i64* %970, align 8
  %972 = add nsw i64 %966, %971
  %973 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %974 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %973, i32 0, i32 5
  %975 = load i32**, i32*** %974, align 8
  %976 = getelementptr inbounds i32*, i32** %975, i64 2
  %977 = load i32*, i32** %976, align 8
  %978 = call i64 @coda_h264_padding(i64 %972, i32* %977)
  %979 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %980 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %979, i32 0, i32 4
  %981 = load i64*, i64** %980, align 8
  %982 = getelementptr inbounds i64, i64* %981, i64 2
  store i64 %978, i64* %982, align 8
  br label %1039

983:                                              ; preds = %843
  %984 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %985 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %986 = load i32, i32* @CODA_HEADER_MP4V_VOS, align 4
  %987 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %988 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %987, i32 0, i32 5
  %989 = load i32**, i32*** %988, align 8
  %990 = getelementptr inbounds i32*, i32** %989, i64 0
  %991 = load i32*, i32** %990, align 8
  %992 = getelementptr inbounds i32, i32* %991, i64 0
  %993 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %994 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %993, i32 0, i32 4
  %995 = load i64*, i64** %994, align 8
  %996 = getelementptr inbounds i64, i64* %995, i64 0
  %997 = call i32 @coda_encode_header(%struct.coda_ctx* %984, %struct.vb2_v4l2_buffer* %985, i32 %986, i32* %992, i64* %996)
  store i32 %997, i32* %12, align 4
  %998 = load i32, i32* %12, align 4
  %999 = icmp slt i32 %998, 0
  br i1 %999, label %1000, label %1001

1000:                                             ; preds = %983
  br label %1040

1001:                                             ; preds = %983
  %1002 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1003 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %1004 = load i32, i32* @CODA_HEADER_MP4V_VIS, align 4
  %1005 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1006 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %1005, i32 0, i32 5
  %1007 = load i32**, i32*** %1006, align 8
  %1008 = getelementptr inbounds i32*, i32** %1007, i64 1
  %1009 = load i32*, i32** %1008, align 8
  %1010 = getelementptr inbounds i32, i32* %1009, i64 0
  %1011 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1012 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %1011, i32 0, i32 4
  %1013 = load i64*, i64** %1012, align 8
  %1014 = getelementptr inbounds i64, i64* %1013, i64 1
  %1015 = call i32 @coda_encode_header(%struct.coda_ctx* %1002, %struct.vb2_v4l2_buffer* %1003, i32 %1004, i32* %1010, i64* %1014)
  store i32 %1015, i32* %12, align 4
  %1016 = load i32, i32* %12, align 4
  %1017 = icmp slt i32 %1016, 0
  br i1 %1017, label %1018, label %1019

1018:                                             ; preds = %1001
  br label %1040

1019:                                             ; preds = %1001
  %1020 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1021 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %1022 = load i32, i32* @CODA_HEADER_MP4V_VOL, align 4
  %1023 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1024 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %1023, i32 0, i32 5
  %1025 = load i32**, i32*** %1024, align 8
  %1026 = getelementptr inbounds i32*, i32** %1025, i64 2
  %1027 = load i32*, i32** %1026, align 8
  %1028 = getelementptr inbounds i32, i32* %1027, i64 0
  %1029 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %1030 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %1029, i32 0, i32 4
  %1031 = load i64*, i64** %1030, align 8
  %1032 = getelementptr inbounds i64, i64* %1031, i64 2
  %1033 = call i32 @coda_encode_header(%struct.coda_ctx* %1020, %struct.vb2_v4l2_buffer* %1021, i32 %1022, i32* %1028, i64* %1032)
  store i32 %1033, i32* %12, align 4
  %1034 = load i32, i32* %12, align 4
  %1035 = icmp slt i32 %1034, 0
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %1019
  br label %1040

1037:                                             ; preds = %1019
  br label %1039

1038:                                             ; preds = %843
  br label %1039

1039:                                             ; preds = %1038, %1037, %961
  br label %1040

1040:                                             ; preds = %1039, %1036, %1018, %1000, %960, %941, %894, %840, %711, %681, %673, %398
  %1041 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %1042 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %1041, i32 0, i32 0
  %1043 = call i32 @mutex_unlock(i32* %1042)
  %1044 = load i32, i32* %12, align 4
  store i32 %1044, i32* %2, align 4
  br label %1045

1045:                                             ; preds = %1040, %45
  %1046 = load i32, i32* %2, align 4
  ret i32 %1046
}

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @coda_is_initialized(%struct.coda_dev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @coda_set_jpeg_compression_quality(%struct.coda_ctx*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @CODA_REG_BIT_RD_PTR(i32) #1

declare dso_local i32 @CODA_REG_BIT_WR_PTR(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_jpeg_write_tables(%struct.coda_ctx*) #1

declare dso_local i32 @coda_slice_mode(%struct.coda_ctx*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @coda_setup_iram(%struct.coda_ctx*) #1

declare dso_local i32 @coda_command_sync(%struct.coda_ctx*, i32) #1

declare dso_local i64 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @coda_alloc_framebuffers(%struct.coda_ctx*, %struct.coda_q_data*, i32) #1

declare dso_local i32 @coda9_set_frame_cache(%struct.coda_ctx*, i64) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @coda_encode_header(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i32, i32*, i64*) #1

declare dso_local i32 @coda_h264_sps_fixup(%struct.coda_ctx*, i32, i32, i32*, i64*, i32) #1

declare dso_local i64 @coda_h264_padding(i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
