; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_determine_valid_ioctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_determine_valid_ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i64, i64, i32, i64, %struct.v4l2_ioctl_ops* }
%struct.v4l2_ioctl_ops = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@valid_ioctls = common dso_local global i32 0, align 4
@BASE_VIDIOC_PRIVATE = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@VFL_TYPE_RADIO = common dso_local global i64 0, align 8
@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@VFL_TYPE_TOUCH = common dso_local global i64 0, align 8
@VFL_DIR_TX = common dso_local global i64 0, align 8
@VFL_DIR_RX = common dso_local global i64 0, align 8
@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@vidioc_querycap = common dso_local global i32 0, align 4
@VIDIOC_G_PRIORITY = common dso_local global i32 0, align 4
@VIDIOC_S_PRIORITY = common dso_local global i32 0, align 4
@VIDIOC_QUERYCTRL = common dso_local global i32 0, align 4
@VIDIOC_QUERY_EXT_CTRL = common dso_local global i32 0, align 4
@VIDIOC_G_CTRL = common dso_local global i32 0, align 4
@VIDIOC_S_CTRL = common dso_local global i32 0, align 4
@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@VIDIOC_S_EXT_CTRLS = common dso_local global i32 0, align 4
@VIDIOC_TRY_EXT_CTRLS = common dso_local global i32 0, align 4
@VIDIOC_QUERYMENU = common dso_local global i32 0, align 4
@VIDIOC_G_FREQUENCY = common dso_local global i32 0, align 4
@vidioc_g_frequency = common dso_local global i32 0, align 4
@VIDIOC_S_FREQUENCY = common dso_local global i32 0, align 4
@vidioc_s_frequency = common dso_local global i32 0, align 4
@VIDIOC_LOG_STATUS = common dso_local global i32 0, align 4
@vidioc_log_status = common dso_local global i32 0, align 4
@VIDIOC_DQEVENT = common dso_local global i32 0, align 4
@vidioc_subscribe_event = common dso_local global i32 0, align 4
@VIDIOC_SUBSCRIBE_EVENT = common dso_local global i32 0, align 4
@VIDIOC_UNSUBSCRIBE_EVENT = common dso_local global i32 0, align 4
@vidioc_unsubscribe_event = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FREQ_BANDS = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FMT = common dso_local global i32 0, align 4
@VIDIOC_G_FMT = common dso_local global i32 0, align 4
@VIDIOC_S_FMT = common dso_local global i32 0, align 4
@VIDIOC_TRY_FMT = common dso_local global i32 0, align 4
@VIDIOC_OVERLAY = common dso_local global i32 0, align 4
@vidioc_overlay = common dso_local global i32 0, align 4
@VIDIOC_G_FBUF = common dso_local global i32 0, align 4
@vidioc_g_fbuf = common dso_local global i32 0, align 4
@VIDIOC_S_FBUF = common dso_local global i32 0, align 4
@vidioc_s_fbuf = common dso_local global i32 0, align 4
@VIDIOC_G_JPEGCOMP = common dso_local global i32 0, align 4
@vidioc_g_jpegcomp = common dso_local global i32 0, align 4
@VIDIOC_S_JPEGCOMP = common dso_local global i32 0, align 4
@vidioc_s_jpegcomp = common dso_local global i32 0, align 4
@VIDIOC_G_ENC_INDEX = common dso_local global i32 0, align 4
@vidioc_g_enc_index = common dso_local global i32 0, align 4
@VIDIOC_ENCODER_CMD = common dso_local global i32 0, align 4
@vidioc_encoder_cmd = common dso_local global i32 0, align 4
@VIDIOC_TRY_ENCODER_CMD = common dso_local global i32 0, align 4
@vidioc_try_encoder_cmd = common dso_local global i32 0, align 4
@VIDIOC_DECODER_CMD = common dso_local global i32 0, align 4
@vidioc_decoder_cmd = common dso_local global i32 0, align 4
@VIDIOC_TRY_DECODER_CMD = common dso_local global i32 0, align 4
@vidioc_try_decoder_cmd = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FRAMESIZES = common dso_local global i32 0, align 4
@vidioc_enum_framesizes = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FRAMEINTERVALS = common dso_local global i32 0, align 4
@vidioc_enum_frameintervals = common dso_local global i32 0, align 4
@VIDIOC_G_CROP = common dso_local global i32 0, align 4
@VIDIOC_CROPCAP = common dso_local global i32 0, align 4
@VIDIOC_S_CROP = common dso_local global i32 0, align 4
@VIDIOC_G_SELECTION = common dso_local global i32 0, align 4
@vidioc_g_selection = common dso_local global i32 0, align 4
@VIDIOC_S_SELECTION = common dso_local global i32 0, align 4
@vidioc_s_selection = common dso_local global i32 0, align 4
@VIDIOC_G_SLICED_VBI_CAP = common dso_local global i32 0, align 4
@vidioc_g_sliced_vbi_cap = common dso_local global i32 0, align 4
@VIDIOC_REQBUFS = common dso_local global i32 0, align 4
@vidioc_reqbufs = common dso_local global i32 0, align 4
@VIDIOC_QUERYBUF = common dso_local global i32 0, align 4
@vidioc_querybuf = common dso_local global i32 0, align 4
@VIDIOC_QBUF = common dso_local global i32 0, align 4
@vidioc_qbuf = common dso_local global i32 0, align 4
@VIDIOC_EXPBUF = common dso_local global i32 0, align 4
@vidioc_expbuf = common dso_local global i32 0, align 4
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@vidioc_dqbuf = common dso_local global i32 0, align 4
@VIDIOC_CREATE_BUFS = common dso_local global i32 0, align 4
@vidioc_create_bufs = common dso_local global i32 0, align 4
@VIDIOC_PREPARE_BUF = common dso_local global i32 0, align 4
@vidioc_prepare_buf = common dso_local global i32 0, align 4
@VIDIOC_STREAMON = common dso_local global i32 0, align 4
@vidioc_streamon = common dso_local global i32 0, align 4
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@vidioc_streamoff = common dso_local global i32 0, align 4
@VIDIOC_ENUMSTD = common dso_local global i32 0, align 4
@VIDIOC_S_STD = common dso_local global i32 0, align 4
@vidioc_s_std = common dso_local global i32 0, align 4
@VIDIOC_G_STD = common dso_local global i32 0, align 4
@vidioc_g_std = common dso_local global i32 0, align 4
@VIDIOC_QUERYSTD = common dso_local global i32 0, align 4
@vidioc_querystd = common dso_local global i32 0, align 4
@VIDIOC_ENUMINPUT = common dso_local global i32 0, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@VIDIOC_G_INPUT = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@VIDIOC_S_INPUT = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@VIDIOC_ENUMAUDIO = common dso_local global i32 0, align 4
@vidioc_enumaudio = common dso_local global i32 0, align 4
@VIDIOC_G_AUDIO = common dso_local global i32 0, align 4
@vidioc_g_audio = common dso_local global i32 0, align 4
@VIDIOC_S_AUDIO = common dso_local global i32 0, align 4
@vidioc_s_audio = common dso_local global i32 0, align 4
@VIDIOC_QUERY_DV_TIMINGS = common dso_local global i32 0, align 4
@vidioc_query_dv_timings = common dso_local global i32 0, align 4
@VIDIOC_S_EDID = common dso_local global i32 0, align 4
@vidioc_s_edid = common dso_local global i32 0, align 4
@VIDIOC_ENUMOUTPUT = common dso_local global i32 0, align 4
@vidioc_enum_output = common dso_local global i32 0, align 4
@VIDIOC_G_OUTPUT = common dso_local global i32 0, align 4
@vidioc_g_output = common dso_local global i32 0, align 4
@VIDIOC_S_OUTPUT = common dso_local global i32 0, align 4
@vidioc_s_output = common dso_local global i32 0, align 4
@VIDIOC_ENUMAUDOUT = common dso_local global i32 0, align 4
@vidioc_enumaudout = common dso_local global i32 0, align 4
@VIDIOC_G_AUDOUT = common dso_local global i32 0, align 4
@vidioc_g_audout = common dso_local global i32 0, align 4
@VIDIOC_S_AUDOUT = common dso_local global i32 0, align 4
@vidioc_s_audout = common dso_local global i32 0, align 4
@VIDIOC_G_PARM = common dso_local global i32 0, align 4
@VIDIOC_S_PARM = common dso_local global i32 0, align 4
@vidioc_s_parm = common dso_local global i32 0, align 4
@VIDIOC_S_DV_TIMINGS = common dso_local global i32 0, align 4
@vidioc_s_dv_timings = common dso_local global i32 0, align 4
@VIDIOC_G_DV_TIMINGS = common dso_local global i32 0, align 4
@vidioc_g_dv_timings = common dso_local global i32 0, align 4
@VIDIOC_ENUM_DV_TIMINGS = common dso_local global i32 0, align 4
@vidioc_enum_dv_timings = common dso_local global i32 0, align 4
@VIDIOC_DV_TIMINGS_CAP = common dso_local global i32 0, align 4
@vidioc_dv_timings_cap = common dso_local global i32 0, align 4
@VIDIOC_G_EDID = common dso_local global i32 0, align 4
@vidioc_g_edid = common dso_local global i32 0, align 4
@VIDIOC_G_MODULATOR = common dso_local global i32 0, align 4
@vidioc_g_modulator = common dso_local global i32 0, align 4
@VIDIOC_S_MODULATOR = common dso_local global i32 0, align 4
@vidioc_s_modulator = common dso_local global i32 0, align 4
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@vidioc_g_tuner = common dso_local global i32 0, align 4
@VIDIOC_S_TUNER = common dso_local global i32 0, align 4
@vidioc_s_tuner = common dso_local global i32 0, align 4
@VIDIOC_S_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@vidioc_s_hw_freq_seek = common dso_local global i32 0, align 4
@VIDIOC_DBG_G_CHIP_INFO = common dso_local global i32 0, align 4
@VIDIOC_DBG_G_REGISTER = common dso_local global i32 0, align 4
@VIDIOC_DBG_S_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*)* @determine_valid_ioctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_valid_ioctls(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  %3 = alloca %struct.v4l2_ioctl_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %11 = load i32, i32* @valid_ioctls, align 4
  %12 = load i32, i32* @BASE_VIDIOC_PRIVATE, align 4
  %13 = call i32 @DECLARE_BITMAP(i32 %11, i32 %12)
  %14 = load %struct.video_device*, %struct.video_device** %2, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 4
  %16 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %15, align 8
  store %struct.v4l2_ioctl_ops* %16, %struct.v4l2_ioctl_ops** %3, align 8
  %17 = load %struct.video_device*, %struct.video_device** %2, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.video_device*, %struct.video_device** %2, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VFL_TYPE_VBI, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.video_device*, %struct.video_device** %2, align 8
  %30 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFL_TYPE_RADIO, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.video_device*, %struct.video_device** %2, align 8
  %36 = getelementptr inbounds %struct.video_device, %struct.video_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VFL_TYPE_SDR, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.video_device*, %struct.video_device** %2, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VFL_TYPE_TOUCH, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.video_device*, %struct.video_device** %2, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VFL_DIR_TX, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load %struct.video_device*, %struct.video_device** %2, align 8
  %54 = getelementptr inbounds %struct.video_device, %struct.video_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VFL_DIR_RX, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @valid_ioctls, align 4
  %60 = load i32, i32* @BASE_VIDIOC_PRIVATE, align 4
  %61 = call i32 @bitmap_zero(i32 %59, i32 %60)
  %62 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %63 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %64 = load i32, i32* @vidioc_querycap, align 4
  %65 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @VIDIOC_G_PRIORITY, align 4
  %67 = call i32 @_IOC_NR(i32 %66)
  %68 = load i32, i32* @valid_ioctls, align 4
  %69 = call i32 @set_bit(i32 %67, i32 %68)
  %70 = load i32, i32* @VIDIOC_S_PRIORITY, align 4
  %71 = call i32 @_IOC_NR(i32 %70)
  %72 = load i32, i32* @valid_ioctls, align 4
  %73 = call i32 @set_bit(i32 %71, i32 %72)
  %74 = load %struct.video_device*, %struct.video_device** %2, align 8
  %75 = getelementptr inbounds %struct.video_device, %struct.video_device* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %1
  %79 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %80 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %79, i32 0, i32 64
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %1
  %84 = load i32, i32* @VIDIOC_QUERYCTRL, align 4
  %85 = call i32 @_IOC_NR(i32 %84)
  %86 = load i32, i32* @valid_ioctls, align 4
  %87 = call i32 @set_bit(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.video_device*, %struct.video_device** %2, align 8
  %90 = getelementptr inbounds %struct.video_device, %struct.video_device* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %95 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %94, i32 0, i32 63
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93, %88
  %99 = load i32, i32* @VIDIOC_QUERY_EXT_CTRL, align 4
  %100 = call i32 @_IOC_NR(i32 %99)
  %101 = load i32, i32* @valid_ioctls, align 4
  %102 = call i32 @set_bit(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.video_device*, %struct.video_device** %2, align 8
  %105 = getelementptr inbounds %struct.video_device, %struct.video_device* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %110 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %109, i32 0, i32 62
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %115 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %114, i32 0, i32 60
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113, %108, %103
  %119 = load i32, i32* @VIDIOC_G_CTRL, align 4
  %120 = call i32 @_IOC_NR(i32 %119)
  %121 = load i32, i32* @valid_ioctls, align 4
  %122 = call i32 @set_bit(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.video_device*, %struct.video_device** %2, align 8
  %125 = getelementptr inbounds %struct.video_device, %struct.video_device* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %130 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %129, i32 0, i32 61
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %135 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %134, i32 0, i32 59
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133, %128, %123
  %139 = load i32, i32* @VIDIOC_S_CTRL, align 4
  %140 = call i32 @_IOC_NR(i32 %139)
  %141 = load i32, i32* @valid_ioctls, align 4
  %142 = call i32 @set_bit(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.video_device*, %struct.video_device** %2, align 8
  %145 = getelementptr inbounds %struct.video_device, %struct.video_device* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %150 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %149, i32 0, i32 60
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148, %143
  %154 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %155 = call i32 @_IOC_NR(i32 %154)
  %156 = load i32, i32* @valid_ioctls, align 4
  %157 = call i32 @set_bit(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.video_device*, %struct.video_device** %2, align 8
  %160 = getelementptr inbounds %struct.video_device, %struct.video_device* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %165 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %164, i32 0, i32 59
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163, %158
  %169 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %170 = call i32 @_IOC_NR(i32 %169)
  %171 = load i32, i32* @valid_ioctls, align 4
  %172 = call i32 @set_bit(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.video_device*, %struct.video_device** %2, align 8
  %175 = getelementptr inbounds %struct.video_device, %struct.video_device* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %180 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %179, i32 0, i32 58
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178, %173
  %184 = load i32, i32* @VIDIOC_TRY_EXT_CTRLS, align 4
  %185 = call i32 @_IOC_NR(i32 %184)
  %186 = load i32, i32* @valid_ioctls, align 4
  %187 = call i32 @set_bit(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %178
  %189 = load %struct.video_device*, %struct.video_device** %2, align 8
  %190 = getelementptr inbounds %struct.video_device, %struct.video_device* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %195 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %194, i32 0, i32 57
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193, %188
  %199 = load i32, i32* @VIDIOC_QUERYMENU, align 4
  %200 = call i32 @_IOC_NR(i32 %199)
  %201 = load i32, i32* @valid_ioctls, align 4
  %202 = call i32 @set_bit(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %205 = load i32, i32* @VIDIOC_G_FREQUENCY, align 4
  %206 = load i32, i32* @vidioc_g_frequency, align 4
  %207 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %204, i32 %205, i32 %206)
  %208 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %209 = load i32, i32* @VIDIOC_S_FREQUENCY, align 4
  %210 = load i32, i32* @vidioc_s_frequency, align 4
  %211 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %208, i32 %209, i32 %210)
  %212 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %213 = load i32, i32* @VIDIOC_LOG_STATUS, align 4
  %214 = load i32, i32* @vidioc_log_status, align 4
  %215 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %212, i32 %213, i32 %214)
  %216 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %217 = load i32, i32* @VIDIOC_DQEVENT, align 4
  %218 = load i32, i32* @vidioc_subscribe_event, align 4
  %219 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %216, i32 %217, i32 %218)
  %220 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %221 = load i32, i32* @VIDIOC_SUBSCRIBE_EVENT, align 4
  %222 = load i32, i32* @vidioc_subscribe_event, align 4
  %223 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %220, i32 %221, i32 %222)
  %224 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %225 = load i32, i32* @VIDIOC_UNSUBSCRIBE_EVENT, align 4
  %226 = load i32, i32* @vidioc_unsubscribe_event, align 4
  %227 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %224, i32 %225, i32 %226)
  %228 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %229 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %228, i32 0, i32 56
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %203
  %233 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %234 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %233, i32 0, i32 55
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %239 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %238, i32 0, i32 54
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237, %232, %203
  %243 = load i32, i32* @VIDIOC_ENUM_FREQ_BANDS, align 4
  %244 = call i32 @_IOC_NR(i32 %243)
  %245 = load i32, i32* @valid_ioctls, align 4
  %246 = call i32 @set_bit(i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %523

253:                                              ; preds = %250, %247
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %258 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %257, i32 0, i32 53
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %284, label %261

261:                                              ; preds = %256
  %262 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %263 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %262, i32 0, i32 52
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %284, label %266

266:                                              ; preds = %261
  %267 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %268 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %267, i32 0, i32 51
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %284, label %271

271:                                              ; preds = %266, %253
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %276 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %275, i32 0, i32 50
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %281 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %280, i32 0, i32 49
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %279, %274, %266, %261, %256
  %285 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %286 = call i32 @_IOC_NR(i32 %285)
  %287 = load i32, i32* @valid_ioctls, align 4
  %288 = call i32 @set_bit(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %284, %279, %271
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %312

292:                                              ; preds = %289
  %293 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %294 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %293, i32 0, i32 48
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %335, label %297

297:                                              ; preds = %292
  %298 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %299 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %298, i32 0, i32 47
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %335, label %302

302:                                              ; preds = %297
  %303 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %304 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %303, i32 0, i32 46
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %335, label %307

307:                                              ; preds = %302
  %308 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %309 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %308, i32 0, i32 45
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %335, label %312

312:                                              ; preds = %307, %289
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %340

315:                                              ; preds = %312
  %316 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %317 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %316, i32 0, i32 44
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %335, label %320

320:                                              ; preds = %315
  %321 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %322 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %321, i32 0, i32 43
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %320
  %326 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %327 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %326, i32 0, i32 42
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %325
  %331 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %332 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %331, i32 0, i32 41
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %330, %325, %320, %315, %307, %302, %297, %292
  %336 = load i32, i32* @VIDIOC_G_FMT, align 4
  %337 = call i32 @_IOC_NR(i32 %336)
  %338 = load i32, i32* @valid_ioctls, align 4
  %339 = call i32 @set_bit(i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %335, %330, %312
  %341 = load i32, i32* %9, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %363

343:                                              ; preds = %340
  %344 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %345 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %344, i32 0, i32 40
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %386, label %348

348:                                              ; preds = %343
  %349 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %350 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %349, i32 0, i32 39
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %386, label %353

353:                                              ; preds = %348
  %354 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %355 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %354, i32 0, i32 38
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %386, label %358

358:                                              ; preds = %353
  %359 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %360 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %359, i32 0, i32 37
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %386, label %363

363:                                              ; preds = %358, %340
  %364 = load i32, i32* %10, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %363
  %367 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %368 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %367, i32 0, i32 36
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %386, label %371

371:                                              ; preds = %366
  %372 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %373 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %372, i32 0, i32 35
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %386, label %376

376:                                              ; preds = %371
  %377 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %378 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %377, i32 0, i32 34
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %376
  %382 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %383 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %382, i32 0, i32 33
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381, %376, %371, %366, %358, %353, %348, %343
  %387 = load i32, i32* @VIDIOC_S_FMT, align 4
  %388 = call i32 @_IOC_NR(i32 %387)
  %389 = load i32, i32* @valid_ioctls, align 4
  %390 = call i32 @set_bit(i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %386, %381, %363
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %414

394:                                              ; preds = %391
  %395 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %396 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %395, i32 0, i32 32
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %437, label %399

399:                                              ; preds = %394
  %400 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %401 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %400, i32 0, i32 31
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %437, label %404

404:                                              ; preds = %399
  %405 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %406 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %405, i32 0, i32 30
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %437, label %409

409:                                              ; preds = %404
  %410 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %411 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %410, i32 0, i32 29
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %437, label %414

414:                                              ; preds = %409, %391
  %415 = load i32, i32* %10, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %442

417:                                              ; preds = %414
  %418 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %419 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %418, i32 0, i32 28
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %437, label %422

422:                                              ; preds = %417
  %423 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %424 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %423, i32 0, i32 27
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %437, label %427

427:                                              ; preds = %422
  %428 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %429 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %428, i32 0, i32 26
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %427
  %433 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %434 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %433, i32 0, i32 25
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %432, %427, %422, %417, %409, %404, %399, %394
  %438 = load i32, i32* @VIDIOC_TRY_FMT, align 4
  %439 = call i32 @_IOC_NR(i32 %438)
  %440 = load i32, i32* @valid_ioctls, align 4
  %441 = call i32 @set_bit(i32 %439, i32 %440)
  br label %442

442:                                              ; preds = %437, %432, %414
  %443 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %444 = load i32, i32* @VIDIOC_OVERLAY, align 4
  %445 = load i32, i32* @vidioc_overlay, align 4
  %446 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %443, i32 %444, i32 %445)
  %447 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %448 = load i32, i32* @VIDIOC_G_FBUF, align 4
  %449 = load i32, i32* @vidioc_g_fbuf, align 4
  %450 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %447, i32 %448, i32 %449)
  %451 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %452 = load i32, i32* @VIDIOC_S_FBUF, align 4
  %453 = load i32, i32* @vidioc_s_fbuf, align 4
  %454 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %451, i32 %452, i32 %453)
  %455 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %456 = load i32, i32* @VIDIOC_G_JPEGCOMP, align 4
  %457 = load i32, i32* @vidioc_g_jpegcomp, align 4
  %458 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %455, i32 %456, i32 %457)
  %459 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %460 = load i32, i32* @VIDIOC_S_JPEGCOMP, align 4
  %461 = load i32, i32* @vidioc_s_jpegcomp, align 4
  %462 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %459, i32 %460, i32 %461)
  %463 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %464 = load i32, i32* @VIDIOC_G_ENC_INDEX, align 4
  %465 = load i32, i32* @vidioc_g_enc_index, align 4
  %466 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %463, i32 %464, i32 %465)
  %467 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %468 = load i32, i32* @VIDIOC_ENCODER_CMD, align 4
  %469 = load i32, i32* @vidioc_encoder_cmd, align 4
  %470 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %467, i32 %468, i32 %469)
  %471 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %472 = load i32, i32* @VIDIOC_TRY_ENCODER_CMD, align 4
  %473 = load i32, i32* @vidioc_try_encoder_cmd, align 4
  %474 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %471, i32 %472, i32 %473)
  %475 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %476 = load i32, i32* @VIDIOC_DECODER_CMD, align 4
  %477 = load i32, i32* @vidioc_decoder_cmd, align 4
  %478 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %475, i32 %476, i32 %477)
  %479 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %480 = load i32, i32* @VIDIOC_TRY_DECODER_CMD, align 4
  %481 = load i32, i32* @vidioc_try_decoder_cmd, align 4
  %482 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %479, i32 %480, i32 %481)
  %483 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %484 = load i32, i32* @VIDIOC_ENUM_FRAMESIZES, align 4
  %485 = load i32, i32* @vidioc_enum_framesizes, align 4
  %486 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %483, i32 %484, i32 %485)
  %487 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %488 = load i32, i32* @VIDIOC_ENUM_FRAMEINTERVALS, align 4
  %489 = load i32, i32* @vidioc_enum_frameintervals, align 4
  %490 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %487, i32 %488, i32 %489)
  %491 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %492 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %491, i32 0, i32 24
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %504

