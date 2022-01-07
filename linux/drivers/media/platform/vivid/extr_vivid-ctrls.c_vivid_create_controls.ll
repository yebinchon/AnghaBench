; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-ctrls.c_vivid_create_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-ctrls.c_vivid_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_config = type { i8*, i8**, i64, i32, i32, i32* }
%struct.vivid_dev = type { i32*, %struct.TYPE_14__, i64, %struct.TYPE_13__, i64, %struct.TYPE_12__, i64, %struct.TYPE_11__, i64, %struct.TYPE_10__, i64, %struct.TYPE_9__, i64, %struct.TYPE_8__, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler }
%struct.TYPE_14__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_13__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_12__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_11__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_10__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_9__ = type { %struct.v4l2_ctrl_handler* }
%struct.TYPE_8__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"DV Timings\00", align 1
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@VIVID_CID_DV_TIMINGS = common dso_local global i32 0, align 4
@vivid_vid_cap_ctrl_ops = common dso_local global i32 0, align 4
@vivid_ctrl_class = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@vivid_user_vid_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@MAX_INPUTS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@vivid_ctrl_button = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_int32 = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_int64 = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_boolean = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_menu = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_string = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_bitmask = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_int_menu = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_u32_array = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_u16_matrix = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_u8_4d_array = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Test Pattern\00", align 1
@tpg_pattern_strings = common dso_local global i8** null, align 8
@TPG_PAT_NOISE = common dso_local global i64 0, align 8
@VIVID_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@vivid_ctrl_perc_fill = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_hor_movement = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_vert_movement = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_osd_mode = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_show_border = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_show_square = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_hflip = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_vflip = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_insert_sav = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_insert_eav = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_reduced_fps = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_crop_cap = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_compose_cap = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_scaler_cap = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_tstamp_src = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_colorspace = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_xfer_func = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_ycbcr_enc = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_hsv_enc = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_quantization = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_alpha_mode = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_crop_out = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_compose_out = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_has_scaler_out = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_disconnect = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_dqbuf_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_perc_dropped = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_queue_setup_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_buf_prepare_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_start_streaming_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_queue_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_seq_wrap = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_time_wrap = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_std_aspect_ratio = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_std_signal_mode = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_standard = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_vbi_cap_interlaced = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_dv_timings_signal_mode = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_dv_timings_aspect_ratio = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_max_edid_blocks = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_limited_rgb_range = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@V4L2_CID_DV_RX_RGB_RANGE = common dso_local global i32 0, align 4
@V4L2_DV_RGB_RANGE_FULL = common dso_local global i32 0, align 4
@V4L2_DV_RGB_RANGE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_DV_RX_POWER_PRESENT = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_RGB_RANGE = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_MODE = common dso_local global i32 0, align 4
@V4L2_DV_TX_MODE_HDMI = common dso_local global i32 0, align 4
@vivid_ctrl_display_present = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@V4L2_CID_DV_TX_HOTPLUG = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_RXSENSE = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_EDID_PRESENT = common dso_local global i32 0, align 4
@vivid_ctrl_loop_video = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_clear_fb = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_radio_hw_seek_mode = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_radio_hw_seek_prog_lim = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_radio_rx_rds_blockio = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_radio_rx_rds_rbds = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_radio_rx_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RECEPTION = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_PTY = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_PS_NAME = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_RADIO_TEXT = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_TRAFFIC_ANNOUNCEMENT = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_TRAFFIC_PROGRAM = common dso_local global i32 0, align 4
@V4L2_CID_RDS_RX_MUSIC_SPEECH = common dso_local global i32 0, align 4
@vivid_ctrl_radio_tx_rds_blockio = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_radio_tx_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PI = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PTY = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PS_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"VIVID-TX\00", align 1
@V4L2_CID_RDS_TX_RADIO_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"This is a VIVID default Radio Text template text, change at will\00", align 1
@V4L2_CID_RDS_TX_MONO_STEREO = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_ARTIFICIAL_HEAD = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_COMPRESSED = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_DYNAMIC_PTY = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_TRAFFIC_PROGRAM = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_MUSIC_SPEECH = common dso_local global i32 0, align 4
@vivid_ctrl_sdr_cap_fm_deviation = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@vivid_ctrl_req_validate_error = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_create_controls(%struct.vivid_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_ctrl_handler*, align 8
  %15 = alloca %struct.v4l2_ctrl_handler*, align 8
  %16 = alloca %struct.v4l2_ctrl_handler*, align 8
  %17 = alloca %struct.v4l2_ctrl_handler*, align 8
  %18 = alloca %struct.v4l2_ctrl_handler*, align 8
  %19 = alloca %struct.v4l2_ctrl_handler*, align 8
  %20 = alloca %struct.v4l2_ctrl_handler*, align 8
  %21 = alloca %struct.v4l2_ctrl_handler*, align 8
  %22 = alloca %struct.v4l2_ctrl_handler*, align 8
  %23 = alloca %struct.v4l2_ctrl_handler*, align 8
  %24 = alloca %struct.v4l2_ctrl_handler*, align 8
  %25 = alloca %struct.v4l2_ctrl_handler*, align 8
  %26 = alloca %struct.v4l2_ctrl_handler*, align 8
  %27 = alloca %struct.v4l2_ctrl_handler*, align 8
  %28 = alloca %struct.v4l2_ctrl_config, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.v4l2_ctrl_config, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 89
  store %struct.v4l2_ctrl_handler* %34, %struct.v4l2_ctrl_handler** %14, align 8
  %35 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %36 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %35, i32 0, i32 88
  store %struct.v4l2_ctrl_handler* %36, %struct.v4l2_ctrl_handler** %15, align 8
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 87
  store %struct.v4l2_ctrl_handler* %38, %struct.v4l2_ctrl_handler** %16, align 8
  %39 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %40 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %39, i32 0, i32 86
  store %struct.v4l2_ctrl_handler* %40, %struct.v4l2_ctrl_handler** %17, align 8
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 85
  store %struct.v4l2_ctrl_handler* %42, %struct.v4l2_ctrl_handler** %18, align 8
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 84
  store %struct.v4l2_ctrl_handler* %44, %struct.v4l2_ctrl_handler** %19, align 8
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 83
  store %struct.v4l2_ctrl_handler* %46, %struct.v4l2_ctrl_handler** %20, align 8
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 82
  store %struct.v4l2_ctrl_handler* %48, %struct.v4l2_ctrl_handler** %21, align 8
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 81
  store %struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_handler** %22, align 8
  %51 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %52 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %51, i32 0, i32 80
  store %struct.v4l2_ctrl_handler* %52, %struct.v4l2_ctrl_handler** %23, align 8
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 79
  store %struct.v4l2_ctrl_handler* %54, %struct.v4l2_ctrl_handler** %24, align 8
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 78
  store %struct.v4l2_ctrl_handler* %56, %struct.v4l2_ctrl_handler** %25, align 8
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 77
  store %struct.v4l2_ctrl_handler* %58, %struct.v4l2_ctrl_handler** %26, align 8
  %59 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %60 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %59, i32 0, i32 76
  store %struct.v4l2_ctrl_handler* %60, %struct.v4l2_ctrl_handler** %27, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 1
  store i8** null, i8*** %62, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 3
  %65 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 4
  %67 = load i32, i32* @VIVID_CID_DV_TIMINGS, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 5
  store i32* @vivid_vid_cap_ctrl_ops, i32** %68, align 8
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %70 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %69, i32 10)
  %71 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %72 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %71, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %74 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %73, i32 9)
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %76 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %75, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %77 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %78 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %77, i32 2)
  %79 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %80 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %79, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %82 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %81, i32 8)
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %84 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %83, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %85 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %86 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %85, i32 2)
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %88 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %87, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %89 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %90 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %89, i32 1)
  %91 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %92 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %91, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %20, align 8
  %94 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %93, i32 1)
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %20, align 8
  %96 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %95, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %97 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %98 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %97, i32 55)
  %99 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %100 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %99, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %101 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %102 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %101, i32 26)
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %6
  %106 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %107 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %106, i32 0, i32 33
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %112 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %111, i32 0, i32 40
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %105, %6
  %116 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %117 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %116, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %120 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %119, i32 21)
  %121 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %122 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %121, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %123 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %124 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %123, i32 19)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %129 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %128, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  br label %130

