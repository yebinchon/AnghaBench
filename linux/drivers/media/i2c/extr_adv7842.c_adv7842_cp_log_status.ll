; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_cp_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_cp_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_state = type { i32, i8**, i64, %struct.v4l2_dv_timings, i64, i64 }
%struct.v4l2_dv_timings = type { i32 }

@adv7842_cp_log_status.csc_coeff_sel_rb = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"YPbPr601 -> RGB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"YPbPr709 -> RGB\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr601\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr709\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"YPbPr709 -> YPbPr601\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"YPbPr601 -> YPbPr709\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@adv7842_cp_log_status.input_color_space_txt = internal constant [16 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)], align 16
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
@adv7842_cp_log_status.rgb_quantization_range_txt = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@adv7842_cp_log_status.deep_color_mode_txt = internal constant [4 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.20 = private unnamed_addr constant [19 x i8] c"8-bits per channel\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"10-bits per channel\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"12-bits per channel\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"16-bits per channel (not supported)\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"-----Chip status-----\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Chip power: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"HDMI/DVI-D port selected: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"EDID A %s, B %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"HPD A %s, B %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"CEC: %s\0A\00", align 1
@ADV7842_MAX_ADDRS = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [27 x i8] c"CEC Logical Address: 0x%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"-----Signal status-----\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Cable detected (+5V power): %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"TMDS signal detected: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"TMDS signal locked: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Cable detected (+5V power):%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"CP free run: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"-----Video Timings-----\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"STDI: not locked\0A\00", align 1
@.str.48 = private unnamed_addr constant [95 x i8] c"STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, fcl = %d, %s, %chsync, %cvsync\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"No video detected\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"Detected format: \00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Configured format: \00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"-----Color space-----\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"RGB quantization range ctrl: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Input color space: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"Output color space: %s %s, alt-gamma %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"(16-235)\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"(0-255)\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Color space conversion: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"-----%s status-----\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"HDCP encrypted content: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"HDCP keys read: %s%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.71 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"Audio: pll %s, samples %s, %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"not locked\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"not detected\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"Audio format: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"multi-channel\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Audio CTS: %u\0A\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"Audio N: %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"AV Mute: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"Deep color mode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_cp_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_cp_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7842_state*, align 8
  %5 = alloca %struct.v4l2_dv_timings, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %21)
  store %struct.adv7842_state* %22, %struct.adv7842_state** %4, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = call i32 @io_read(%struct.v4l2_subdev* %23, i32 2)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = call i32 @io_read(%struct.v4l2_subdev* %25, i32 33)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = call i32 @rep_read(%struct.v4l2_subdev* %27, i32 119)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = call i32 @rep_read(%struct.v4l2_subdev* %29, i32 125)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = call i32 @hdmi_read(%struct.v4l2_subdev* %31, i32 4)
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = call i32 @hdmi_read(%struct.v4l2_subdev* %34, i32 24)
  %36 = and i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = call i32 @io_read(%struct.v4l2_subdev* %37, i32 101)
  %39 = and i32 %38, 64
  store i32 %39, i32* %12, align 4
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %44 = call i64 @no_power(%struct.v4l2_subdev* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)
  %48 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %51 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %56 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %61, %1
  %66 = phi i1 [ false, %1 ], [ %64, %61 ]
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 8
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i1 [ false, %65 ], [ %75, %72 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %80 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* %68, i8* %79)
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %92 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* %86, i8* %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %95 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %100 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* %99)
  %101 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %102 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %76
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @ADV7842_MAX_ADDRS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  %111 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %112 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %121 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %122 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %119, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %106

133:                                              ; preds = %106
  br label %134

134:                                              ; preds = %133, %76
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %136 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0))
  %137 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %138 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %134
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %144 = call i32 @io_read(%struct.v4l2_subdev* %143, i32 111)
  %145 = and i32 %144, 2
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %149 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8* %148)
  %150 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %152 = call i32 @io_read(%struct.v4l2_subdev* %151, i32 106)
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %157 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i8* %156)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %160 = call i32 @io_read(%struct.v4l2_subdev* %159, i32 106)
  %161 = and i32 %160, 32
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %165 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), i8* %164)
  br label %191

166:                                              ; preds = %134
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %169 = call i32 @io_read(%struct.v4l2_subdev* %168, i32 111)
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %174 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i8* %173)
  %175 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %176 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %177 = call i32 @io_read(%struct.v4l2_subdev* %176, i32 106)
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %182 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i8* %181)
  %183 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %185 = call i32 @io_read(%struct.v4l2_subdev* %184, i32 106)
  %186 = and i32 %185, 16
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %190 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %166, %141
  %192 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %193 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %194 = call i32 @cp_read(%struct.v4l2_subdev* %193, i32 255)
  %195 = and i32 %194, 16
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %201 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i8* %200)
  %202 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %203 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %204 = call i32 @io_read(%struct.v4l2_subdev* %203, i32 1)
  %205 = and i32 %204, 15
  %206 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %207 = call i32 @io_read(%struct.v4l2_subdev* %206, i32 0)
  %208 = and i32 %207, 63
  %209 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %210 = call i32 @io_read(%struct.v4l2_subdev* %209, i32 1)
  %211 = and i32 %210, 112
  %212 = ashr i32 %211, 4
  %213 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %202, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 %205, i32 %208, i32 %212)
  %214 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %215 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  %216 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %217 = call i64 @no_cp_signal(%struct.v4l2_subdev* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %191
  %220 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %221 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0))
  br label %293