495:                                              ; preds = %442
  %496 = load i32, i32* @VIDIOC_G_CROP, align 4
  %497 = call i32 @_IOC_NR(i32 %496)
  %498 = load i32, i32* @valid_ioctls, align 4
  %499 = call i32 @set_bit(i32 %497, i32 %498)
  %500 = load i32, i32* @VIDIOC_CROPCAP, align 4
  %501 = call i32 @_IOC_NR(i32 %500)
  %502 = load i32, i32* @valid_ioctls, align 4
  %503 = call i32 @set_bit(i32 %501, i32 %502)
  br label %504

504:                                              ; preds = %495, %442
  %505 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %506 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %505, i32 0, i32 23
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %504
  %510 = load i32, i32* @VIDIOC_S_CROP, align 4
  %511 = call i32 @_IOC_NR(i32 %510)
  %512 = load i32, i32* @valid_ioctls, align 4
  %513 = call i32 @set_bit(i32 %511, i32 %512)
  br label %514

514:                                              ; preds = %509, %504
  %515 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %516 = load i32, i32* @VIDIOC_G_SELECTION, align 4
  %517 = load i32, i32* @vidioc_g_selection, align 4
  %518 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %515, i32 %516, i32 %517)
  %519 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %520 = load i32, i32* @VIDIOC_S_SELECTION, align 4
  %521 = load i32, i32* @vidioc_s_selection, align 4
  %522 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %519, i32 %520, i32 %521)
  br label %721