130:                                              ; preds = %127, %118
  %131 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %132 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %131, i32 17)
  %133 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %134 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %133, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %135 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %136 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %135, i32 17)
  %137 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %138 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %137, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %139 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %140 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %139, i32 19)
  %141 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %142 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %141, %struct.v4l2_ctrl_config* @vivid_ctrl_class, i32* null)
  %143 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %144 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %145 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %143, i32* null, i32 %144, i32 0, i32 255, i32 1, i32 200)
  %146 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %147 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %146, i32 0, i32 75
  store i8* %145, i8** %147, align 8
  %148 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %149 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %150 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %148, i32* null, i32 %149, i32 0, i32 1, i32 1, i32 0)
  %151 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %152 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %151, i32 0, i32 74
  store i8* %150, i8** %152, align 8
  %153 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %154 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %153, i32 0, i32 14
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %214

157:                                              ; preds = %130
  %158 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %159 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %160 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %158, i32* @vivid_user_vid_ctrl_ops, i32 %159, i32 0, i32 255, i32 1, i32 128)
  %161 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %162 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %161, i32 0, i32 73
  store i8* %160, i8** %162, align 8
  store i32 0, i32* %29, align 4
  br label %163

163:                                              ; preds = %174, %157
  %164 = load i32, i32* %29, align 4
  %165 = load i32, i32* @MAX_INPUTS, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %169 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %29, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 128, i32* %173, align 4
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %29, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %29, align 4
  br label %163

