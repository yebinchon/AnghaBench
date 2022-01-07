; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { i32, i8**, i64, %struct.v4l2_dv_timings, i64, %struct.adv76xx_chip_info* }
%struct.v4l2_dv_timings = type { i32 }
%struct.adv76xx_chip_info = type { i32 (%struct.v4l2_subdev*)*, i32, i32 }
%struct.stdi_readback = type { i32, i32, i64, i32, i32, i32 }

@adv76xx_log_status.csc_coeff_sel_rb = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"YPbPr601 -> RGB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"YPbPr709 -> RGB\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr601\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr709\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"YPbPr709 -> YPbPr601\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"YPbPr601 -> YPbPr709\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@adv76xx_log_status.input_color_space_txt = internal constant [16 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [27 x i8] c"RGB limited range (16-235)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"RGB full range (0-255)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"YCbCr Bt.601 (16-235)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"YCbCr Bt.709 (16-235)\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"xvYCC Bt.601\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"xvYCC Bt.709\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"YCbCr Bt.601 (0-255)\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"YCbCr Bt.709 (0-255)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@adv76xx_log_status.hdmi_color_space_txt = internal constant [16 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"sYCC\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"opYCC 601\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"opRGB\00", align 1
@adv76xx_log_status.rgb_quantization_range_txt = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@adv76xx_log_status.deep_color_mode_txt = internal constant [4 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [19 x i8] c"8-bits per channel\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"10-bits per channel\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"12-bits per channel\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"16-bits per channel (not supported)\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"-----Chip status-----\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Chip power: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"EDID enabled port A: %s, B: %s, C: %s, D: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"CEC: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ADV76XX_MAX_ADDRS = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [27 x i8] c"CEC Logical Address: 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"-----Signal status-----\0A\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"Cable detected (+5V power) port A: %s, B: %s, C: %s, D: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"TMDS signal detected: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"TMDS signal locked: %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"SSPD locked: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"STDI locked: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"CP locked: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"CP free run: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"-----Video Timings-----\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"STDI: not locked\0A\00", align 1
@.str.51 = private unnamed_addr constant [85 x i8] c"STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, %s, %chsync, %cvsync\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"No video detected\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Detected format: \00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Configured format: \00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"-----Color space-----\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"RGB quantization range ctrl: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Input color space: %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"Output color space: %s %s, alt-gamma %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"(16-235)\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"(0-255)\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"Color space conversion: %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"-----%s status-----\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"Digital video port selected: %c\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"HDCP encrypted content: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"HDCP keys read: %s%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Audio: pll %s, samples %s, %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"not locked\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"not detected\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Audio format: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"multi-channel\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"Audio CTS: %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"Audio N: %u\0A\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"AV Mute: %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"Deep color mode: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"HDMI colorspace: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv76xx_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv76xx_state*, align 8
  %5 = alloca %struct.adv76xx_chip_info*, align 8
  %6 = alloca %struct.v4l2_dv_timings, align 4
  %7 = alloca %struct.stdi_readback, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %16)
  store %struct.adv76xx_state* %17, %struct.adv76xx_state** %4, align 8
  %18 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %19 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %18, i32 0, i32 5
  %20 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %19, align 8
  store %struct.adv76xx_chip_info* %20, %struct.adv76xx_chip_info** %5, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call i32 @io_read(%struct.v4l2_subdev* %21, i32 2)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i64 @no_power(%struct.v4l2_subdev* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)
  %31 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %30)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %5, align 8
  %34 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rep_read(%struct.v4l2_subdev* %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 8
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %58 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i8* %42, i8* %47, i8* %52, i8* %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %61 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)
  %66 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* %65)
  %67 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %68 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ADV76XX_MAX_ADDRS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %78 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %87 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %88 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %85, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %72

99:                                               ; preds = %72
  br label %100

