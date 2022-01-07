; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7183 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"adv7183: Input control = 0x%02x\0A\00", align 1
@ADV7183_IN_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"adv7183: Video selection = 0x%02x\0A\00", align 1
@ADV7183_VD_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"adv7183: Output control = 0x%02x\0A\00", align 1
@ADV7183_OUT_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"adv7183: Extended output control = 0x%02x\0A\00", align 1
@ADV7183_EXT_OUT_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"adv7183: Autodetect enable = 0x%02x\0A\00", align 1
@ADV7183_AUTO_DET_EN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"adv7183: Contrast = 0x%02x\0A\00", align 1
@ADV7183_CONTRAST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"adv7183: Brightness = 0x%02x\0A\00", align 1
@ADV7183_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"adv7183: Hue = 0x%02x\0A\00", align 1
@ADV7183_HUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"adv7183: Default value Y = 0x%02x\0A\00", align 1
@ADV7183_DEF_Y = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"adv7183: Default value C = 0x%02x\0A\00", align 1
@ADV7183_DEF_C = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"adv7183: ADI control = 0x%02x\0A\00", align 1
@ADV7183_ADI_CTRL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"adv7183: Power Management = 0x%02x\0A\00", align 1
@ADV7183_POW_MANAGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"adv7183: Status 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", align 1
@ADV7183_STATUS_1 = common dso_local global i32 0, align 4
@ADV7183_STATUS_2 = common dso_local global i32 0, align 4
@ADV7183_STATUS_3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"adv7183: Ident = 0x%02x\0A\00", align 1
@ADV7183_IDENT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"adv7183: Analog clamp control = 0x%02x\0A\00", align 1
@ADV7183_ANAL_CLAMP_CTRL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"adv7183: Digital clamp control 1 = 0x%02x\0A\00", align 1
@ADV7183_DIGI_CLAMP_CTRL_1 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [57 x i8] c"adv7183: Shaping filter control 1 and 2 = 0x%02x 0x%02x\0A\00", align 1
@ADV7183_SHAP_FILT_CTRL = common dso_local global i32 0, align 4
@ADV7183_SHAP_FILT_CTRL_2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"adv7183: Comb filter control = 0x%02x\0A\00", align 1
@ADV7183_COMB_FILT_CTRL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"adv7183: ADI control 2 = 0x%02x\0A\00", align 1
@ADV7183_ADI_CTRL_2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"adv7183: Pixel delay control = 0x%02x\0A\00", align 1
@ADV7183_PIX_DELAY_CTRL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"adv7183: Misc gain control = 0x%02x\0A\00", align 1
@ADV7183_MISC_GAIN_CTRL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [36 x i8] c"adv7183: AGC mode control = 0x%02x\0A\00", align 1
@ADV7183_AGC_MODE_CTRL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"adv7183: Chroma gain control 1 and 2 = 0x%02x 0x%02x\0A\00", align 1
@ADV7183_CHRO_GAIN_CTRL_1 = common dso_local global i32 0, align 4
@ADV7183_CHRO_GAIN_CTRL_2 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [52 x i8] c"adv7183: Luma gain control 1 and 2 = 0x%02x 0x%02x\0A\00", align 1
@ADV7183_LUMA_GAIN_CTRL_1 = common dso_local global i32 0, align 4
@ADV7183_LUMA_GAIN_CTRL_2 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [63 x i8] c"adv7183: Vsync field control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", align 1
@ADV7183_VS_FIELD_CTRL_1 = common dso_local global i32 0, align 4
@ADV7183_VS_FIELD_CTRL_2 = common dso_local global i32 0, align 4
@ADV7183_VS_FIELD_CTRL_3 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [66 x i8] c"adv7183: Hsync position control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\0A\00", align 1
@ADV7183_HS_POS_CTRL_1 = common dso_local global i32 0, align 4
@ADV7183_HS_POS_CTRL_2 = common dso_local global i32 0, align 4
@ADV7183_HS_POS_CTRL_3 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"adv7183: Polarity = 0x%02x\0A\00", align 1
@ADV7183_POLARITY = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [31 x i8] c"adv7183: ADC control = 0x%02x\0A\00", align 1
@ADV7183_ADC_CTRL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [46 x i8] c"adv7183: SD offset Cb and Cr = 0x%02x 0x%02x\0A\00", align 1
@ADV7183_SD_OFFSET_CB = common dso_local global i32 0, align 4
@ADV7183_SD_OFFSET_CR = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [50 x i8] c"adv7183: SD saturation Cb and Cr = 0x%02x 0x%02x\0A\00", align 1
@ADV7183_SD_SATURATION_CB = common dso_local global i32 0, align 4
@ADV7183_SD_SATURATION_CR = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [34 x i8] c"adv7183: Drive strength = 0x%02x\0A\00", align 1
@ADV7183_DRIVE_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7183_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv7183*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.adv7183* @to_adv7183(%struct.v4l2_subdev* %4)
  store %struct.adv7183* %5, %struct.adv7183** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load i32, i32* @ADV7183_IN_CTRL, align 4
  %9 = call i32 @adv7183_read(%struct.v4l2_subdev* %7, i32 %8)
  %10 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %13 = load i32, i32* @ADV7183_VD_SEL, align 4
  %14 = call i32 @adv7183_read(%struct.v4l2_subdev* %12, i32 %13)
  %15 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = load i32, i32* @ADV7183_OUT_CTRL, align 4
  %19 = call i32 @adv7183_read(%struct.v4l2_subdev* %17, i32 %18)
  %20 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %23 = load i32, i32* @ADV7183_EXT_OUT_CTRL, align 4
  %24 = call i32 @adv7183_read(%struct.v4l2_subdev* %22, i32 %23)
  %25 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = load i32, i32* @ADV7183_AUTO_DET_EN, align 4
  %29 = call i32 @adv7183_read(%struct.v4l2_subdev* %27, i32 %28)
  %30 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %33 = load i32, i32* @ADV7183_CONTRAST, align 4
  %34 = call i32 @adv7183_read(%struct.v4l2_subdev* %32, i32 %33)
  %35 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %38 = load i32, i32* @ADV7183_BRIGHTNESS, align 4
  %39 = call i32 @adv7183_read(%struct.v4l2_subdev* %37, i32 %38)
  %40 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %43 = load i32, i32* @ADV7183_HUE, align 4
  %44 = call i32 @adv7183_read(%struct.v4l2_subdev* %42, i32 %43)
  %45 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %48 = load i32, i32* @ADV7183_DEF_Y, align 4
  %49 = call i32 @adv7183_read(%struct.v4l2_subdev* %47, i32 %48)
  %50 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %49)
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = load i32, i32* @ADV7183_DEF_C, align 4
  %54 = call i32 @adv7183_read(%struct.v4l2_subdev* %52, i32 %53)
  %55 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %54)
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = load i32, i32* @ADV7183_ADI_CTRL, align 4
  %59 = call i32 @adv7183_read(%struct.v4l2_subdev* %57, i32 %58)
  %60 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %59)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %63 = load i32, i32* @ADV7183_POW_MANAGE, align 4
  %64 = call i32 @adv7183_read(%struct.v4l2_subdev* %62, i32 %63)
  %65 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %68 = load i32, i32* @ADV7183_STATUS_1, align 4
  %69 = call i32 @adv7183_read(%struct.v4l2_subdev* %67, i32 %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %71 = load i32, i32* @ADV7183_STATUS_2, align 4
  %72 = call i32 @adv7183_read(%struct.v4l2_subdev* %70, i32 %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %74 = load i32, i32* @ADV7183_STATUS_3, align 4
  %75 = call i32 @adv7183_read(%struct.v4l2_subdev* %73, i32 %74)
  %76 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %79 = load i32, i32* @ADV7183_IDENT, align 4
  %80 = call i32 @adv7183_read(%struct.v4l2_subdev* %78, i32 %79)
  %81 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %84 = load i32, i32* @ADV7183_ANAL_CLAMP_CTRL, align 4
  %85 = call i32 @adv7183_read(%struct.v4l2_subdev* %83, i32 %84)
  %86 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %89 = load i32, i32* @ADV7183_DIGI_CLAMP_CTRL_1, align 4
  %90 = call i32 @adv7183_read(%struct.v4l2_subdev* %88, i32 %89)
  %91 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = load i32, i32* @ADV7183_SHAP_FILT_CTRL, align 4
  %95 = call i32 @adv7183_read(%struct.v4l2_subdev* %93, i32 %94)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %97 = load i32, i32* @ADV7183_SHAP_FILT_CTRL_2, align 4
  %98 = call i32 @adv7183_read(%struct.v4l2_subdev* %96, i32 %97)
  %99 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %92, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %102 = load i32, i32* @ADV7183_COMB_FILT_CTRL, align 4
  %103 = call i32 @adv7183_read(%struct.v4l2_subdev* %101, i32 %102)
  %104 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %107 = load i32, i32* @ADV7183_ADI_CTRL_2, align 4
  %108 = call i32 @adv7183_read(%struct.v4l2_subdev* %106, i32 %107)
  %109 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %108)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %112 = load i32, i32* @ADV7183_PIX_DELAY_CTRL, align 4
  %113 = call i32 @adv7183_read(%struct.v4l2_subdev* %111, i32 %112)
  %114 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 %113)
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %117 = load i32, i32* @ADV7183_MISC_GAIN_CTRL, align 4
  %118 = call i32 @adv7183_read(%struct.v4l2_subdev* %116, i32 %117)
  %119 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %118)
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %122 = load i32, i32* @ADV7183_AGC_MODE_CTRL, align 4
  %123 = call i32 @adv7183_read(%struct.v4l2_subdev* %121, i32 %122)
  %124 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %127 = load i32, i32* @ADV7183_CHRO_GAIN_CTRL_1, align 4
  %128 = call i32 @adv7183_read(%struct.v4l2_subdev* %126, i32 %127)
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %130 = load i32, i32* @ADV7183_CHRO_GAIN_CTRL_2, align 4
  %131 = call i32 @adv7183_read(%struct.v4l2_subdev* %129, i32 %130)
  %132 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %125, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %135 = load i32, i32* @ADV7183_LUMA_GAIN_CTRL_1, align 4
  %136 = call i32 @adv7183_read(%struct.v4l2_subdev* %134, i32 %135)
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %138 = load i32, i32* @ADV7183_LUMA_GAIN_CTRL_2, align 4
  %139 = call i32 @adv7183_read(%struct.v4l2_subdev* %137, i32 %138)
  %140 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %133, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %143 = load i32, i32* @ADV7183_VS_FIELD_CTRL_1, align 4
  %144 = call i32 @adv7183_read(%struct.v4l2_subdev* %142, i32 %143)
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %146 = load i32, i32* @ADV7183_VS_FIELD_CTRL_2, align 4
  %147 = call i32 @adv7183_read(%struct.v4l2_subdev* %145, i32 %146)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %149 = load i32, i32* @ADV7183_VS_FIELD_CTRL_3, align 4
  %150 = call i32 @adv7183_read(%struct.v4l2_subdev* %148, i32 %149)
  %151 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %141, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i32 %144, i32 %147, i32 %150)
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %153 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %154 = load i32, i32* @ADV7183_HS_POS_CTRL_1, align 4
  %155 = call i32 @adv7183_read(%struct.v4l2_subdev* %153, i32 %154)
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %157 = load i32, i32* @ADV7183_HS_POS_CTRL_2, align 4
  %158 = call i32 @adv7183_read(%struct.v4l2_subdev* %156, i32 %157)
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %160 = load i32, i32* @ADV7183_HS_POS_CTRL_3, align 4
  %161 = call i32 @adv7183_read(%struct.v4l2_subdev* %159, i32 %160)
  %162 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %152, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %165 = load i32, i32* @ADV7183_POLARITY, align 4
  %166 = call i32 @adv7183_read(%struct.v4l2_subdev* %164, i32 %165)
  %167 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %166)
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %170 = load i32, i32* @ADV7183_ADC_CTRL, align 4
  %171 = call i32 @adv7183_read(%struct.v4l2_subdev* %169, i32 %170)
  %172 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %171)
  %173 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %175 = load i32, i32* @ADV7183_SD_OFFSET_CB, align 4
  %176 = call i32 @adv7183_read(%struct.v4l2_subdev* %174, i32 %175)
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %178 = load i32, i32* @ADV7183_SD_OFFSET_CR, align 4
  %179 = call i32 @adv7183_read(%struct.v4l2_subdev* %177, i32 %178)
  %180 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %176, i32 %179)
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %183 = load i32, i32* @ADV7183_SD_SATURATION_CB, align 4
  %184 = call i32 @adv7183_read(%struct.v4l2_subdev* %182, i32 %183)
  %185 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %186 = load i32, i32* @ADV7183_SD_SATURATION_CR, align 4
  %187 = call i32 @adv7183_read(%struct.v4l2_subdev* %185, i32 %186)
  %188 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %181, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i32, i32* @ADV7183_DRIVE_STR, align 4
  %192 = call i32 @adv7183_read(%struct.v4l2_subdev* %190, i32 %191)
  %193 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0), i32 %192)
  %194 = load %struct.adv7183*, %struct.adv7183** %3, align 8
  %195 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %194, i32 0, i32 0
  %196 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %197 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @v4l2_ctrl_handler_log_status(i32* %195, i32 %198)
  ret i32 0
}

declare dso_local %struct.adv7183* @to_adv7183(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @adv7183_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