177:                                              ; preds = %163
  %178 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %179 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %180 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %178, i32* @vivid_user_vid_ctrl_ops, i32 %179, i32 0, i32 255, i32 1, i32 128)
  %181 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %182 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %181, i32 0, i32 72
  store i8* %180, i8** %182, align 8
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %184 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %185 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %183, i32* @vivid_user_vid_ctrl_ops, i32 %184, i32 0, i32 255, i32 1, i32 128)
  %186 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %187 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %186, i32 0, i32 71
  store i8* %185, i8** %187, align 8
  %188 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %189 = load i32, i32* @V4L2_CID_HUE, align 4
  %190 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %188, i32* @vivid_user_vid_ctrl_ops, i32 %189, i32 -128, i32 128, i32 1, i32 0)
  %191 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %192 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %191, i32 0, i32 70
  store i8* %190, i8** %192, align 8
  %193 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %194 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %195 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %193, i32* @vivid_user_vid_ctrl_ops, i32 %194, i32 0, i32 1, i32 1, i32 0)
  %196 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %197 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %198 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %196, i32* @vivid_user_vid_ctrl_ops, i32 %197, i32 0, i32 1, i32 1, i32 0)
  %199 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %200 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %201 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %199, i32* @vivid_user_vid_ctrl_ops, i32 %200, i32 0, i32 1, i32 1, i32 1)
  %202 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %203 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %202, i32 0, i32 15
  store i8* %201, i8** %203, align 8
  %204 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %205 = load i32, i32* @V4L2_CID_GAIN, align 4
  %206 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %204, i32* @vivid_user_vid_ctrl_ops, i32 %205, i32 0, i32 255, i32 1, i32 100)
  %207 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %208 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %207, i32 0, i32 69
  store i8* %206, i8** %208, align 8
  %209 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %210 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %211 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %209, i32* @vivid_user_vid_ctrl_ops, i32 %210, i32 0, i32 255, i32 1, i32 0)
  %212 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %213 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %212, i32 0, i32 68
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %177, %130
  %215 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %216 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %215, %struct.v4l2_ctrl_config* @vivid_ctrl_button, i32* null)
  %217 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %218 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %217, i32 0, i32 67
  store i8* %216, i8** %218, align 8
  %219 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %220 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %219, %struct.v4l2_ctrl_config* @vivid_ctrl_int32, i32* null)
  %221 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %222 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %221, i32 0, i32 66
  store i8* %220, i8** %222, align 8
  %223 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %224 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %223, %struct.v4l2_ctrl_config* @vivid_ctrl_int64, i32* null)
  %225 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %226 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %225, i32 0, i32 65
  store i8* %224, i8** %226, align 8
  %227 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %228 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %227, %struct.v4l2_ctrl_config* @vivid_ctrl_boolean, i32* null)
  %229 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %230 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %229, i32 0, i32 64
  store i8* %228, i8** %230, align 8
  %231 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %232 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %231, %struct.v4l2_ctrl_config* @vivid_ctrl_menu, i32* null)
  %233 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %234 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %233, i32 0, i32 63
  store i8* %232, i8** %234, align 8
  %235 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %236 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %235, %struct.v4l2_ctrl_config* @vivid_ctrl_string, i32* null)
  %237 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %238 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %237, i32 0, i32 62
  store i8* %236, i8** %238, align 8
  %239 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %240 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %239, %struct.v4l2_ctrl_config* @vivid_ctrl_bitmask, i32* null)
  %241 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %242 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %241, i32 0, i32 61
  store i8* %240, i8** %242, align 8
  %243 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %244 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %243, %struct.v4l2_ctrl_config* @vivid_ctrl_int_menu, i32* null)
  %245 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %246 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %245, i32 0, i32 60
  store i8* %244, i8** %246, align 8
  %247 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %248 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %247, %struct.v4l2_ctrl_config* @vivid_ctrl_u32_array, i32* null)
  %249 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %250 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %249, %struct.v4l2_ctrl_config* @vivid_ctrl_u16_matrix, i32* null)
  %251 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %252 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %251, %struct.v4l2_ctrl_config* @vivid_ctrl_u8_4d_array, i32* null)
  %253 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %254 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %253, i32 0, i32 14
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %326

257:                                              ; preds = %214
  %258 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %258, align 8
  %259 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 1
  %260 = load i8**, i8*** @tpg_pattern_strings, align 8
  store i8** %260, i8*** %259, align 8
  %261 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 2
  %262 = load i64, i64* @TPG_PAT_NOISE, align 8
  store i64 %262, i64* %261, align 8
  %263 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 3
  %264 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  store i32 %264, i32* %263, align 8
  %265 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 4
  %266 = load i32, i32* @VIVID_CID_TEST_PATTERN, align 4
  store i32 %266, i32* %265, align 4
  %267 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %30, i32 0, i32 5
  store i32* @vivid_vid_cap_ctrl_ops, i32** %267, align 8
  %268 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %269 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %268, %struct.v4l2_ctrl_config* %30, i32* null)
  %270 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %271 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %270, i32 0, i32 59
  store i8* %269, i8** %271, align 8
  %272 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %273 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %272, %struct.v4l2_ctrl_config* @vivid_ctrl_perc_fill, i32* null)
  %274 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %275 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %274, %struct.v4l2_ctrl_config* @vivid_ctrl_hor_movement, i32* null)
  %276 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %277 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %276, %struct.v4l2_ctrl_config* @vivid_ctrl_vert_movement, i32* null)
  %278 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %279 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %278, %struct.v4l2_ctrl_config* @vivid_ctrl_osd_mode, i32* null)
  %280 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %281 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %280, %struct.v4l2_ctrl_config* @vivid_ctrl_show_border, i32* null)
  %282 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %283 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %282, %struct.v4l2_ctrl_config* @vivid_ctrl_show_square, i32* null)
  %284 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %285 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %284, %struct.v4l2_ctrl_config* @vivid_ctrl_hflip, i32* null)
  %286 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %287 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %286, %struct.v4l2_ctrl_config* @vivid_ctrl_vflip, i32* null)
  %288 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %289 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %288, %struct.v4l2_ctrl_config* @vivid_ctrl_insert_sav, i32* null)
  %290 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %291 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %290, %struct.v4l2_ctrl_config* @vivid_ctrl_insert_eav, i32* null)
  %292 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %293 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %292, %struct.v4l2_ctrl_config* @vivid_ctrl_reduced_fps, i32* null)
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %257
  %297 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %298 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %297, %struct.v4l2_ctrl_config* @vivid_ctrl_has_crop_cap, i32* null)
  %299 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %300 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %299, i32 0, i32 58
  store i8* %298, i8** %300, align 8
  %301 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %302 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %301, %struct.v4l2_ctrl_config* @vivid_ctrl_has_compose_cap, i32* null)
  %303 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %304 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %303, i32 0, i32 57
  store i8* %302, i8** %304, align 8
  %305 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %306 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %305, %struct.v4l2_ctrl_config* @vivid_ctrl_has_scaler_cap, i32* null)
  %307 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %308 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %307, i32 0, i32 56
  store i8* %306, i8** %308, align 8
  br label %309