523:                                              ; preds = %250
  %524 = load i32, i32* %5, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %624

526:                                              ; preds = %523
  %527 = load i32, i32* %9, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %539

529:                                              ; preds = %526
  %530 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %531 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %530, i32 0, i32 22
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %552, label %534

534:                                              ; preds = %529
  %535 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %536 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %535, i32 0, i32 21
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %552, label %539

539:                                              ; preds = %534, %526
  %540 = load i32, i32* %10, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %557

542:                                              ; preds = %539
  %543 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %544 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %543, i32 0, i32 20
  %545 = load i64, i64* %544, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %552, label %547

547:                                              ; preds = %542
  %548 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %549 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %548, i32 0, i32 19
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %547, %542, %534, %529
  %553 = load i32, i32* @VIDIOC_G_FMT, align 4
  %554 = call i32 @_IOC_NR(i32 %553)
  %555 = load i32, i32* @valid_ioctls, align 4
  %556 = call i32 @set_bit(i32 %554, i32 %555)
  br label %557

557:                                              ; preds = %552, %547, %539
  %558 = load i32, i32* %9, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %570

560:                                              ; preds = %557
  %561 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %562 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %561, i32 0, i32 18
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %583, label %565

565:                                              ; preds = %560
  %566 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %567 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %566, i32 0, i32 17
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %583, label %570