100:                                              ; preds = %99, %1
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %102 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0))
  %103 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %5, align 8
  %104 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %103, i32 0, i32 0
  %105 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %104, align 8
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %107 = call i32 %105(%struct.v4l2_subdev* %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 8
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %129 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %108, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.39, i64 0, i64 0), i8* %113, i8* %118, i8* %123, i8* %128)
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %132 = call i64 @no_signal_tmds(%struct.v4l2_subdev* %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %136 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i8* %135)
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %139 = call i64 @no_lock_tmds(%struct.v4l2_subdev* %138)
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %143 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i8* %142)
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %146 = call i64 @no_lock_sspd(%struct.v4l2_subdev* %145)
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %150 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i8* %149)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %153 = call i64 @no_lock_stdi(%struct.v4l2_subdev* %152)
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %157 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i8* %156)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %160 = call i64 @no_lock_cp(%struct.v4l2_subdev* %159)
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  %164 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i8* %163)
  %165 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %167 = call i64 @in_free_run(%struct.v4l2_subdev* %166)
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %171 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* %170)
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %173 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %174 = call i32 @io_read(%struct.v4l2_subdev* %173, i32 1)
  %175 = and i32 %174, 15
  %176 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %177 = call i32 @io_read(%struct.v4l2_subdev* %176, i32 0)
  %178 = and i32 %177, 63
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %180 = call i32 @io_read(%struct.v4l2_subdev* %179, i32 1)
  %181 = and i32 %180, 112
  %182 = ashr i32 %181, 4
  %183 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %172, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 %175, i32 %178, i32 %182)
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %185 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0))
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %187 = call i64 @read_stdi(%struct.v4l2_subdev* %186, %struct.stdi_readback* %7)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %100
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %191 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0))
  br label %210

192:                                              ; preds = %100
  %193 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %194 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)
  %205 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.stdi_readback, %struct.stdi_readback* %7, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %193, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.51, i64 0, i64 0), i32 %195, i32 %197, i32 %199, i8* %204, i32 %206, i32 %208)
  br label %210

210:                                              ; preds = %192, %189
  %211 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %212 = call i64 @adv76xx_query_dv_timings(%struct.v4l2_subdev* %211, %struct.v4l2_dv_timings* %6)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %216 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0))
  br label %222

217:                                              ; preds = %210
  %218 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %219 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @v4l2_print_dv_timings(i32 %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), %struct.v4l2_dv_timings* %6, i32 1)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %224 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %227 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %226, i32 0, i32 3
  %228 = call i32 @v4l2_print_dv_timings(i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0), %struct.v4l2_dv_timings* %227, i32 1)
  %229 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %230 = call i64 @no_signal(%struct.v4l2_subdev* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %418

233:                                              ; preds = %222
  %234 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %235 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0))
  %236 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %237 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %238 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds [3 x i8*], [3 x i8*]* @adv76xx_log_status.rgb_quantization_range_txt, i64 0, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i8* %241)
  %243 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %244 = load i32, i32* %8, align 4
  %245 = ashr i32 %244, 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv76xx_log_status.input_color_space_txt, i64 0, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), i8* %248)
  %250 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %251 = load i32, i32* %8, align 4
  %252 = and i32 %251, 2
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)
  %256 = load i32, i32* %8, align 4
  %257 = ashr i32 %256, 2
  %258 = and i32 %257, 1
  %259 = load i32, i32* %8, align 4
  %260 = and i32 %259, 1
  %261 = xor i32 %258, %260
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0)
  %265 = load i32, i32* %8, align 4
  %266 = and i32 %265, 8
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0)
  %270 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0), i8* %255, i8* %264, i8* %269)
  %271 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %272 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %273 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %5, align 8
  %274 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @cp_read(%struct.v4l2_subdev* %272, i32 %275)
  %277 = ashr i32 %276, 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv76xx_log_status.csc_coeff_sel_rb, i64 0, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %271, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i8* %280)
  %282 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %283 = call i32 @is_digital_input(%struct.v4l2_subdev* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %418

286:                                              ; preds = %233
  %287 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %288 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %289 = call i64 @is_hdmi(%struct.v4l2_subdev* %288)
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0)
  %293 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %287, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i8* %292)
  %294 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %295 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %296 = call i32 @hdmi_read(%struct.v4l2_subdev* %295, i32 0)
  %297 = and i32 %296, 3
  %298 = add nsw i32 %297, 65
  %299 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0), i32 %298)
  %300 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %301 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %302 = call i32 @hdmi_read(%struct.v4l2_subdev* %301, i32 5)
  %303 = and i32 %302, 64
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)
  %307 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %300, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i8* %306)
  %308 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %309 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %310 = call i32 @hdmi_read(%struct.v4l2_subdev* %309, i32 4)
  %311 = and i32 %310, 32
  %312 = icmp ne i32 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)
  %315 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %316 = call i32 @hdmi_read(%struct.v4l2_subdev* %315, i32 4)
  %317 = and i32 %316, 16
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0)
  %321 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %308, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0), i8* %314, i8* %320)
  %322 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %323 = call i64 @is_hdmi(%struct.v4l2_subdev* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %417

325:                                              ; preds = %286
  %326 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %327 = call i32 @hdmi_read(%struct.v4l2_subdev* %326, i32 4)
  %328 = and i32 %327, 1
  store i32 %328, i32* %13, align 4
  %329 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %330 = call i32 @hdmi_read(%struct.v4l2_subdev* %329, i32 24)
  %331 = and i32 %330, 1
  store i32 %331, i32* %14, align 4
  %332 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %333 = call i32 @io_read(%struct.v4l2_subdev* %332, i32 101)
  %334 = and i32 %333, 64
  store i32 %334, i32* %15, align 4
  %335 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %336 = load i32, i32* %13, align 4
  %337 = icmp ne i32 %336, 0
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0)
  %340 = load i32, i32* %14, align 4
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0)
  %344 = load i32, i32* %15, align 4
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0)
  %348 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %335, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0), i8* %339, i8* %343, i8* %347)
  %349 = load i32, i32* %13, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %325
  %352 = load i32, i32* %14, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %351
  %355 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %356 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %357 = call i32 @hdmi_read(%struct.v4l2_subdev* %356, i32 7)
  %358 = and i32 %357, 32
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)
  %362 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %355, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i8* %361)
  br label %363