309:                                              ; preds = %296, %257
  %310 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %311 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %310, %struct.v4l2_ctrl_config* @vivid_ctrl_tstamp_src, i32* null)
  %312 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %313 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %312, %struct.v4l2_ctrl_config* @vivid_ctrl_colorspace, i32* null)
  %314 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %315 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %314, i32 0, i32 55
  store i8* %313, i8** %315, align 8
  %316 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %317 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %316, %struct.v4l2_ctrl_config* @vivid_ctrl_xfer_func, i32* null)
  %318 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %319 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %318, %struct.v4l2_ctrl_config* @vivid_ctrl_ycbcr_enc, i32* null)
  %320 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %321 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %320, %struct.v4l2_ctrl_config* @vivid_ctrl_hsv_enc, i32* null)
  %322 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %323 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %322, %struct.v4l2_ctrl_config* @vivid_ctrl_quantization, i32* null)
  %324 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %325 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %324, %struct.v4l2_ctrl_config* @vivid_ctrl_alpha_mode, i32* null)
  br label %326

326:                                              ; preds = %309, %214
  %327 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %328 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %327, i32 0, i32 12
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %347

331:                                              ; preds = %326
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %347

334:                                              ; preds = %331
  %335 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %336 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %335, %struct.v4l2_ctrl_config* @vivid_ctrl_has_crop_out, i32* null)
  %337 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %338 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %337, i32 0, i32 54
  store i8* %336, i8** %338, align 8
  %339 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %340 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %339, %struct.v4l2_ctrl_config* @vivid_ctrl_has_compose_out, i32* null)
  %341 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %342 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %341, i32 0, i32 53
  store i8* %340, i8** %342, align 8
  %343 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %344 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %343, %struct.v4l2_ctrl_config* @vivid_ctrl_has_scaler_out, i32* null)
  %345 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %346 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %345, i32 0, i32 52
  store i8* %344, i8** %346, align 8
  br label %347

347:                                              ; preds = %334, %331, %326
  %348 = load i32, i32* %11, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %369, label %350

350:                                              ; preds = %347
  %351 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %352 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %351, %struct.v4l2_ctrl_config* @vivid_ctrl_disconnect, i32* null)
  %353 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %354 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %353, %struct.v4l2_ctrl_config* @vivid_ctrl_dqbuf_error, i32* null)
  %355 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %356 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %355, %struct.v4l2_ctrl_config* @vivid_ctrl_perc_dropped, i32* null)
  %357 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %358 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %357, %struct.v4l2_ctrl_config* @vivid_ctrl_queue_setup_error, i32* null)
  %359 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %360 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %359, %struct.v4l2_ctrl_config* @vivid_ctrl_buf_prepare_error, i32* null)
  %361 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %362 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %361, %struct.v4l2_ctrl_config* @vivid_ctrl_start_streaming_error, i32* null)
  %363 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %364 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %363, %struct.v4l2_ctrl_config* @vivid_ctrl_queue_error, i32* null)
  %365 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %366 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %365, %struct.v4l2_ctrl_config* @vivid_ctrl_seq_wrap, i32* null)
  %367 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %368 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %367, %struct.v4l2_ctrl_config* @vivid_ctrl_time_wrap, i32* null)
  br label %369

369:                                              ; preds = %350, %347
  %370 = load i32, i32* %12, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %416

372:                                              ; preds = %369
  %373 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %374 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %373, i32 0, i32 14
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %382, label %377

377:                                              ; preds = %372
  %378 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %379 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %378, i32 0, i32 10
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %416

382:                                              ; preds = %377, %372
  %383 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %384 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %383, i32 0, i32 14
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %389 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %388, %struct.v4l2_ctrl_config* @vivid_ctrl_std_aspect_ratio, i32* null)
  br label %390

390:                                              ; preds = %387, %382
  %391 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %392 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %391, %struct.v4l2_ctrl_config* @vivid_ctrl_std_signal_mode, i32* null)
  %393 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %394 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %393, i32 0, i32 50
  store i8* %392, i8** %394, align 8
  %395 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %396 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %395, %struct.v4l2_ctrl_config* @vivid_ctrl_standard, i32* null)
  %397 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %398 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %397, i32 0, i32 51
  store i8* %396, i8** %398, align 8
  %399 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %400 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %399, i32 0, i32 50
  %401 = load i8*, i8** %400, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %403, label %407

403:                                              ; preds = %390
  %404 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %405 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %404, i32 0, i32 50
  %406 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %405)
  br label %407

407:                                              ; preds = %403, %390
  %408 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %409 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %408, i32 0, i32 49
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %407
  %413 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %414 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %413, %struct.v4l2_ctrl_config* @vivid_ctrl_vbi_cap_interlaced, i32* null)
  br label %415

415:                                              ; preds = %412, %407
  br label %416

416:                                              ; preds = %415, %377, %369
  %417 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %418 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %417, i32 0, i32 48
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %476

421:                                              ; preds = %416
  %422 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %423 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %422, i32 0, i32 48
  %424 = load i64, i64* %423, align 8
  %425 = sub nsw i64 %424, 1
  %426 = call i32 @GENMASK(i64 %425, i32 0)
  store i32 %426, i32* %31, align 4
  %427 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %428 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %427, %struct.v4l2_ctrl_config* @vivid_ctrl_dv_timings_signal_mode, i32* null)
  %429 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %430 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %429, i32 0, i32 44
  store i8* %428, i8** %430, align 8
  %431 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %432 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %431, i32 0, i32 47
  %433 = load i64, i64* %432, align 8
  %434 = sub nsw i64 %433, 1
  %435 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 2
  store i64 %434, i64* %435, align 8
  %436 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %437 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %436, i32 0, i32 46
  %438 = load i64, i64* %437, align 8
  %439 = inttoptr i64 %438 to i8**
  %440 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 1
  store i8** %439, i8*** %440, align 8
  %441 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %442 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %441, %struct.v4l2_ctrl_config* %28, i32* null)
  %443 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %444 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %443, i32 0, i32 45
  store i8* %442, i8** %444, align 8
  %445 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %446 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %445, i32 0, i32 44
  %447 = load i8*, i8** %446, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %453

