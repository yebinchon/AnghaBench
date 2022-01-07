; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i64, i8*, i32, %struct.tda1997x_platform_data }
%struct.tda1997x_platform_data = type { i32*, i32 }

@REG_HPD_AUTO_CTRL = common dso_local global i64 0, align 8
@HPD_AUTO_HPD_UNSEL = common dso_local global i32 0, align 4
@REG_MAN_SUS_HDMI_SEL = common dso_local global i64 0, align 8
@MAN_DIS_HDCP = common dso_local global i32 0, align 4
@MAN_RST_HDCP = common dso_local global i32 0, align 4
@REG_CGU_DBG_SEL = common dso_local global i64 0, align 8
@CGU_DBG_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_SUS_SET_RGB2 = common dso_local global i64 0, align 8
@REG_SUS_SET_RGB3 = common dso_local global i64 0, align 8
@REG_RT_MAN_CTRL = common dso_local global i64 0, align 8
@RT_MAN_CTRL_RT = common dso_local global i32 0, align 4
@RT_MAN_CTRL_RT_B = common dso_local global i32 0, align 4
@RT_MAN_CTRL_RT_A = common dso_local global i32 0, align 4
@REG_PWR_CONTROL = common dso_local global i32 0, align 4
@REG_OSC_DIVIDER = common dso_local global i32 0, align 4
@REG_EN_OSC_PERIOD_LSB = common dso_local global i32 0, align 4
@REG_TIMER_D = common dso_local global i64 0, align 8
@REG_CONTROL = common dso_local global i32 0, align 4
@REG_VERSION = common dso_local global i64 0, align 8
@REG_CMTP_REG10 = common dso_local global i64 0, align 8
@REG_INT_MASK_TOP = common dso_local global i64 0, align 8
@INTERRUPT_HDCP = common dso_local global i32 0, align 4
@INTERRUPT_AUDIO = common dso_local global i32 0, align 4
@INTERRUPT_INFO = common dso_local global i32 0, align 4
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@INTERRUPT_SUS = common dso_local global i32 0, align 4
@REG_INT_MASK_SUS = common dso_local global i64 0, align 8
@MASK_MPT = common dso_local global i32 0, align 4
@MASK_FMT = common dso_local global i32 0, align 4
@MASK_SUS_END = common dso_local global i32 0, align 4
@REG_INT_MASK_RATE = common dso_local global i64 0, align 8
@MASK_RATE_B_ST = common dso_local global i32 0, align 4
@MASK_RATE_A_ST = common dso_local global i32 0, align 4
@REG_INT_MASK_INFO = common dso_local global i64 0, align 8
@MASK_AUD_IF = common dso_local global i32 0, align 4
@MASK_SPD_IF = common dso_local global i32 0, align 4
@MASK_AVI_IF = common dso_local global i32 0, align 4
@REG_INT_MASK_AUDIO = common dso_local global i64 0, align 8
@MASK_AUDIO_FREQ_FLG = common dso_local global i32 0, align 4
@MASK_AUDIO_FLG = common dso_local global i32 0, align 4
@MASK_MUTE_FLG = common dso_local global i32 0, align 4
@MASK_ERROR_FIFO_PT = common dso_local global i32 0, align 4
@REG_INT_MASK_HDCP = common dso_local global i64 0, align 8
@MASK_STATE_C5 = common dso_local global i32 0, align 4
@REG_INT_MASK_DDC = common dso_local global i64 0, align 8
@MASK_DET_5V = common dso_local global i32 0, align 4
@REG_INT_MASK_AFE = common dso_local global i64 0, align 8
@REG_INT_MASK_MODE = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_TOP = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_SUS = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_DDC = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_RATE = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_MODE = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_INFO = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_AUDIO = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_HDCP = common dso_local global i64 0, align 8
@REG_INT_FLG_CLR_AFE = common dso_local global i64 0, align 8
@REG_CLK_MIN_RATE = common dso_local global i32 0, align 4
@CLK_MIN_RATE = common dso_local global i32 0, align 4
@REG_CLK_MAX_RATE = common dso_local global i32 0, align 4
@CLK_MAX_RATE = common dso_local global i32 0, align 4
@REG_WDL_CFG = common dso_local global i64 0, align 8
@WDL_CFG_VAL = common dso_local global i32 0, align 4
@REG_DEEP_COLOR_CTRL = common dso_local global i64 0, align 8
@DC_FILTER_VAL = common dso_local global i32 0, align 4
@REG_SVC_MODE = common dso_local global i64 0, align 8
@REG_INFO_CTRL = common dso_local global i64 0, align 8
@REG_INFO_EXCEED = common dso_local global i64 0, align 8
@NACK_HDCP = common dso_local global i32 0, align 4
@HPD_LOW_BP = common dso_local global i32 0, align 4
@REG_HDCP_BCAPS = common dso_local global i64 0, align 8
@HDCP_HDMI = common dso_local global i32 0, align 4
@HDCP_FAST_REAUTH = common dso_local global i32 0, align 4
@HDMI_CTRL_MUTE_AUTO = common dso_local global i32 0, align 4
@HDMI_CTRL_MUTE_SHIFT = common dso_local global i32 0, align 4
@HDMI_CTRL_HDCP_AUTO = common dso_local global i32 0, align 4
@HDMI_CTRL_HDCP_SHIFT = common dso_local global i32 0, align 4
@REG_HDMI_CTRL = common dso_local global i64 0, align 8
@REG_VDP_CTRL = common dso_local global i64 0, align 8
@VDP_CTRL_MATRIX_BP = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vidout_cfg[%d]=0x%02x\0A\00", align 1
@REG_VP35_32_CTRL = common dso_local global i64 0, align 8
@AUDIO_CLOCK_SEL_512FS = common dso_local global i32 0, align 4
@AUDIO_CLOCK_SEL_256FS = common dso_local global i32 0, align 4
@AUDIO_CLOCK_SEL_128FS = common dso_local global i32 0, align 4
@AUDIO_CLOCK_SEL_64FS = common dso_local global i32 0, align 4
@AUDIO_CLOCK_SEL_32FS = common dso_local global i32 0, align 4
@AUDIO_CLOCK_SEL_16FS = common dso_local global i32 0, align 4
@REG_AUDIO_CLOCK = common dso_local global i64 0, align 8
@RESET_AI = common dso_local global i32 0, align 4
@RESET_IF = common dso_local global i32 0, align 4
@RESET_AUDIO = common dso_local global i32 0, align 4
@RESET_GAMUT = common dso_local global i32 0, align 4
@REG_HDMI_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tda1997x_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_core_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca %struct.tda1997x_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.tda1997x_state* %8, %struct.tda1997x_state** %3, align 8
  %9 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %10 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %9, i32 0, i32 3
  store %struct.tda1997x_platform_data* %10, %struct.tda1997x_platform_data** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = load i64, i64* @REG_HPD_AUTO_CTRL, align 8
  %13 = load i32, i32* @HPD_AUTO_HPD_UNSEL, align 4
  %14 = call i32 @io_write(%struct.v4l2_subdev* %11, i64 %12, i32 %13)
  %15 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %16 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load i64, i64* @REG_MAN_SUS_HDMI_SEL, align 8
  %22 = load i32, i32* @MAN_DIS_HDCP, align 4
  %23 = load i32, i32* @MAN_RST_HDCP, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @io_write(%struct.v4l2_subdev* %20, i64 %21, i32 %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %27 = load i64, i64* @REG_CGU_DBG_SEL, align 8
  %28 = load i32, i32* @CGU_DBG_CLK_SEL_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @io_write(%struct.v4l2_subdev* %26, i64 %27, i32 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %33 = load i64, i64* @REG_SUS_SET_RGB2, align 8
  %34 = call i32 @io_write(%struct.v4l2_subdev* %32, i64 %33, i32 6)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %36 = load i64, i64* @REG_SUS_SET_RGB3, align 8
  %37 = call i32 @io_write(%struct.v4l2_subdev* %35, i64 %36, i32 6)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %39 = load i64, i64* @REG_RT_MAN_CTRL, align 8
  %40 = load i32, i32* @RT_MAN_CTRL_RT, align 4
  %41 = load i32, i32* @RT_MAN_CTRL_RT_B, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RT_MAN_CTRL_RT_A, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @io_write(%struct.v4l2_subdev* %38, i64 %39, i32 %44)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %47 = load i32, i32* @REG_PWR_CONTROL, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @tda1997x_cec_write(%struct.v4l2_subdev* %46, i32 %48, i32 4)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %51 = load i32, i32* @REG_OSC_DIVIDER, align 4
  %52 = and i32 %51, 255
  %53 = call i32 @tda1997x_cec_write(%struct.v4l2_subdev* %50, i32 %52, i32 3)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = load i32, i32* @REG_EN_OSC_PERIOD_LSB, align 4
  %56 = and i32 %55, 255
  %57 = call i32 @tda1997x_cec_write(%struct.v4l2_subdev* %54, i32 %56, i32 160)
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %59 = load i64, i64* @REG_TIMER_D, align 8
  %60 = call i32 @io_write(%struct.v4l2_subdev* %58, i64 %59, i32 84)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %62 = load i32, i32* @REG_CONTROL, align 4
  %63 = and i32 %62, 255
  %64 = call i32 @tda1997x_cec_read(%struct.v4l2_subdev* %61, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %68 = load i32, i32* @REG_CONTROL, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @tda1997x_cec_write(%struct.v4l2_subdev* %67, i32 %69, i32 %70)
  %72 = call i32 @mdelay(i32 50)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %74 = load i64, i64* @REG_VERSION, align 8
  %75 = call i8* @io_read(%struct.v4l2_subdev* %73, i64 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %78 = load i64, i64* @REG_CMTP_REG10, align 8
  %79 = call i8* @io_read(%struct.v4l2_subdev* %77, i64 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %5, align 4
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %82 = load i64, i64* @REG_INT_MASK_TOP, align 8
  %83 = load i32, i32* @INTERRUPT_HDCP, align 4
  %84 = load i32, i32* @INTERRUPT_AUDIO, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @INTERRUPT_INFO, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @INTERRUPT_RATE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @INTERRUPT_SUS, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @io_write(%struct.v4l2_subdev* %81, i64 %82, i32 %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = load i64, i64* @REG_INT_MASK_SUS, align 8
  %95 = load i32, i32* @MASK_MPT, align 4
  %96 = load i32, i32* @MASK_FMT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MASK_SUS_END, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @io_write(%struct.v4l2_subdev* %93, i64 %94, i32 %99)
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %102 = load i64, i64* @REG_INT_MASK_RATE, align 8
  %103 = load i32, i32* @MASK_RATE_B_ST, align 4
  %104 = load i32, i32* @MASK_RATE_A_ST, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @io_write(%struct.v4l2_subdev* %101, i64 %102, i32 %105)
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %108 = load i64, i64* @REG_INT_MASK_INFO, align 8
  %109 = load i32, i32* @MASK_AUD_IF, align 4
  %110 = load i32, i32* @MASK_SPD_IF, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MASK_AVI_IF, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @io_write(%struct.v4l2_subdev* %107, i64 %108, i32 %113)
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %116 = load i64, i64* @REG_INT_MASK_AUDIO, align 8
  %117 = load i32, i32* @MASK_AUDIO_FREQ_FLG, align 4
  %118 = load i32, i32* @MASK_AUDIO_FLG, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @MASK_MUTE_FLG, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MASK_ERROR_FIFO_PT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @io_write(%struct.v4l2_subdev* %115, i64 %116, i32 %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %126 = load i64, i64* @REG_INT_MASK_HDCP, align 8
  %127 = load i32, i32* @MASK_STATE_C5, align 4
  %128 = call i32 @io_write(%struct.v4l2_subdev* %125, i64 %126, i32 %127)
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %130 = load i64, i64* @REG_INT_MASK_DDC, align 8
  %131 = load i32, i32* @MASK_DET_5V, align 4
  %132 = call i32 @io_write(%struct.v4l2_subdev* %129, i64 %130, i32 %131)
  %133 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %134 = load i64, i64* @REG_INT_MASK_AFE, align 8
  %135 = call i32 @io_write(%struct.v4l2_subdev* %133, i64 %134, i32 0)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %137 = load i64, i64* @REG_INT_MASK_MODE, align 8
  %138 = call i32 @io_write(%struct.v4l2_subdev* %136, i64 %137, i32 0)
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %140 = load i64, i64* @REG_INT_FLG_CLR_TOP, align 8
  %141 = call i32 @io_write(%struct.v4l2_subdev* %139, i64 %140, i32 255)
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %143 = load i64, i64* @REG_INT_FLG_CLR_SUS, align 8
  %144 = call i32 @io_write(%struct.v4l2_subdev* %142, i64 %143, i32 255)
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %146 = load i64, i64* @REG_INT_FLG_CLR_DDC, align 8
  %147 = call i32 @io_write(%struct.v4l2_subdev* %145, i64 %146, i32 255)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %149 = load i64, i64* @REG_INT_FLG_CLR_RATE, align 8
  %150 = call i32 @io_write(%struct.v4l2_subdev* %148, i64 %149, i32 255)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %152 = load i64, i64* @REG_INT_FLG_CLR_MODE, align 8
  %153 = call i32 @io_write(%struct.v4l2_subdev* %151, i64 %152, i32 255)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %155 = load i64, i64* @REG_INT_FLG_CLR_INFO, align 8
  %156 = call i32 @io_write(%struct.v4l2_subdev* %154, i64 %155, i32 255)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %158 = load i64, i64* @REG_INT_FLG_CLR_AUDIO, align 8
  %159 = call i32 @io_write(%struct.v4l2_subdev* %157, i64 %158, i32 255)
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %161 = load i64, i64* @REG_INT_FLG_CLR_HDCP, align 8
  %162 = call i32 @io_write(%struct.v4l2_subdev* %160, i64 %161, i32 255)
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %164 = load i64, i64* @REG_INT_FLG_CLR_AFE, align 8
  %165 = call i32 @io_write(%struct.v4l2_subdev* %163, i64 %164, i32 255)
  %166 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %167 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %31
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %172 = load i64, i64* @REG_CGU_DBG_SEL, align 8
  %173 = load i32, i32* @CGU_DBG_CLK_SEL_SHIFT, align 4
  %174 = shl i32 1, %173
  %175 = call i32 @io_write(%struct.v4l2_subdev* %171, i64 %172, i32 %174)
  br label %176

176:                                              ; preds = %170, %31
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %178 = load i32, i32* @REG_CLK_MIN_RATE, align 4
  %179 = load i32, i32* @CLK_MIN_RATE, align 4
  %180 = call i32 @io_write24(%struct.v4l2_subdev* %177, i32 %178, i32 %179)
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %182 = load i32, i32* @REG_CLK_MAX_RATE, align 4
  %183 = load i32, i32* @CLK_MAX_RATE, align 4
  %184 = call i32 @io_write24(%struct.v4l2_subdev* %181, i32 %182, i32 %183)
  %185 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %186 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %176
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i64, i64* @REG_WDL_CFG, align 8
  %192 = load i32, i32* @WDL_CFG_VAL, align 4
  %193 = call i32 @io_write(%struct.v4l2_subdev* %190, i64 %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %176
  %195 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %196 = load i64, i64* @REG_DEEP_COLOR_CTRL, align 8
  %197 = load i32, i32* @DC_FILTER_VAL, align 4
  %198 = call i32 @io_write(%struct.v4l2_subdev* %195, i64 %196, i32 %197)
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %200 = load i64, i64* @REG_SVC_MODE, align 8
  %201 = call i32 @io_write(%struct.v4l2_subdev* %199, i64 %200, i32 0)
  %202 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %203 = load i64, i64* @REG_INFO_CTRL, align 8
  %204 = call i32 @io_write(%struct.v4l2_subdev* %202, i64 %203, i32 255)
  %205 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %206 = load i64, i64* @REG_INFO_EXCEED, align 8
  %207 = call i32 @io_write(%struct.v4l2_subdev* %205, i64 %206, i32 3)
  %208 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %209 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %194
  %213 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %214 = call i32 @tda1997x_reset_n1(%struct.tda1997x_state* %213)
  br label %215

215:                                              ; preds = %212, %194
  %216 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %217 = load i32, i32* @NACK_HDCP, align 4
  %218 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %216, i32 %217, i32 1)
  %219 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %220 = load i32, i32* @HPD_LOW_BP, align 4
  %221 = call i32 @tda1997x_manual_hpd(%struct.v4l2_subdev* %219, i32 %220)
  %222 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %223 = load i64, i64* @REG_HDCP_BCAPS, align 8
  %224 = load i32, i32* @HDCP_HDMI, align 4
  %225 = load i32, i32* @HDCP_FAST_REAUTH, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @io_write(%struct.v4l2_subdev* %222, i64 %223, i32 %226)
  %228 = load i32, i32* @HDMI_CTRL_MUTE_AUTO, align 4
  %229 = load i32, i32* @HDMI_CTRL_MUTE_SHIFT, align 4
  %230 = shl i32 %228, %229
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* @HDMI_CTRL_HDCP_AUTO, align 4
  %232 = load i32, i32* @HDMI_CTRL_HDCP_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %5, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %5, align 4
  %236 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %237 = load i64, i64* @REG_HDMI_CTRL, align 8
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @io_write(%struct.v4l2_subdev* %236, i64 %237, i32 %238)
  %240 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %241 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %240, i32 0, i32 1)
  %242 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %243 = load i64, i64* @REG_VDP_CTRL, align 8
  %244 = call i8* @io_read(%struct.v4l2_subdev* %242, i64 %243)
  %245 = ptrtoint i8* %244 to i32
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* @VDP_CTRL_MATRIX_BP, align 4
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %5, align 4
  %249 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %250 = load i64, i64* @REG_VDP_CTRL, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @io_write(%struct.v4l2_subdev* %249, i64 %250, i32 %251)
  %253 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %254 = call i32 @tda1997x_configure_vidout(%struct.tda1997x_state* %253)
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %285, %215
  %256 = load i32, i32* %6, align 4
  %257 = icmp slt i32 %256, 9
  br i1 %257, label %258, label %288

258:                                              ; preds = %255
  %259 = load i32, i32* @debug, align 4
  %260 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %261 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %265 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @v4l_dbg(i32 1, i32 %259, i32 %262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %263, i32 %270)
  %272 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %273 = load i64, i64* @REG_VP35_32_CTRL, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %273, %275
  %277 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %278 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @io_write(%struct.v4l2_subdev* %272, i64 %276, i32 %283)
  br label %285

285:                                              ; preds = %258
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %6, align 4
  br label %255

288:                                              ; preds = %255
  %289 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %290 = call i32 @tda1997x_configure_audout(%struct.v4l2_subdev* %289, i32 0)
  %291 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %292 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  switch i32 %293, label %304 [
    i32 512, label %294
    i32 256, label %296
    i32 128, label %298
    i32 64, label %300
    i32 32, label %302
  ]

294:                                              ; preds = %288
  %295 = load i32, i32* @AUDIO_CLOCK_SEL_512FS, align 4
  store i32 %295, i32* %5, align 4
  br label %306

296:                                              ; preds = %288
  %297 = load i32, i32* @AUDIO_CLOCK_SEL_256FS, align 4
  store i32 %297, i32* %5, align 4
  br label %306

298:                                              ; preds = %288
  %299 = load i32, i32* @AUDIO_CLOCK_SEL_128FS, align 4
  store i32 %299, i32* %5, align 4
  br label %306

300:                                              ; preds = %288
  %301 = load i32, i32* @AUDIO_CLOCK_SEL_64FS, align 4
  store i32 %301, i32* %5, align 4
  br label %306

302:                                              ; preds = %288
  %303 = load i32, i32* @AUDIO_CLOCK_SEL_32FS, align 4
  store i32 %303, i32* %5, align 4
  br label %306

304:                                              ; preds = %288
  %305 = load i32, i32* @AUDIO_CLOCK_SEL_16FS, align 4
  store i32 %305, i32* %5, align 4
  br label %306

306:                                              ; preds = %304, %302, %300, %298, %296, %294
  %307 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %308 = load i64, i64* @REG_AUDIO_CLOCK, align 8
  %309 = load i32, i32* %5, align 4
  %310 = call i32 @io_write(%struct.v4l2_subdev* %307, i64 %308, i32 %309)
  %311 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %312 = load i32, i32* @RESET_AI, align 4
  %313 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %311, i32 %312, i32 0)
  %314 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %315 = load i32, i32* @RESET_IF, align 4
  %316 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %314, i32 %315, i32 0)
  %317 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %318 = load i32, i32* @RESET_AUDIO, align 4
  %319 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %317, i32 %318, i32 0)
  %320 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %321 = load i32, i32* @RESET_GAMUT, align 4
  %322 = call i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %320, i32 %321, i32 0)
  %323 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %324 = load i64, i64* @REG_HDMI_FLAGS, align 8
  %325 = call i8* @io_read(%struct.v4l2_subdev* %323, i64 %324)
  %326 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %327 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  ret i32 0
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i64, i32) #1

declare dso_local i32 @tda1997x_cec_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_cec_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i8* @io_read(%struct.v4l2_subdev*, i64) #1

declare dso_local i32 @io_write24(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_reset_n1(%struct.tda1997x_state*) #1

declare dso_local i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_manual_hpd(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tda1997x_configure_vidout(%struct.tda1997x_state*) #1

declare dso_local i32 @v4l_dbg(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @tda1997x_configure_audout(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