570:                                              ; preds = %565, %557
  %571 = load i32, i32* %10, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %570
  %574 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %575 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %574, i32 0, i32 16
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %573
  %579 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %580 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %579, i32 0, i32 15
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %578, %573, %565, %560
  %584 = load i32, i32* @VIDIOC_S_FMT, align 4
  %585 = call i32 @_IOC_NR(i32 %584)
  %586 = load i32, i32* @valid_ioctls, align 4
  %587 = call i32 @set_bit(i32 %585, i32 %586)
  br label %588

588:                                              ; preds = %583, %578, %570
  %589 = load i32, i32* %9, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %601

591:                                              ; preds = %588
  %592 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %593 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %592, i32 0, i32 14
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %614, label %596

596:                                              ; preds = %591
  %597 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %598 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %597, i32 0, i32 13
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %614, label %601

601:                                              ; preds = %596, %588
  %602 = load i32, i32* %10, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %619

604:                                              ; preds = %601
  %605 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %606 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %605, i32 0, i32 12
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %614, label %609

609:                                              ; preds = %604
  %610 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %611 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %610, i32 0, i32 11
  %612 = load i64, i64* %611, align 8
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %619

614:                                              ; preds = %609, %604, %596, %591
  %615 = load i32, i32* @VIDIOC_TRY_FMT, align 4
  %616 = call i32 @_IOC_NR(i32 %615)
  %617 = load i32, i32* @valid_ioctls, align 4
  %618 = call i32 @set_bit(i32 %616, i32 %617)
  br label %619