449:                                              ; preds = %421
  %450 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %451 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %450, i32 0, i32 44
  %452 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %451)
  br label %453

453:                                              ; preds = %449, %421
  %454 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %455 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %454, %struct.v4l2_ctrl_config* @vivid_ctrl_dv_timings_aspect_ratio, i32* null)
  %456 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %457 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %456, %struct.v4l2_ctrl_config* @vivid_ctrl_max_edid_blocks, i32* null)
  %458 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %459 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %458, %struct.v4l2_ctrl_config* @vivid_ctrl_limited_rgb_range, i32* null)
  %460 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %461 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %460, i32 0, i32 43
  store i8* %459, i8** %461, align 8
  %462 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %463 = load i32, i32* @V4L2_CID_DV_RX_RGB_RANGE, align 4
  %464 = load i32, i32* @V4L2_DV_RGB_RANGE_FULL, align 4
  %465 = load i32, i32* @V4L2_DV_RGB_RANGE_AUTO, align 4
  %466 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %462, i32* @vivid_vid_cap_ctrl_ops, i32 %463, i32 %464, i32 0, i32 %465)
  %467 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %468 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %467, i32 0, i32 42
  store i8* %466, i8** %468, align 8
  %469 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %470 = load i32, i32* @V4L2_CID_DV_RX_POWER_PRESENT, align 4
  %471 = load i32, i32* %31, align 4
  %472 = load i32, i32* %31, align 4
  %473 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %469, i32* null, i32 %470, i32 0, i32 %471, i32 0, i32 %472)
  %474 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %475 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %474, i32 0, i32 41
  store i8* %473, i8** %475, align 8
  br label %476

476:                                              ; preds = %453, %416
  %477 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %478 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %477, i32 0, i32 40
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %526

481:                                              ; preds = %476
  %482 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %483 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %482, i32 0, i32 40
  %484 = load i64, i64* %483, align 8
  %485 = sub nsw i64 %484, 1
  %486 = call i32 @GENMASK(i64 %485, i32 0)
  store i32 %486, i32* %32, align 4
  %487 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %488 = load i32, i32* @V4L2_CID_DV_TX_RGB_RANGE, align 4
  %489 = load i32, i32* @V4L2_DV_RGB_RANGE_FULL, align 4
  %490 = load i32, i32* @V4L2_DV_RGB_RANGE_AUTO, align 4
  %491 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %487, i32* null, i32 %488, i32 %489, i32 0, i32 %490)
  %492 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %493 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %492, i32 0, i32 39
  store i8* %491, i8** %493, align 8
  %494 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %495 = load i32, i32* @V4L2_CID_DV_TX_MODE, align 4
  %496 = load i32, i32* @V4L2_DV_TX_MODE_HDMI, align 4
  %497 = load i32, i32* @V4L2_DV_TX_MODE_HDMI, align 4
  %498 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %494, i32* null, i32 %495, i32 %496, i32 0, i32 %497)
  %499 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %500 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %499, i32 0, i32 38
  store i8* %498, i8** %500, align 8
  %501 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %502 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %501, %struct.v4l2_ctrl_config* @vivid_ctrl_display_present, i32* null)
  %503 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %504 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %503, i32 0, i32 37
  store i8* %502, i8** %504, align 8
  %505 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %506 = load i32, i32* @V4L2_CID_DV_TX_HOTPLUG, align 4
  %507 = load i32, i32* %32, align 4
  %508 = load i32, i32* %32, align 4
  %509 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %505, i32* null, i32 %506, i32 0, i32 %507, i32 0, i32 %508)
  %510 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %511 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %510, i32 0, i32 36
  store i8* %509, i8** %511, align 8
  %512 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %513 = load i32, i32* @V4L2_CID_DV_TX_RXSENSE, align 4
  %514 = load i32, i32* %32, align 4
  %515 = load i32, i32* %32, align 4
  %516 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %512, i32* null, i32 %513, i32 0, i32 %514, i32 0, i32 %515)
  %517 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %518 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %517, i32 0, i32 35
  store i8* %516, i8** %518, align 8
  %519 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %520 = load i32, i32* @V4L2_CID_DV_TX_EDID_PRESENT, align 4
  %521 = load i32, i32* %32, align 4
  %522 = load i32, i32* %32, align 4
  %523 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %519, i32* null, i32 %520, i32 0, i32 %521, i32 0, i32 %522)
  %524 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %525 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %524, i32 0, i32 34
  store i8* %523, i8** %525, align 8
  br label %526

526:                                              ; preds = %481, %476
  %527 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %528 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %527, i32 0, i32 14
  %529 = load i64, i64* %528, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %526
  %532 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %533 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %532, i32 0, i32 12
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %546, label %536

536:                                              ; preds = %531, %526
  %537 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %538 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %537, i32 0, i32 10
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %536
  %542 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %543 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %542, i32 0, i32 8
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %541, %531
  %547 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %548 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %547, %struct.v4l2_ctrl_config* @vivid_ctrl_loop_video, i32* null)
  br label %549

549:                                              ; preds = %546, %541, %536
  %550 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %551 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %550, i32 0, i32 33
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  %555 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %20, align 8
  %556 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %555, %struct.v4l2_ctrl_config* @vivid_ctrl_clear_fb, i32* null)
  br label %557

557:                                              ; preds = %554, %549
  %558 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %559 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %558, i32 0, i32 6
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %604