363:                                              ; preds = %354, %351, %325
  %364 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %365 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %366 = call i32 @hdmi_read(%struct.v4l2_subdev* %365, i32 91)
  %367 = shl i32 %366, 12
  %368 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %369 = call i32 @hdmi_read(%struct.v4l2_subdev* %368, i32 92)
  %370 = shl i32 %369, 8
  %371 = add nsw i32 %367, %370
  %372 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %373 = call i32 @hdmi_read(%struct.v4l2_subdev* %372, i32 93)
  %374 = and i32 %373, 240
  %375 = add nsw i32 %371, %374
  %376 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %364, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i64 0, i64 0), i32 %375)
  %377 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %378 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %379 = call i32 @hdmi_read(%struct.v4l2_subdev* %378, i32 93)
  %380 = and i32 %379, 15
  %381 = shl i32 %380, 16
  %382 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %383 = call i32 @hdmi_read(%struct.v4l2_subdev* %382, i32 94)
  %384 = shl i32 %383, 8
  %385 = add nsw i32 %381, %384
  %386 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %387 = call i32 @hdmi_read(%struct.v4l2_subdev* %386, i32 95)
  %388 = add nsw i32 %385, %387
  %389 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %377, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i64 0, i64 0), i32 %388)
  %390 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %391 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %392 = call i32 @hdmi_read(%struct.v4l2_subdev* %391, i32 4)
  %393 = and i32 %392, 64
  %394 = icmp ne i32 %393, 0
  %395 = zext i1 %394 to i64
  %396 = select i1 %394, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %397 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %390, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i64 0, i64 0), i8* %396)
  %398 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %399 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %400 = call i32 @hdmi_read(%struct.v4l2_subdev* %399, i32 11)
  %401 = and i32 %400, 96
  %402 = ashr i32 %401, 5
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [4 x i8*], [4 x i8*]* @adv76xx_log_status.deep_color_mode_txt, i64 0, i64 %403
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %398, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* %405)
  %407 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %408 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %409 = call i32 @hdmi_read(%struct.v4l2_subdev* %408, i32 83)
  %410 = and i32 %409, 15
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv76xx_log_status.hdmi_color_space_txt, i64 0, i64 %411
  %413 = load i8*, i8** %412, align 8
  %414 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %407, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i64 0, i64 0), i8* %413)
  %415 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %416 = call i32 @adv76xx_log_infoframes(%struct.v4l2_subdev* %415)
  br label %417

417:                                              ; preds = %363, %286
  store i32 0, i32* %2, align 4
  br label %418

418:                                              ; preds = %417, %285, %232
  %419 = load i32, i32* %2, align 4
  ret i32 %419
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i64 @no_power(%struct.v4l2_subdev*) #1

declare dso_local i32 @rep_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i64 @no_signal_tmds(%struct.v4l2_subdev*) #1

declare dso_local i64 @no_lock_tmds(%struct.v4l2_subdev*) #1

declare dso_local i64 @no_lock_sspd(%struct.v4l2_subdev*) #1

declare dso_local i64 @no_lock_stdi(%struct.v4l2_subdev*) #1

declare dso_local i64 @no_lock_cp(%struct.v4l2_subdev*) #1

declare dso_local i64 @in_free_run(%struct.v4l2_subdev*) #1

declare dso_local i64 @read_stdi(%struct.v4l2_subdev*, %struct.stdi_readback*) #1

declare dso_local i64 @adv76xx_query_dv_timings(%struct.v4l2_subdev*, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, %struct.v4l2_dv_timings*, i32) #1

declare dso_local i64 @no_signal(%struct.v4l2_subdev*) #1

declare dso_local i32 @cp_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @is_digital_input(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_hdmi(%struct.v4l2_subdev*) #1

declare dso_local i32 @hdmi_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv76xx_log_infoframes(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