619:                                              ; preds = %614, %609, %601
  %620 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %621 = load i32, i32* @VIDIOC_G_SLICED_VBI_CAP, align 4
  %622 = load i32, i32* @vidioc_g_sliced_vbi_cap, align 4
  %623 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %620, i32 %621, i32 %622)
  br label %720

624:                                              ; preds = %523
  %625 = load i32, i32* %7, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %671

627:                                              ; preds = %624
  %628 = load i32, i32* %9, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %671

630:                                              ; preds = %627
  %631 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %632 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %631, i32 0, i32 10
  %633 = load i64, i64* %632, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %640

635:                                              ; preds = %630
  %636 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %637 = call i32 @_IOC_NR(i32 %636)
  %638 = load i32, i32* @valid_ioctls, align 4
  %639 = call i32 @set_bit(i32 %637, i32 %638)
  br label %640

640:                                              ; preds = %635, %630
  %641 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %642 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %641, i32 0, i32 9
  %643 = load i64, i64* %642, align 8
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %640
  %646 = load i32, i32* @VIDIOC_G_FMT, align 4
  %647 = call i32 @_IOC_NR(i32 %646)
  %648 = load i32, i32* @valid_ioctls, align 4
  %649 = call i32 @set_bit(i32 %647, i32 %648)
  br label %650