562:                                              ; preds = %557
  %563 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %564 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %563, %struct.v4l2_ctrl_config* @vivid_ctrl_radio_hw_seek_mode, i32* null)
  %565 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %566 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %565, %struct.v4l2_ctrl_config* @vivid_ctrl_radio_hw_seek_prog_lim, i32* null)
  %567 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %568 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %567, %struct.v4l2_ctrl_config* @vivid_ctrl_radio_rx_rds_blockio, i32* null)
  %569 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %570 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %569, %struct.v4l2_ctrl_config* @vivid_ctrl_radio_rx_rds_rbds, i32* null)
  %571 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %572 = load i32, i32* @V4L2_CID_RDS_RECEPTION, align 4
  %573 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %571, i32* @vivid_radio_rx_ctrl_ops, i32 %572, i32 0, i32 1, i32 1, i32 1)
  %574 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %575 = load i32, i32* @V4L2_CID_RDS_RX_PTY, align 4
  %576 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %574, i32* @vivid_radio_rx_ctrl_ops, i32 %575, i32 0, i32 31, i32 1, i32 0)
  %577 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %578 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %577, i32 0, i32 32
  store i8* %576, i8** %578, align 8
  %579 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %580 = load i32, i32* @V4L2_CID_RDS_RX_PS_NAME, align 4
  %581 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %579, i32* @vivid_radio_rx_ctrl_ops, i32 %580, i32 0, i32 8, i32 8, i32 0)
  %582 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %583 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %582, i32 0, i32 31
  store i8* %581, i8** %583, align 8
  %584 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %585 = load i32, i32* @V4L2_CID_RDS_RX_RADIO_TEXT, align 4
  %586 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %584, i32* @vivid_radio_rx_ctrl_ops, i32 %585, i32 0, i32 64, i32 64, i32 0)
  %587 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %588 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %587, i32 0, i32 30
  store i8* %586, i8** %588, align 8
  %589 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %590 = load i32, i32* @V4L2_CID_RDS_RX_TRAFFIC_ANNOUNCEMENT, align 4
  %591 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %589, i32* @vivid_radio_rx_ctrl_ops, i32 %590, i32 0, i32 1, i32 1, i32 0)
  %592 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %593 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %592, i32 0, i32 29
  store i8* %591, i8** %593, align 8
  %594 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %595 = load i32, i32* @V4L2_CID_RDS_RX_TRAFFIC_PROGRAM, align 4
  %596 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %594, i32* @vivid_radio_rx_ctrl_ops, i32 %595, i32 0, i32 1, i32 1, i32 0)
  %597 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %598 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %597, i32 0, i32 28
  store i8* %596, i8** %598, align 8
  %599 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %600 = load i32, i32* @V4L2_CID_RDS_RX_MUSIC_SPEECH, align 4
  %601 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %599, i32* @vivid_radio_rx_ctrl_ops, i32 %600, i32 0, i32 1, i32 1, i32 1)
  %602 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %603 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %602, i32 0, i32 27
  store i8* %601, i8** %603, align 8
  br label %604

604:                                              ; preds = %562, %557
  %605 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %606 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %605, i32 0, i32 4
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %687

609:                                              ; preds = %604
  %610 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %611 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %610, %struct.v4l2_ctrl_config* @vivid_ctrl_radio_tx_rds_blockio, i32* null)
  %612 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %613 = load i32, i32* @V4L2_CID_RDS_TX_PI, align 4
  %614 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %612, i32* @vivid_radio_tx_ctrl_ops, i32 %613, i32 0, i32 65535, i32 1, i32 32904)
  %615 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %616 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %615, i32 0, i32 26
  store i8* %614, i8** %616, align 8
  %617 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %618 = load i32, i32* @V4L2_CID_RDS_TX_PTY, align 4
  %619 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %617, i32* @vivid_radio_tx_ctrl_ops, i32 %618, i32 0, i32 31, i32 1, i32 3)
  %620 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %621 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %620, i32 0, i32 25
  store i8* %619, i8** %621, align 8
  %622 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %623 = load i32, i32* @V4L2_CID_RDS_TX_PS_NAME, align 4
  %624 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %622, i32* @vivid_radio_tx_ctrl_ops, i32 %623, i32 0, i32 8, i32 8, i32 0)
  %625 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %626 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %625, i32 0, i32 24
  store i8* %624, i8** %626, align 8
  %627 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %628 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %627, i32 0, i32 24
  %629 = load i8*, i8** %628, align 8
  %630 = icmp ne i8* %629, null
  br i1 %630, label %631, label %636

631:                                              ; preds = %609
  %632 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %633 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %632, i32 0, i32 24
  %634 = load i8*, i8** %633, align 8
  %635 = call i32 @v4l2_ctrl_s_ctrl_string(i8* %634, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %636

636:                                              ; preds = %631, %609
  %637 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %638 = load i32, i32* @V4L2_CID_RDS_TX_RADIO_TEXT, align 4
  %639 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %637, i32* @vivid_radio_tx_ctrl_ops, i32 %638, i32 0, i32 128, i32 64, i32 0)
  %640 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %641 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %640, i32 0, i32 23
  store i8* %639, i8** %641, align 8
  %642 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %643 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %642, i32 0, i32 23
  %644 = load i8*, i8** %643, align 8
  %645 = icmp ne i8* %644, null
  br i1 %645, label %646, label %651