222:                                              ; preds = %191
  %223 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %224 = call i32 @cp_read(%struct.v4l2_subdev* %223, i32 177)
  %225 = and i32 %224, 63
  %226 = shl i32 %225, 8
  %227 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %228 = call i32 @cp_read(%struct.v4l2_subdev* %227, i32 178)
  %229 = or i32 %226, %228
  store i32 %229, i32* %15, align 4
  %230 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %231 = call i32 @cp_read(%struct.v4l2_subdev* %230, i32 179)
  %232 = and i32 %231, 7
  %233 = shl i32 %232, 8
  %234 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %235 = call i32 @cp_read(%struct.v4l2_subdev* %234, i32 180)
  %236 = or i32 %233, %235
  store i32 %236, i32* %16, align 4
  %237 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %238 = call i32 @cp_read(%struct.v4l2_subdev* %237, i32 179)
  %239 = ashr i32 %238, 3
  store i32 %239, i32* %17, align 4
  %240 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %241 = call i32 @cp_read(%struct.v4l2_subdev* %240, i32 184)
  %242 = and i32 %241, 31
  %243 = shl i32 %242, 8
  %244 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %245 = call i32 @cp_read(%struct.v4l2_subdev* %244, i32 185)
  %246 = or i32 %243, %245
  store i32 %246, i32* %18, align 4
  %247 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %248 = call i32 @cp_read(%struct.v4l2_subdev* %247, i32 181)
  %249 = and i32 %248, 16
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %222
  %252 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %253 = call i32 @cp_read(%struct.v4l2_subdev* %252, i32 181)
  %254 = and i32 %253, 8
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 43, i32 45
  br label %259

258:                                              ; preds = %222
  br label %259

259:                                              ; preds = %258, %251
  %260 = phi i32 [ %257, %251 ], [ 120, %258 ]
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %19, align 1
  %262 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %263 = call i32 @cp_read(%struct.v4l2_subdev* %262, i32 181)
  %264 = and i32 %263, 64
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %268 = call i32 @cp_read(%struct.v4l2_subdev* %267, i32 181)
  %269 = and i32 %268, 32
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 43, i32 45
  br label %274

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %266
  %275 = phi i32 [ %272, %266 ], [ 120, %273 ]
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %20, align 1
  %277 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %18, align 4
  %282 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %283 = call i32 @cp_read(%struct.v4l2_subdev* %282, i32 177)
  %284 = and i32 %283, 64
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)
  %288 = load i8, i8* %19, align 1
  %289 = sext i8 %288 to i32
  %290 = load i8, i8* %20, align 1
  %291 = sext i8 %290 to i32
  %292 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %277, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.48, i64 0, i64 0), i32 %278, i32 %279, i32 %280, i32 %281, i8* %287, i32 %289, i32 %291)
  br label %293

293:                                              ; preds = %274, %219
  %294 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %295 = call i64 @adv7842_query_dv_timings(%struct.v4l2_subdev* %294, %struct.v4l2_dv_timings* %5)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %299 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0))
  br label %305

300:                                              ; preds = %293
  %301 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %302 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @v4l2_print_dv_timings(i32 %303, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), %struct.v4l2_dv_timings* %5, i32 1)
  br label %305