650:                                              ; preds = %645, %640
  %651 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %652 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %651, i32 0, i32 8
  %653 = load i64, i64* %652, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %660

655:                                              ; preds = %650
  %656 = load i32, i32* @VIDIOC_S_FMT, align 4
  %657 = call i32 @_IOC_NR(i32 %656)
  %658 = load i32, i32* @valid_ioctls, align 4
  %659 = call i32 @set_bit(i32 %657, i32 %658)
  br label %660

660:                                              ; preds = %655, %650
  %661 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %662 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %661, i32 0, i32 7
  %663 = load i64, i64* %662, align 8
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %670

665:                                              ; preds = %660
  %666 = load i32, i32* @VIDIOC_TRY_FMT, align 4
  %667 = call i32 @_IOC_NR(i32 %666)
  %668 = load i32, i32* @valid_ioctls, align 4
  %669 = call i32 @set_bit(i32 %667, i32 %668)
  br label %670

670:                                              ; preds = %665, %660
  br label %719

671:                                              ; preds = %627, %624
  %672 = load i32, i32* %7, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %718

674:                                              ; preds = %671
  %675 = load i32, i32* %10, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %718

677:                                              ; preds = %674
  %678 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %679 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %678, i32 0, i32 6
  %680 = load i64, i64* %679, align 8
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %687

682:                                              ; preds = %677
  %683 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %684 = call i32 @_IOC_NR(i32 %683)
  %685 = load i32, i32* @valid_ioctls, align 4
  %686 = call i32 @set_bit(i32 %684, i32 %685)
  br label %687

687:                                              ; preds = %682, %677
  %688 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %689 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %688, i32 0, i32 5
  %690 = load i64, i64* %689, align 8
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %697

692:                                              ; preds = %687
  %693 = load i32, i32* @VIDIOC_G_FMT, align 4
  %694 = call i32 @_IOC_NR(i32 %693)
  %695 = load i32, i32* @valid_ioctls, align 4
  %696 = call i32 @set_bit(i32 %694, i32 %695)
  br label %697

697:                                              ; preds = %692, %687
  %698 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %699 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %698, i32 0, i32 4
  %700 = load i64, i64* %699, align 8
  %701 = icmp ne i64 %700, 0
  br i1 %701, label %702, label %707

702:                                              ; preds = %697
  %703 = load i32, i32* @VIDIOC_S_FMT, align 4
  %704 = call i32 @_IOC_NR(i32 %703)
  %705 = load i32, i32* @valid_ioctls, align 4
  %706 = call i32 @set_bit(i32 %704, i32 %705)
  br label %707

707:                                              ; preds = %702, %697
  %708 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %709 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %708, i32 0, i32 3
  %710 = load i64, i64* %709, align 8
  %711 = icmp ne i64 %710, 0
  br i1 %711, label %712, label %717

712:                                              ; preds = %707
  %713 = load i32, i32* @VIDIOC_TRY_FMT, align 4
  %714 = call i32 @_IOC_NR(i32 %713)
  %715 = load i32, i32* @valid_ioctls, align 4
  %716 = call i32 @set_bit(i32 %714, i32 %715)
  br label %717

717:                                              ; preds = %712, %707
  br label %718

718:                                              ; preds = %717, %674, %671
  br label %719

719:                                              ; preds = %718, %670
  br label %720

720:                                              ; preds = %719, %619
  br label %721

721:                                              ; preds = %720, %514
  %722 = load i32, i32* %4, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %733, label %724

724:                                              ; preds = %721
  %725 = load i32, i32* %5, align 4
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %733, label %727

727:                                              ; preds = %724
  %728 = load i32, i32* %7, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %733, label %730

730:                                              ; preds = %727
  %731 = load i32, i32* %8, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %770