646:                                              ; preds = %636
  %647 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %648 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %647, i32 0, i32 23
  %649 = load i8*, i8** %648, align 8
  %650 = call i32 @v4l2_ctrl_s_ctrl_string(i8* %649, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %651

651:                                              ; preds = %646, %636
  %652 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %653 = load i32, i32* @V4L2_CID_RDS_TX_MONO_STEREO, align 4
  %654 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %652, i32* @vivid_radio_tx_ctrl_ops, i32 %653, i32 0, i32 1, i32 1, i32 1)
  %655 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %656 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %655, i32 0, i32 22
  store i8* %654, i8** %656, align 8
  %657 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %658 = load i32, i32* @V4L2_CID_RDS_TX_ARTIFICIAL_HEAD, align 4
  %659 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %657, i32* @vivid_radio_tx_ctrl_ops, i32 %658, i32 0, i32 1, i32 1, i32 0)
  %660 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %661 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %660, i32 0, i32 21
  store i8* %659, i8** %661, align 8
  %662 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %663 = load i32, i32* @V4L2_CID_RDS_TX_COMPRESSED, align 4
  %664 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %662, i32* @vivid_radio_tx_ctrl_ops, i32 %663, i32 0, i32 1, i32 1, i32 0)
  %665 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %666 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %665, i32 0, i32 20
  store i8* %664, i8** %666, align 8
  %667 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %668 = load i32, i32* @V4L2_CID_RDS_TX_DYNAMIC_PTY, align 4
  %669 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %667, i32* @vivid_radio_tx_ctrl_ops, i32 %668, i32 0, i32 1, i32 1, i32 0)
  %670 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %671 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %670, i32 0, i32 19
  store i8* %669, i8** %671, align 8
  %672 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %673 = load i32, i32* @V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT, align 4
  %674 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %672, i32* @vivid_radio_tx_ctrl_ops, i32 %673, i32 0, i32 1, i32 1, i32 0)
  %675 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %676 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %675, i32 0, i32 18
  store i8* %674, i8** %676, align 8
  %677 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %678 = load i32, i32* @V4L2_CID_RDS_TX_TRAFFIC_PROGRAM, align 4
  %679 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %677, i32* @vivid_radio_tx_ctrl_ops, i32 %678, i32 0, i32 1, i32 1, i32 1)
  %680 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %681 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %680, i32 0, i32 17
  store i8* %679, i8** %681, align 8
  %682 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %683 = load i32, i32* @V4L2_CID_RDS_TX_MUSIC_SPEECH, align 4
  %684 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %682, i32* @vivid_radio_tx_ctrl_ops, i32 %683, i32 0, i32 1, i32 1, i32 1)
  %685 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %686 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %685, i32 0, i32 16
  store i8* %684, i8** %686, align 8
  br label %687

687:                                              ; preds = %651, %604
  %688 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %689 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %688, i32 0, i32 2
  %690 = load i64, i64* %689, align 8
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %695

692:                                              ; preds = %687
  %693 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %694 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %693, %struct.v4l2_ctrl_config* @vivid_ctrl_sdr_cap_fm_deviation, i32* null)
  br label %695

695:                                              ; preds = %692, %687
  %696 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %697 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %704

700:                                              ; preds = %695
  %701 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %702 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  store i32 %703, i32* %7, align 4
  br label %961

704:                                              ; preds = %695
  %705 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %706 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 4
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %713

709:                                              ; preds = %704
  %710 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %711 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 4
  store i32 %712, i32* %7, align 4
  br label %961

713:                                              ; preds = %704
  %714 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %715 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %722

718:                                              ; preds = %713
  %719 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %720 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  store i32 %721, i32* %7, align 4
  br label %961

722:                                              ; preds = %713
  %723 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %724 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 4
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %731

727:                                              ; preds = %722
  %728 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %729 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %7, align 4
  br label %961

731:                                              ; preds = %722
  %732 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %733 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %740

736:                                              ; preds = %731
  %737 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %738 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 4
  store i32 %739, i32* %7, align 4
  br label %961

740:                                              ; preds = %731
  %741 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %742 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %749

745:                                              ; preds = %740
  %746 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %747 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %746, i32 0, i32 0
  %748 = load i32, i32* %747, align 4
  store i32 %748, i32* %7, align 4
  br label %961

749:                                              ; preds = %740
  %750 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %751 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %750, i32 0, i32 15
  %752 = load i8*, i8** %751, align 8
  %753 = icmp ne i8* %752, null
  br i1 %753, label %754, label %758

754:                                              ; preds = %749
  %755 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %756 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %755, i32 0, i32 15
  %757 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %756, i32 0, i32 1)
  br label %758

758:                                              ; preds = %754, %749
  %759 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %760 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %759, i32 0, i32 14
  %761 = load i64, i64* %760, align 8
  %762 = icmp ne i64 %761, 0
  br i1 %762, label %763, label %798

763:                                              ; preds = %758
  %764 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %765 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %766 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %764, %struct.v4l2_ctrl_handler* %765, i32* null, i32 0)
  %767 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %768 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %15, align 8
  %769 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %767, %struct.v4l2_ctrl_handler* %768, i32* null, i32 0)
  %770 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %771 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %772 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %770, %struct.v4l2_ctrl_handler* %771, i32* null, i32 0)
  %773 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %774 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %775 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %773, %struct.v4l2_ctrl_handler* %774, i32* null, i32 0)
  %776 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %777 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %778 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %776, %struct.v4l2_ctrl_handler* %777, i32* null, i32 0)
  %779 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %780 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %781 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %779, %struct.v4l2_ctrl_handler* %780, i32* null, i32 0)
  %782 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %783 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %20, align 8
  %784 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %782, %struct.v4l2_ctrl_handler* %783, i32* null, i32 0)
  %785 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %786 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 4
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %793

789:                                              ; preds = %763
  %790 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %791 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  store i32 %792, i32* %7, align 4
  br label %961

793:                                              ; preds = %763
  %794 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %21, align 8
  %795 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %796 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %795, i32 0, i32 13
  %797 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %796, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %794, %struct.v4l2_ctrl_handler** %797, align 8
  br label %798

798:                                              ; preds = %793, %758
  %799 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %800 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %799, i32 0, i32 12
  %801 = load i64, i64* %800, align 8
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %803, label %829

803:                                              ; preds = %798
  %804 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %805 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %806 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %804, %struct.v4l2_ctrl_handler* %805, i32* null, i32 0)
  %807 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %808 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %809 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %807, %struct.v4l2_ctrl_handler* %808, i32* null, i32 0)
  %810 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %811 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %812 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %810, %struct.v4l2_ctrl_handler* %811, i32* null, i32 0)
  %813 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %814 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %20, align 8
  %815 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %813, %struct.v4l2_ctrl_handler* %814, i32* null, i32 0)
  %816 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %817 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %816, i32 0, i32 0
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %824