305:                                              ; preds = %300, %297
  %306 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %307 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %310 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %309, i32 0, i32 3
  %311 = call i32 @v4l2_print_dv_timings(i32 %308, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), %struct.v4l2_dv_timings* %310, i32 1)
  %312 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %313 = call i64 @no_cp_signal(%struct.v4l2_subdev* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %305
  store i32 0, i32* %2, align 4
  br label %474

316:                                              ; preds = %305
  %317 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %318 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %317, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0))
  %319 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %320 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %321 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds [3 x i8*], [3 x i8*]* @adv7842_cp_log_status.rgb_quantization_range_txt, i64 0, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %319, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i8* %324)
  %326 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %327 = load i32, i32* %6, align 4
  %328 = ashr i32 %327, 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv7842_cp_log_status.input_color_space_txt, i64 0, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i8* %331)
  %333 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %334 = load i32, i32* %6, align 4
  %335 = and i32 %334, 2
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0)
  %339 = load i32, i32* %6, align 4
  %340 = ashr i32 %339, 2
  %341 = and i32 %340, 1
  %342 = load i32, i32* %6, align 4
  %343 = and i32 %342, 1
  %344 = xor i32 %341, %343
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)
  %348 = load i32, i32* %6, align 4
  %349 = and i32 %348, 8
  %350 = icmp ne i32 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  %353 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %333, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0), i8* %338, i8* %347, i8* %352)
  %354 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %355 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %356 = call i32 @cp_read(%struct.v4l2_subdev* %355, i32 244)
  %357 = ashr i32 %356, 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv7842_cp_log_status.csc_coeff_sel_rb, i64 0, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %354, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0), i8* %360)
  %362 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %363 = call i32 @is_digital_input(%struct.v4l2_subdev* %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %316
  store i32 0, i32* %2, align 4
  br label %474

366:                                              ; preds = %316
  %367 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %368 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %369 = call i64 @is_hdmi(%struct.v4l2_subdev* %368)
  %370 = icmp ne i64 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)
  %373 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %367, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), i8* %372)
  %374 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %375 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %376 = call i32 @hdmi_read(%struct.v4l2_subdev* %375, i32 5)
  %377 = and i32 %376, 64
  %378 = icmp ne i32 %377, 0
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)
  %381 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %374, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i8* %380)
  %382 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %383 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %384 = call i32 @hdmi_read(%struct.v4l2_subdev* %383, i32 4)
  %385 = and i32 %384, 32
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0)
  %389 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %390 = call i32 @hdmi_read(%struct.v4l2_subdev* %389, i32 4)
  %391 = and i32 %390, 16
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.71, i64 0, i64 0)
  %395 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %382, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i8* %388, i8* %394)
  %396 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %397 = call i64 @is_hdmi(%struct.v4l2_subdev* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %366
  store i32 0, i32* %2, align 4
  br label %474

400:                                              ; preds = %366
  %401 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %402 = load i32, i32* %10, align 4
  %403 = icmp ne i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0)
  %406 = load i32, i32* %11, align 4
  %407 = icmp ne i32 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0)
  %410 = load i32, i32* %12, align 4
  %411 = icmp ne i32 %410, 0
  %412 = zext i1 %411 to i64
  %413 = select i1 %411, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)
  %414 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %401, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0), i8* %405, i8* %409, i8* %413)
  %415 = load i32, i32* %10, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %429

417:                                              ; preds = %400
  %418 = load i32, i32* %11, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %417
  %421 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %422 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %423 = call i32 @hdmi_read(%struct.v4l2_subdev* %422, i32 7)
  %424 = and i32 %423, 64
  %425 = icmp ne i32 %424, 0
  %426 = zext i1 %425 to i64
  %427 = select i1 %425, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0)
  %428 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %421, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i8* %427)
  br label %429

429:                                              ; preds = %420, %417, %400
  %430 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %431 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %432 = call i32 @hdmi_read(%struct.v4l2_subdev* %431, i32 91)
  %433 = shl i32 %432, 12
  %434 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %435 = call i32 @hdmi_read(%struct.v4l2_subdev* %434, i32 92)
  %436 = shl i32 %435, 8
  %437 = add nsw i32 %433, %436
  %438 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %439 = call i32 @hdmi_read(%struct.v4l2_subdev* %438, i32 93)
  %440 = and i32 %439, 240
  %441 = add nsw i32 %437, %440
  %442 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %430, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i32 %441)
  %443 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %444 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %445 = call i32 @hdmi_read(%struct.v4l2_subdev* %444, i32 93)
  %446 = and i32 %445, 15
  %447 = shl i32 %446, 16
  %448 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %449 = call i32 @hdmi_read(%struct.v4l2_subdev* %448, i32 94)
  %450 = shl i32 %449, 8
  %451 = add nsw i32 %447, %450
  %452 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %453 = call i32 @hdmi_read(%struct.v4l2_subdev* %452, i32 95)
  %454 = add nsw i32 %451, %453
  %455 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %443, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i32 %454)
  %456 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %457 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %458 = call i32 @hdmi_read(%struct.v4l2_subdev* %457, i32 4)
  %459 = and i32 %458, 64
  %460 = icmp ne i32 %459, 0
  %461 = zext i1 %460 to i64
  %462 = select i1 %460, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %463 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i8* %462)
  %464 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %465 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %466 = call i32 @hdmi_read(%struct.v4l2_subdev* %465, i32 11)
  %467 = ashr i32 %466, 6
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x i8*], [4 x i8*]* @adv7842_cp_log_status.deep_color_mode_txt, i64 0, i64 %468
  %470 = load i8*, i8** %469, align 8
  %471 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0), i8* %470)
  %472 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %473 = call i32 @adv7842_log_infoframes(%struct.v4l2_subdev* %472)
  store i32 0, i32* %2, align 4
  br label %474

474:                                              ; preds = %429, %399, %365, %315
  %475 = load i32, i32* %2, align 4
  ret i32 %475
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @rep_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @hdmi_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i64 @no_power(%struct.v4l2_subdev*) #1

declare dso_local i32 @cp_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i64 @no_cp_signal(%struct.v4l2_subdev*) #1

declare dso_local i64 @adv7842_query_dv_timings(%struct.v4l2_subdev*, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, %struct.v4l2_dv_timings*, i32) #1

declare dso_local i32 @is_digital_input(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_hdmi(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_log_infoframes(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