733:                                              ; preds = %730, %727, %724, %721
  %734 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %735 = load i32, i32* @VIDIOC_REQBUFS, align 4
  %736 = load i32, i32* @vidioc_reqbufs, align 4
  %737 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %734, i32 %735, i32 %736)
  %738 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %739 = load i32, i32* @VIDIOC_QUERYBUF, align 4
  %740 = load i32, i32* @vidioc_querybuf, align 4
  %741 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %738, i32 %739, i32 %740)
  %742 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %743 = load i32, i32* @VIDIOC_QBUF, align 4
  %744 = load i32, i32* @vidioc_qbuf, align 4
  %745 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %742, i32 %743, i32 %744)
  %746 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %747 = load i32, i32* @VIDIOC_EXPBUF, align 4
  %748 = load i32, i32* @vidioc_expbuf, align 4
  %749 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %746, i32 %747, i32 %748)
  %750 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %751 = load i32, i32* @VIDIOC_DQBUF, align 4
  %752 = load i32, i32* @vidioc_dqbuf, align 4
  %753 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %750, i32 %751, i32 %752)
  %754 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %755 = load i32, i32* @VIDIOC_CREATE_BUFS, align 4
  %756 = load i32, i32* @vidioc_create_bufs, align 4
  %757 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %754, i32 %755, i32 %756)
  %758 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %759 = load i32, i32* @VIDIOC_PREPARE_BUF, align 4
  %760 = load i32, i32* @vidioc_prepare_buf, align 4
  %761 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %758, i32 %759, i32 %760)
  %762 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %763 = load i32, i32* @VIDIOC_STREAMON, align 4
  %764 = load i32, i32* @vidioc_streamon, align 4
  %765 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %762, i32 %763, i32 %764)
  %766 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %767 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %768 = load i32, i32* @vidioc_streamoff, align 4
  %769 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %766, i32 %767, i32 %768)
  br label %770

770:                                              ; preds = %733, %730
  %771 = load i32, i32* %4, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %779, label %773

773:                                              ; preds = %770
  %774 = load i32, i32* %5, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %779, label %776

776:                                              ; preds = %773
  %777 = load i32, i32* %8, align 4
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %911

779:                                              ; preds = %776, %773, %770
  %780 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %781 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %780, i32 0, i32 2
  %782 = load i64, i64* %781, align 8
  %783 = icmp ne i64 %782, 0
  br i1 %783, label %784, label %789

784:                                              ; preds = %779
  %785 = load i32, i32* @VIDIOC_ENUMSTD, align 4
  %786 = call i32 @_IOC_NR(i32 %785)
  %787 = load i32, i32* @valid_ioctls, align 4
  %788 = call i32 @set_bit(i32 %786, i32 %787)
  br label %789

789:                                              ; preds = %784, %779
  %790 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %791 = load i32, i32* @VIDIOC_S_STD, align 4
  %792 = load i32, i32* @vidioc_s_std, align 4
  %793 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %790, i32 %791, i32 %792)
  %794 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %795 = load i32, i32* @VIDIOC_G_STD, align 4
  %796 = load i32, i32* @vidioc_g_std, align 4
  %797 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %794, i32 %795, i32 %796)
  %798 = load i32, i32* %9, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %837

800:                                              ; preds = %789
  %801 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %802 = load i32, i32* @VIDIOC_QUERYSTD, align 4
  %803 = load i32, i32* @vidioc_querystd, align 4
  %804 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %801, i32 %802, i32 %803)
  %805 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %806 = load i32, i32* @VIDIOC_ENUMINPUT, align 4
  %807 = load i32, i32* @vidioc_enum_input, align 4
  %808 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %805, i32 %806, i32 %807)
  %809 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %810 = load i32, i32* @VIDIOC_G_INPUT, align 4
  %811 = load i32, i32* @vidioc_g_input, align 4
  %812 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %809, i32 %810, i32 %811)
  %813 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %814 = load i32, i32* @VIDIOC_S_INPUT, align 4
  %815 = load i32, i32* @vidioc_s_input, align 4
  %816 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %813, i32 %814, i32 %815)
  %817 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %818 = load i32, i32* @VIDIOC_ENUMAUDIO, align 4
  %819 = load i32, i32* @vidioc_enumaudio, align 4
  %820 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %817, i32 %818, i32 %819)
  %821 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %822 = load i32, i32* @VIDIOC_G_AUDIO, align 4
  %823 = load i32, i32* @vidioc_g_audio, align 4
  %824 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %821, i32 %822, i32 %823)
  %825 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %826 = load i32, i32* @VIDIOC_S_AUDIO, align 4
  %827 = load i32, i32* @vidioc_s_audio, align 4
  %828 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %825, i32 %826, i32 %827)
  %829 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %830 = load i32, i32* @VIDIOC_QUERY_DV_TIMINGS, align 4
  %831 = load i32, i32* @vidioc_query_dv_timings, align 4
  %832 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %829, i32 %830, i32 %831)
  %833 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %834 = load i32, i32* @VIDIOC_S_EDID, align 4
  %835 = load i32, i32* @vidioc_s_edid, align 4
  %836 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %833, i32 %834, i32 %835)
  br label %837

837:                                              ; preds = %800, %789
  %838 = load i32, i32* %10, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %865

