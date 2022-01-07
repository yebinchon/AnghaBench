; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"tvp5150: Video input source selection #1 = 0x%02x\0A\00", align 1
@TVP5150_VD_IN_SRC_SEL_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"tvp5150: Analog channel controls = 0x%02x\0A\00", align 1
@TVP5150_ANAL_CHL_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"tvp5150: Operation mode controls = 0x%02x\0A\00", align 1
@TVP5150_OP_MODE_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"tvp5150: Miscellaneous controls = 0x%02x\0A\00", align 1
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"tvp5150: Autoswitch mask= 0x%02x\0A\00", align 1
@TVP5150_AUTOSW_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"tvp5150: Color killer threshold control = 0x%02x\0A\00", align 1
@TVP5150_COLOR_KIL_THSH_CTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"tvp5150: Luminance processing controls #1 #2 and #3 = %02x %02x %02x\0A\00", align 1
@TVP5150_LUMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_LUMA_PROC_CTL_2 = common dso_local global i32 0, align 4
@TVP5150_LUMA_PROC_CTL_3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"tvp5150: Brightness control = 0x%02x\0A\00", align 1
@TVP5150_BRIGHT_CTL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"tvp5150: Color saturation control = 0x%02x\0A\00", align 1
@TVP5150_SATURATION_CTL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"tvp5150: Hue control = 0x%02x\0A\00", align 1
@TVP5150_HUE_CTL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"tvp5150: Contrast control = 0x%02x\0A\00", align 1
@TVP5150_CONTRAST_CTL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"tvp5150: Outputs and data rates select = 0x%02x\0A\00", align 1
@TVP5150_DATA_RATE_SEL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"tvp5150: Configuration shared pins = 0x%02x\0A\00", align 1
@TVP5150_CONF_SHARED_PIN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"tvp5150: Active video cropping start = 0x%02x%02x\0A\00", align 1
@TVP5150_ACT_VD_CROP_ST_MSB = common dso_local global i32 0, align 4
@TVP5150_ACT_VD_CROP_ST_LSB = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [51 x i8] c"tvp5150: Active video cropping stop  = 0x%02x%02x\0A\00", align 1
@TVP5150_ACT_VD_CROP_STP_MSB = common dso_local global i32 0, align 4
@TVP5150_ACT_VD_CROP_STP_LSB = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"tvp5150: Genlock/RTC = 0x%02x\0A\00", align 1
@TVP5150_GENLOCK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"tvp5150: Horizontal sync start = 0x%02x\0A\00", align 1
@TVP5150_HORIZ_SYNC_START = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"tvp5150: Vertical blanking start = 0x%02x\0A\00", align 1
@TVP5150_VERT_BLANKING_START = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"tvp5150: Vertical blanking stop = 0x%02x\0A\00", align 1
@TVP5150_VERT_BLANKING_STOP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [63 x i8] c"tvp5150: Chrominance processing control #1 and #2 = %02x %02x\0A\00", align 1
@TVP5150_CHROMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_CHROMA_PROC_CTL_2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [46 x i8] c"tvp5150: Interrupt reset register B = 0x%02x\0A\00", align 1
@TVP5150_INT_RESET_REG_B = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt enable register B = 0x%02x\0A\00", align 1
@TVP5150_INT_ENABLE_REG_B = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"tvp5150: Interrupt configuration register B = 0x%02x\0A\00", align 1
@TVP5150_INTT_CONFIG_REG_B = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"tvp5150: Video standard = 0x%02x\0A\00", align 1
@TVP5150_VIDEO_STD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [50 x i8] c"tvp5150: Chroma gain factor: Cb=0x%02x Cr=0x%02x\0A\00", align 1
@TVP5150_CB_GAIN_FACT = common dso_local global i32 0, align 4
@TVP5150_CR_GAIN_FACTOR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"tvp5150: Macrovision on counter = 0x%02x\0A\00", align 1
@TVP5150_MACROVISION_ON_CTR = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [43 x i8] c"tvp5150: Macrovision off counter = 0x%02x\0A\00", align 1
@TVP5150_MACROVISION_OFF_CTR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [50 x i8] c"tvp5150: ITU-R BT.656.%d timing(TVP5150AM1 only)\0A\00", align 1
@TVP5150_REV_SELECT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"tvp5150: Device ID = %02x%02x\0A\00", align 1
@TVP5150_MSB_DEV_ID = common dso_local global i32 0, align 4
@TVP5150_LSB_DEV_ID = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"tvp5150: ROM version = (hex) %02x.%02x\0A\00", align 1
@TVP5150_ROM_MAJOR_VER = common dso_local global i32 0, align 4
@TVP5150_ROM_MINOR_VER = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [43 x i8] c"tvp5150: Vertical line count = 0x%02x%02x\0A\00", align 1
@TVP5150_VERT_LN_COUNT_MSB = common dso_local global i32 0, align 4
@TVP5150_VERT_LN_COUNT_LSB = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt status register B = 0x%02x\0A\00", align 1
@TVP5150_INT_STATUS_REG_B = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt active register B = 0x%02x\0A\00", align 1
@TVP5150_INT_ACTIVE_REG_B = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [58 x i8] c"tvp5150: Status regs #1 to #5 = %02x %02x %02x %02x %02x\0A\00", align 1
@TVP5150_STATUS_REG_1 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_2 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_3 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_4 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_5 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"Teletext filter 1\00", align 1
@TVP5150_TELETEXT_FIL1_INI = common dso_local global i32 0, align 4
@TVP5150_TELETEXT_FIL1_END = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [18 x i8] c"Teletext filter 2\00", align 1
@TVP5150_TELETEXT_FIL2_INI = common dso_local global i32 0, align 4
@TVP5150_TELETEXT_FIL2_END = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [42 x i8] c"tvp5150: Teletext filter enable = 0x%02x\0A\00", align 1
@TVP5150_TELETEXT_FIL_ENA = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt status register A = 0x%02x\0A\00", align 1
@TVP5150_INT_STATUS_REG_A = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt enable register A = 0x%02x\0A\00", align 1
@TVP5150_INT_ENABLE_REG_A = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [43 x i8] c"tvp5150: Interrupt configuration = 0x%02x\0A\00", align 1
@TVP5150_INT_CONF = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [39 x i8] c"tvp5150: VDP status register = 0x%02x\0A\00", align 1
@TVP5150_VDP_STATUS_REG = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [35 x i8] c"tvp5150: FIFO word count = 0x%02x\0A\00", align 1
@TVP5150_FIFO_WORD_COUNT = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [44 x i8] c"tvp5150: FIFO interrupt threshold = 0x%02x\0A\00", align 1
@TVP5150_FIFO_INT_THRESHOLD = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [30 x i8] c"tvp5150: FIFO reset = 0x%02x\0A\00", align 1
@TVP5150_FIFO_RESET = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [41 x i8] c"tvp5150: Line number interrupt = 0x%02x\0A\00", align 1
@TVP5150_LINE_NUMBER_INT = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [48 x i8] c"tvp5150: Pixel alignment register = 0x%02x%02x\0A\00", align 1
@TVP5150_PIX_ALIGN_REG_HIGH = common dso_local global i32 0, align 4
@TVP5150_PIX_ALIGN_REG_LOW = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [39 x i8] c"tvp5150: FIFO output control = 0x%02x\0A\00", align 1
@TVP5150_FIFO_OUT_CTRL = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [37 x i8] c"tvp5150: Full field enable = 0x%02x\0A\00", align 1
@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [44 x i8] c"tvp5150: Full field mode register = 0x%02x\0A\00", align 1
@TVP5150_FULL_FIELD_MODE_REG = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [10 x i8] c"CC   data\00", align 1
@TVP5150_CC_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_CC_DATA_END = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"WSS  data\00", align 1
@TVP5150_WSS_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_WSS_DATA_END = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"VPS  data\00", align 1
@TVP5150_VPS_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_VPS_DATA_END = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"VITC data\00", align 1
@TVP5150_VITC_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_VITC_DATA_END = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [10 x i8] c"Line mode\00", align 1
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tvp5150_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %3 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load i32, i32* @TVP5150_VD_IN_SRC_SEL_1, align 4
  %8 = call i32 @tvp5150_read(%struct.v4l2_subdev* %6, i32 %7)
  %9 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %14 = load i32, i32* @TVP5150_ANAL_CHL_CTL, align 4
  %15 = call i32 @tvp5150_read(%struct.v4l2_subdev* %13, i32 %14)
  %16 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load i32, i32* @TVP5150_OP_MODE_CTL, align 4
  %22 = call i32 @tvp5150_read(%struct.v4l2_subdev* %20, i32 %21)
  %23 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %29 = call i32 @tvp5150_read(%struct.v4l2_subdev* %27, i32 %28)
  %30 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %35 = load i32, i32* @TVP5150_AUTOSW_MSK, align 4
  %36 = call i32 @tvp5150_read(%struct.v4l2_subdev* %34, i32 %35)
  %37 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = load i32, i32* @TVP5150_COLOR_KIL_THSH_CTL, align 4
  %43 = call i32 @tvp5150_read(%struct.v4l2_subdev* %41, i32 %42)
  %44 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = load i32, i32* @TVP5150_LUMA_PROC_CTL_1, align 4
  %50 = call i32 @tvp5150_read(%struct.v4l2_subdev* %48, i32 %49)
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %52 = load i32, i32* @TVP5150_LUMA_PROC_CTL_2, align 4
  %53 = call i32 @tvp5150_read(%struct.v4l2_subdev* %51, i32 %52)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = load i32, i32* @TVP5150_LUMA_PROC_CTL_3, align 4
  %56 = call i32 @tvp5150_read(%struct.v4l2_subdev* %54, i32 %55)
  %57 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %47, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %53, i32 %56)
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %62 = load i32, i32* @TVP5150_BRIGHT_CTL, align 4
  %63 = call i32 @tvp5150_read(%struct.v4l2_subdev* %61, i32 %62)
  %64 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %69 = load i32, i32* @TVP5150_SATURATION_CTL, align 4
  %70 = call i32 @tvp5150_read(%struct.v4l2_subdev* %68, i32 %69)
  %71 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load i32, i32* @TVP5150_HUE_CTL, align 4
  %77 = call i32 @tvp5150_read(%struct.v4l2_subdev* %75, i32 %76)
  %78 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %83 = load i32, i32* @TVP5150_CONTRAST_CTL, align 4
  %84 = call i32 @tvp5150_read(%struct.v4l2_subdev* %82, i32 %83)
  %85 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %84)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %90 = load i32, i32* @TVP5150_DATA_RATE_SEL, align 4
  %91 = call i32 @tvp5150_read(%struct.v4l2_subdev* %89, i32 %90)
  %92 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %97 = load i32, i32* @TVP5150_CONF_SHARED_PIN, align 4
  %98 = call i32 @tvp5150_read(%struct.v4l2_subdev* %96, i32 %97)
  %99 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %104 = load i32, i32* @TVP5150_ACT_VD_CROP_ST_MSB, align 4
  %105 = call i32 @tvp5150_read(%struct.v4l2_subdev* %103, i32 %104)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %107 = load i32, i32* @TVP5150_ACT_VD_CROP_ST_LSB, align 4
  %108 = call i32 @tvp5150_read(%struct.v4l2_subdev* %106, i32 %107)
  %109 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %114 = load i32, i32* @TVP5150_ACT_VD_CROP_STP_MSB, align 4
  %115 = call i32 @tvp5150_read(%struct.v4l2_subdev* %113, i32 %114)
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %117 = load i32, i32* @TVP5150_ACT_VD_CROP_STP_LSB, align 4
  %118 = call i32 @tvp5150_read(%struct.v4l2_subdev* %116, i32 %117)
  %119 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %124 = load i32, i32* @TVP5150_GENLOCK, align 4
  %125 = call i32 @tvp5150_read(%struct.v4l2_subdev* %123, i32 %124)
  %126 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %125)
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %131 = load i32, i32* @TVP5150_HORIZ_SYNC_START, align 4
  %132 = call i32 @tvp5150_read(%struct.v4l2_subdev* %130, i32 %131)
  %133 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %132)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %138 = load i32, i32* @TVP5150_VERT_BLANKING_START, align 4
  %139 = call i32 @tvp5150_read(%struct.v4l2_subdev* %137, i32 %138)
  %140 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %136, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %139)
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %142 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %145 = load i32, i32* @TVP5150_VERT_BLANKING_STOP, align 4
  %146 = call i32 @tvp5150_read(%struct.v4l2_subdev* %144, i32 %145)
  %147 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %143, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %146)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %149 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %152 = load i32, i32* @TVP5150_CHROMA_PROC_CTL_1, align 4
  %153 = call i32 @tvp5150_read(%struct.v4l2_subdev* %151, i32 %152)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %155 = load i32, i32* @TVP5150_CHROMA_PROC_CTL_2, align 4
  %156 = call i32 @tvp5150_read(%struct.v4l2_subdev* %154, i32 %155)
  %157 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %150, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %159 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %162 = load i32, i32* @TVP5150_INT_RESET_REG_B, align 4
  %163 = call i32 @tvp5150_read(%struct.v4l2_subdev* %161, i32 %162)
  %164 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 %163)
  %165 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %166 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %169 = load i32, i32* @TVP5150_INT_ENABLE_REG_B, align 4
  %170 = call i32 @tvp5150_read(%struct.v4l2_subdev* %168, i32 %169)
  %171 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 %170)
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %176 = load i32, i32* @TVP5150_INTT_CONFIG_REG_B, align 4
  %177 = call i32 @tvp5150_read(%struct.v4l2_subdev* %175, i32 %176)
  %178 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %174, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %177)
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %180 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %183 = load i32, i32* @TVP5150_VIDEO_STD, align 4
  %184 = call i32 @tvp5150_read(%struct.v4l2_subdev* %182, i32 %183)
  %185 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 %184)
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %187 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %190 = load i32, i32* @TVP5150_CB_GAIN_FACT, align 4
  %191 = call i32 @tvp5150_read(%struct.v4l2_subdev* %189, i32 %190)
  %192 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %193 = load i32, i32* @TVP5150_CR_GAIN_FACTOR, align 4
  %194 = call i32 @tvp5150_read(%struct.v4l2_subdev* %192, i32 %193)
  %195 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %188, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 %191, i32 %194)
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %197 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %200 = load i32, i32* @TVP5150_MACROVISION_ON_CTR, align 4
  %201 = call i32 @tvp5150_read(%struct.v4l2_subdev* %199, i32 %200)
  %202 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %198, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %201)
  %203 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %204 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %207 = load i32, i32* @TVP5150_MACROVISION_OFF_CTR, align 4
  %208 = call i32 @tvp5150_read(%struct.v4l2_subdev* %206, i32 %207)
  %209 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %208)
  %210 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %211 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %214 = load i32, i32* @TVP5150_REV_SELECT, align 4
  %215 = call i32 @tvp5150_read(%struct.v4l2_subdev* %213, i32 %214)
  %216 = and i32 %215, 1
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 3, i32 4
  %220 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %212, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i32 %219)
  %221 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %222 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %225 = load i32, i32* @TVP5150_MSB_DEV_ID, align 4
  %226 = call i32 @tvp5150_read(%struct.v4l2_subdev* %224, i32 %225)
  %227 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %228 = load i32, i32* @TVP5150_LSB_DEV_ID, align 4
  %229 = call i32 @tvp5150_read(%struct.v4l2_subdev* %227, i32 %228)
  %230 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 %226, i32 %229)
  %231 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %232 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %235 = load i32, i32* @TVP5150_ROM_MAJOR_VER, align 4
  %236 = call i32 @tvp5150_read(%struct.v4l2_subdev* %234, i32 %235)
  %237 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %238 = load i32, i32* @TVP5150_ROM_MINOR_VER, align 4
  %239 = call i32 @tvp5150_read(%struct.v4l2_subdev* %237, i32 %238)
  %240 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %233, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 %236, i32 %239)
  %241 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %242 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %245 = load i32, i32* @TVP5150_VERT_LN_COUNT_MSB, align 4
  %246 = call i32 @tvp5150_read(%struct.v4l2_subdev* %244, i32 %245)
  %247 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %248 = load i32, i32* @TVP5150_VERT_LN_COUNT_LSB, align 4
  %249 = call i32 @tvp5150_read(%struct.v4l2_subdev* %247, i32 %248)
  %250 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %243, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i32 %246, i32 %249)
  %251 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %252 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %255 = load i32, i32* @TVP5150_INT_STATUS_REG_B, align 4
  %256 = call i32 @tvp5150_read(%struct.v4l2_subdev* %254, i32 %255)
  %257 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %253, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i32 %256)
  %258 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %259 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %262 = load i32, i32* @TVP5150_INT_ACTIVE_REG_B, align 4
  %263 = call i32 @tvp5150_read(%struct.v4l2_subdev* %261, i32 %262)
  %264 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %260, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 %263)
  %265 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %266 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %269 = load i32, i32* @TVP5150_STATUS_REG_1, align 4
  %270 = call i32 @tvp5150_read(%struct.v4l2_subdev* %268, i32 %269)
  %271 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %272 = load i32, i32* @TVP5150_STATUS_REG_2, align 4
  %273 = call i32 @tvp5150_read(%struct.v4l2_subdev* %271, i32 %272)
  %274 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %275 = load i32, i32* @TVP5150_STATUS_REG_3, align 4
  %276 = call i32 @tvp5150_read(%struct.v4l2_subdev* %274, i32 %275)
  %277 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %278 = load i32, i32* @TVP5150_STATUS_REG_4, align 4
  %279 = call i32 @tvp5150_read(%struct.v4l2_subdev* %277, i32 %278)
  %280 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %281 = load i32, i32* @TVP5150_STATUS_REG_5, align 4
  %282 = call i32 @tvp5150_read(%struct.v4l2_subdev* %280, i32 %281)
  %283 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %267, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.33, i64 0, i64 0), i32 %270, i32 %273, i32 %276, i32 %279, i32 %282)
  %284 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %285 = load i32, i32* @TVP5150_TELETEXT_FIL1_INI, align 4
  %286 = load i32, i32* @TVP5150_TELETEXT_FIL1_END, align 4
  %287 = call i32 @dump_reg_range(%struct.v4l2_subdev* %284, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 %285, i32 %286, i32 8)
  %288 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %289 = load i32, i32* @TVP5150_TELETEXT_FIL2_INI, align 4
  %290 = load i32, i32* @TVP5150_TELETEXT_FIL2_END, align 4
  %291 = call i32 @dump_reg_range(%struct.v4l2_subdev* %288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 %289, i32 %290, i32 8)
  %292 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %293 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %296 = load i32, i32* @TVP5150_TELETEXT_FIL_ENA, align 4
  %297 = call i32 @tvp5150_read(%struct.v4l2_subdev* %295, i32 %296)
  %298 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %294, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i32 %297)
  %299 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %300 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %303 = load i32, i32* @TVP5150_INT_STATUS_REG_A, align 4
  %304 = call i32 @tvp5150_read(%struct.v4l2_subdev* %302, i32 %303)
  %305 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %301, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0), i32 %304)
  %306 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %307 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %310 = load i32, i32* @TVP5150_INT_ENABLE_REG_A, align 4
  %311 = call i32 @tvp5150_read(%struct.v4l2_subdev* %309, i32 %310)
  %312 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %308, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i32 %311)
  %313 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %314 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %317 = load i32, i32* @TVP5150_INT_CONF, align 4
  %318 = call i32 @tvp5150_read(%struct.v4l2_subdev* %316, i32 %317)
  %319 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %315, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i32 %318)
  %320 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %321 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %324 = load i32, i32* @TVP5150_VDP_STATUS_REG, align 4
  %325 = call i32 @tvp5150_read(%struct.v4l2_subdev* %323, i32 %324)
  %326 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %322, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 %325)
  %327 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %328 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %331 = load i32, i32* @TVP5150_FIFO_WORD_COUNT, align 4
  %332 = call i32 @tvp5150_read(%struct.v4l2_subdev* %330, i32 %331)
  %333 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %329, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i32 %332)
  %334 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %335 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %338 = load i32, i32* @TVP5150_FIFO_INT_THRESHOLD, align 4
  %339 = call i32 @tvp5150_read(%struct.v4l2_subdev* %337, i32 %338)
  %340 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %336, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i64 0, i64 0), i32 %339)
  %341 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %342 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %345 = load i32, i32* @TVP5150_FIFO_RESET, align 4
  %346 = call i32 @tvp5150_read(%struct.v4l2_subdev* %344, i32 %345)
  %347 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %343, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 %346)
  %348 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %349 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %352 = load i32, i32* @TVP5150_LINE_NUMBER_INT, align 4
  %353 = call i32 @tvp5150_read(%struct.v4l2_subdev* %351, i32 %352)
  %354 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %350, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0), i32 %353)
  %355 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %356 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %359 = load i32, i32* @TVP5150_PIX_ALIGN_REG_HIGH, align 4
  %360 = call i32 @tvp5150_read(%struct.v4l2_subdev* %358, i32 %359)
  %361 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %362 = load i32, i32* @TVP5150_PIX_ALIGN_REG_LOW, align 4
  %363 = call i32 @tvp5150_read(%struct.v4l2_subdev* %361, i32 %362)
  %364 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %357, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0), i32 %360, i32 %363)
  %365 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %366 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %369 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %370 = call i32 @tvp5150_read(%struct.v4l2_subdev* %368, i32 %369)
  %371 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %367, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 %370)
  %372 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %373 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %376 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %377 = call i32 @tvp5150_read(%struct.v4l2_subdev* %375, i32 %376)
  %378 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %374, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i64 0, i64 0), i32 %377)
  %379 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %380 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %383 = load i32, i32* @TVP5150_FULL_FIELD_MODE_REG, align 4
  %384 = call i32 @tvp5150_read(%struct.v4l2_subdev* %382, i32 %383)
  %385 = call i32 (i32, i8*, i32, ...) @dprintk0(i32 %381, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 %384)
  %386 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %387 = load i32, i32* @TVP5150_CC_DATA_INI, align 4
  %388 = load i32, i32* @TVP5150_CC_DATA_END, align 4
  %389 = call i32 @dump_reg_range(%struct.v4l2_subdev* %386, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 %387, i32 %388, i32 8)
  %390 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %391 = load i32, i32* @TVP5150_WSS_DATA_INI, align 4
  %392 = load i32, i32* @TVP5150_WSS_DATA_END, align 4
  %393 = call i32 @dump_reg_range(%struct.v4l2_subdev* %390, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32 %391, i32 %392, i32 8)
  %394 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %395 = load i32, i32* @TVP5150_VPS_DATA_INI, align 4
  %396 = load i32, i32* @TVP5150_VPS_DATA_END, align 4
  %397 = call i32 @dump_reg_range(%struct.v4l2_subdev* %394, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %395, i32 %396, i32 8)
  %398 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %399 = load i32, i32* @TVP5150_VITC_DATA_INI, align 4
  %400 = load i32, i32* @TVP5150_VITC_DATA_END, align 4
  %401 = call i32 @dump_reg_range(%struct.v4l2_subdev* %398, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 %399, i32 %400, i32 10)
  %402 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %403 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  %404 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %405 = call i32 @dump_reg_range(%struct.v4l2_subdev* %402, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i32 %403, i32 %404, i32 8)
  ret i32 0
}

declare dso_local i32 @dprintk0(i32, i8*, i32, ...) #1

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @dump_reg_range(%struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