820:                                              ; preds = %803
  %821 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %822 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 4
  store i32 %823, i32* %7, align 4
  br label %961

824:                                              ; preds = %803
  %825 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %22, align 8
  %826 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %827 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %826, i32 0, i32 11
  %828 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %827, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %825, %struct.v4l2_ctrl_handler** %828, align 8
  br label %829

829:                                              ; preds = %824, %798
  %830 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %831 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %830, i32 0, i32 10
  %832 = load i64, i64* %831, align 8
  %833 = icmp ne i64 %832, 0
  br i1 %833, label %834, label %860

834:                                              ; preds = %829
  %835 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %836 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %837 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %835, %struct.v4l2_ctrl_handler* %836, i32* null, i32 0)
  %838 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %839 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %840 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %838, %struct.v4l2_ctrl_handler* %839, i32* null, i32 0)
  %841 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %842 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %843 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %841, %struct.v4l2_ctrl_handler* %842, i32* null, i32 0)
  %844 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %845 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %19, align 8
  %846 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %844, %struct.v4l2_ctrl_handler* %845, i32* null, i32 0)
  %847 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %848 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 4
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %855

851:                                              ; preds = %834
  %852 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %853 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %852, i32 0, i32 0
  %854 = load i32, i32* %853, align 4
  store i32 %854, i32* %7, align 4
  br label %961

855:                                              ; preds = %834
  %856 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %23, align 8
  %857 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %858 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %857, i32 0, i32 9
  %859 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %858, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %856, %struct.v4l2_ctrl_handler** %859, align 8
  br label %860

860:                                              ; preds = %855, %829
  %861 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %862 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %861, i32 0, i32 8
  %863 = load i64, i64* %862, align 8
  %864 = icmp ne i64 %863, 0
  br i1 %864, label %865, label %885

865:                                              ; preds = %860
  %866 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %867 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %868 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %866, %struct.v4l2_ctrl_handler* %867, i32* null, i32 0)
  %869 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %870 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %871 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %869, %struct.v4l2_ctrl_handler* %870, i32* null, i32 0)
  %872 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %873 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %880

876:                                              ; preds = %865
  %877 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %878 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 4
  store i32 %879, i32* %7, align 4
  br label %961

880:                                              ; preds = %865
  %881 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %882 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %883 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %882, i32 0, i32 7
  %884 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %883, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %881, %struct.v4l2_ctrl_handler** %884, align 8
  br label %885

885:                                              ; preds = %880, %860
  %886 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %887 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %886, i32 0, i32 6
  %888 = load i64, i64* %887, align 8
  %889 = icmp ne i64 %888, 0
  br i1 %889, label %890, label %910

890:                                              ; preds = %885
  %891 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %892 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %893 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %891, %struct.v4l2_ctrl_handler* %892, i32* null, i32 0)
  %894 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %895 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %896 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %894, %struct.v4l2_ctrl_handler* %895, i32* null, i32 0)
  %897 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %898 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %901, label %905

901:                                              ; preds = %890
  %902 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %903 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %902, i32 0, i32 0
  %904 = load i32, i32* %903, align 4
  store i32 %904, i32* %7, align 4
  br label %961

905:                                              ; preds = %890
  %906 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %25, align 8
  %907 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %908 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %908, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %906, %struct.v4l2_ctrl_handler** %909, align 8
  br label %910

910:                                              ; preds = %905, %885
  %911 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %912 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %911, i32 0, i32 4
  %913 = load i64, i64* %912, align 8
  %914 = icmp ne i64 %913, 0
  br i1 %914, label %915, label %935

915:                                              ; preds = %910
  %916 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %917 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %918 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %916, %struct.v4l2_ctrl_handler* %917, i32* null, i32 0)
  %919 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %920 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %16, align 8
  %921 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %919, %struct.v4l2_ctrl_handler* %920, i32* null, i32 0)
  %922 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %923 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %930

926:                                              ; preds = %915
  %927 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %928 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %927, i32 0, i32 0
  %929 = load i32, i32* %928, align 4
  store i32 %929, i32* %7, align 4
  br label %961

930:                                              ; preds = %915
  %931 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %26, align 8
  %932 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %933 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %932, i32 0, i32 3
  %934 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %933, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %931, %struct.v4l2_ctrl_handler** %934, align 8
  br label %935

935:                                              ; preds = %930, %910
  %936 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %937 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %936, i32 0, i32 2
  %938 = load i64, i64* %937, align 8
  %939 = icmp ne i64 %938, 0
  br i1 %939, label %940, label %960

940:                                              ; preds = %935
  %941 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %942 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %943 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %941, %struct.v4l2_ctrl_handler* %942, i32* null, i32 0)
  %944 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %945 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %17, align 8
  %946 = call i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler* %944, %struct.v4l2_ctrl_handler* %945, i32* null, i32 0)
  %947 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %948 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %947, i32 0, i32 0
  %949 = load i32, i32* %948, align 4
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %955

951:                                              ; preds = %940
  %952 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %953 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 4
  store i32 %954, i32* %7, align 4
  br label %961

955:                                              ; preds = %940
  %956 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %27, align 8
  %957 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %958 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %957, i32 0, i32 1
  %959 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %958, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %956, %struct.v4l2_ctrl_handler** %959, align 8
  br label %960

960:                                              ; preds = %955, %935
  store i32 0, i32* %7, align 4
  br label %961

961:                                              ; preds = %960, %951, %926, %901, %876, %851, %820, %789, %745, %736, %727, %718, %709, %700
  %962 = load i32, i32* %7, align 4
  ret i32 %962
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_config*, i32*) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_string(i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_add_handler(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