840:                                              ; preds = %837
  %841 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %842 = load i32, i32* @VIDIOC_ENUMOUTPUT, align 4
  %843 = load i32, i32* @vidioc_enum_output, align 4
  %844 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %841, i32 %842, i32 %843)
  %845 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %846 = load i32, i32* @VIDIOC_G_OUTPUT, align 4
  %847 = load i32, i32* @vidioc_g_output, align 4
  %848 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %845, i32 %846, i32 %847)
  %849 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %850 = load i32, i32* @VIDIOC_S_OUTPUT, align 4
  %851 = load i32, i32* @vidioc_s_output, align 4
  %852 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %849, i32 %850, i32 %851)
  %853 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %854 = load i32, i32* @VIDIOC_ENUMAUDOUT, align 4
  %855 = load i32, i32* @vidioc_enumaudout, align 4
  %856 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %853, i32 %854, i32 %855)
  %857 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %858 = load i32, i32* @VIDIOC_G_AUDOUT, align 4
  %859 = load i32, i32* @vidioc_g_audout, align 4
  %860 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %857, i32 %858, i32 %859)
  %861 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %862 = load i32, i32* @VIDIOC_S_AUDOUT, align 4
  %863 = load i32, i32* @vidioc_s_audout, align 4
  %864 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %861, i32 %862, i32 %863)
  br label %865

865:                                              ; preds = %840, %837
  %866 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %867 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %866, i32 0, i32 1
  %868 = load i64, i64* %867, align 8
  %869 = icmp ne i64 %868, 0
  br i1 %869, label %881, label %870

870:                                              ; preds = %865
  %871 = load %struct.video_device*, %struct.video_device** %2, align 8
  %872 = getelementptr inbounds %struct.video_device, %struct.video_device* %871, i32 0, i32 0
  %873 = load i64, i64* %872, align 8
  %874 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %875 = icmp eq i64 %873, %874
  br i1 %875, label %876, label %886

876:                                              ; preds = %870
  %877 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %878 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %877, i32 0, i32 0
  %879 = load i64, i64* %878, align 8
  %880 = icmp ne i64 %879, 0
  br i1 %880, label %881, label %886

881:                                              ; preds = %876, %865
  %882 = load i32, i32* @VIDIOC_G_PARM, align 4
  %883 = call i32 @_IOC_NR(i32 %882)
  %884 = load i32, i32* @valid_ioctls, align 4
  %885 = call i32 @set_bit(i32 %883, i32 %884)
  br label %886

886:                                              ; preds = %881, %876, %870
  %887 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %888 = load i32, i32* @VIDIOC_S_PARM, align 4
  %889 = load i32, i32* @vidioc_s_parm, align 4
  %890 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %887, i32 %888, i32 %889)
  %891 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %892 = load i32, i32* @VIDIOC_S_DV_TIMINGS, align 4
  %893 = load i32, i32* @vidioc_s_dv_timings, align 4
  %894 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %891, i32 %892, i32 %893)
  %895 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %896 = load i32, i32* @VIDIOC_G_DV_TIMINGS, align 4
  %897 = load i32, i32* @vidioc_g_dv_timings, align 4
  %898 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %895, i32 %896, i32 %897)
  %899 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %900 = load i32, i32* @VIDIOC_ENUM_DV_TIMINGS, align 4
  %901 = load i32, i32* @vidioc_enum_dv_timings, align 4
  %902 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %899, i32 %900, i32 %901)
  %903 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %904 = load i32, i32* @VIDIOC_DV_TIMINGS_CAP, align 4
  %905 = load i32, i32* @vidioc_dv_timings_cap, align 4
  %906 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %903, i32 %904, i32 %905)
  %907 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %908 = load i32, i32* @VIDIOC_G_EDID, align 4
  %909 = load i32, i32* @vidioc_g_edid, align 4
  %910 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %907, i32 %908, i32 %909)
  br label %911

911:                                              ; preds = %886, %776
  %912 = load i32, i32* %10, align 4
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %929

914:                                              ; preds = %911
  %915 = load i32, i32* %6, align 4
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %920, label %917

917:                                              ; preds = %914
  %918 = load i32, i32* %7, align 4
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %920, label %929

920:                                              ; preds = %917, %914
  %921 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %922 = load i32, i32* @VIDIOC_G_MODULATOR, align 4
  %923 = load i32, i32* @vidioc_g_modulator, align 4
  %924 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %921, i32 %922, i32 %923)
  %925 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %926 = load i32, i32* @VIDIOC_S_MODULATOR, align 4
  %927 = load i32, i32* @vidioc_s_modulator, align 4
  %928 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %925, i32 %926, i32 %927)
  br label %929

929:                                              ; preds = %920, %917, %911
  %930 = load i32, i32* %9, align 4
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %932, label %945

932:                                              ; preds = %929
  %933 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %934 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %935 = load i32, i32* @vidioc_g_tuner, align 4
  %936 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %933, i32 %934, i32 %935)
  %937 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %938 = load i32, i32* @VIDIOC_S_TUNER, align 4
  %939 = load i32, i32* @vidioc_s_tuner, align 4
  %940 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %937, i32 %938, i32 %939)
  %941 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %3, align 8
  %942 = load i32, i32* @VIDIOC_S_HW_FREQ_SEEK, align 4
  %943 = load i32, i32* @vidioc_s_hw_freq_seek, align 4
  %944 = call i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops* %941, i32 %942, i32 %943)
  br label %945

945:                                              ; preds = %932, %929
  %946 = load %struct.video_device*, %struct.video_device** %2, align 8
  %947 = getelementptr inbounds %struct.video_device, %struct.video_device* %946, i32 0, i32 2
  %948 = load i32, i32* %947, align 8
  %949 = load i32, i32* @valid_ioctls, align 4
  %950 = load %struct.video_device*, %struct.video_device** %2, align 8
  %951 = getelementptr inbounds %struct.video_device, %struct.video_device* %950, i32 0, i32 2
  %952 = load i32, i32* %951, align 8
  %953 = load i32, i32* @BASE_VIDIOC_PRIVATE, align 4
  %954 = call i32 @bitmap_andnot(i32 %948, i32 %949, i32 %952, i32 %953)
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @SET_VALID_IOCTL(%struct.v4l2_ioctl_ops*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
