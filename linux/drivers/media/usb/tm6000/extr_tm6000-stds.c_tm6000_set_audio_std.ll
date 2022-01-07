; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-stds.c_tm6000_set_audio_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-stds.c_tm6000_set_audio_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64, i32, i64 }

@TM6010_REQ08_R01_A_INIT = common dso_local global i32 0, align 4
@TM6010_REQ08_R02_A_FIX_GAIN_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_R03_A_AUTO_GAIN_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_R04_A_SIF_AMP_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_R05_A_STANDARD_MOD = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i64 0, align 8
@TM6010_REQ08_R06_A_SOUND_MOD = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@TM6010_REQ08_R09_A_MAIN_VOL = common dso_local global i32 0, align 4
@TM6010_REQ08_R0C_A_ASD_THRES2 = common dso_local global i32 0, align 4
@TM6010_REQ08_R0D_A_AMD_THRES = common dso_local global i32 0, align 4
@TM6010_REQ08_RF1_AADC_POWER_DOWN = common dso_local global i32 0, align 4
@TM6010_REQ08_R1E_A_GAIN_DEEMPH_OUT = common dso_local global i32 0, align 4
@TM6010_REQ07_RFE_POWER_DOWN = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_MN = common dso_local global i32 0, align 4
@tm6010_a_mode = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_DK = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@TM6010_REQ08_R07_A_LEFT_VOL = common dso_local global i32 0, align 4
@TM6010_REQ08_R08_A_RIGHT_VOL = common dso_local global i32 0, align 4
@TM6010_REQ08_R0A_A_I2S_MOD = common dso_local global i32 0, align 4
@TM6010_REQ08_R0B_A_ASD_THRES1 = common dso_local global i32 0, align 4
@TM6010_REQ08_R0E_A_MONO_THRES1 = common dso_local global i32 0, align 4
@TM6010_REQ08_R0F_A_MONO_THRES2 = common dso_local global i32 0, align 4
@TM6010_REQ08_R10_A_MUTE_THRES1 = common dso_local global i32 0, align 4
@TM6010_REQ08_R11_A_MUTE_THRES2 = common dso_local global i32 0, align 4
@TM6010_REQ08_R12_A_AGC_U = common dso_local global i32 0, align 4
@TM6010_REQ08_R13_A_AGC_ERR_T = common dso_local global i32 0, align 4
@TM6010_REQ08_R14_A_AGC_GAIN_INIT = common dso_local global i32 0, align 4
@TM6010_REQ08_R15_A_AGC_STEP_THR = common dso_local global i32 0, align 4
@TM6010_REQ08_R16_A_AGC_GAIN_MAX = common dso_local global i32 0, align 4
@TM6010_REQ08_R17_A_AGC_GAIN_MIN = common dso_local global i32 0, align 4
@TM6010_REQ08_R18_A_TR_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_R19_A_FH_2FH_GAIN = common dso_local global i32 0, align 4
@TM6010_REQ08_R1A_A_NICAM_SER_MAX = common dso_local global i32 0, align 4
@TM6010_REQ08_R1B_A_NICAM_SER_MIN = common dso_local global i32 0, align 4
@REQ_08_SET_GET_AVREG_BIT = common dso_local global i32 0, align 4
@TM6010_REQ08_R1F_A_TEST_INTF_SEL = common dso_local global i32 0, align 4
@TM6010_REQ08_R20_A_TEST_PIN_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_set_audio_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_set_audio_std(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i32 4, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %7 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %8 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %1
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %13 = load i32, i32* @TM6010_REQ08_R01_A_INIT, align 4
  %14 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %12, i32 %13, i32 0)
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %16 = load i32, i32* @TM6010_REQ08_R02_A_FIX_GAIN_CTRL, align 4
  %17 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %15, i32 %16, i32 4)
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %19 = load i32, i32* @TM6010_REQ08_R03_A_AUTO_GAIN_CTRL, align 4
  %20 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %18, i32 %19, i32 0)
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %22 = load i32, i32* @TM6010_REQ08_R04_A_SIF_AMP_CTRL, align 4
  %23 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %21, i32 %22, i32 128)
  %24 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %25 = load i32, i32* @TM6010_REQ08_R05_A_STANDARD_MOD, align 4
  %26 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %24, i32 %25, i32 12)
  %27 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %28 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_TUNER_MODE_MONO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %34 = load i32, i32* @TM6010_REQ08_R06_A_SOUND_MOD, align 4
  %35 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %33, i32 %34, i32 0)
  br label %47

36:                                               ; preds = %11
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %38 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %44 = load i32, i32* @TM6010_REQ08_R06_A_SOUND_MOD, align 4
  %45 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %43, i32 %44, i32 2)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %49 = load i32, i32* @TM6010_REQ08_R09_A_MAIN_VOL, align 4
  %50 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %48, i32 %49, i32 24)
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %52 = load i32, i32* @TM6010_REQ08_R0C_A_ASD_THRES2, align 4
  %53 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %51, i32 %52, i32 10)
  %54 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %55 = load i32, i32* @TM6010_REQ08_R0D_A_AMD_THRES, align 4
  %56 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %54, i32 %55, i32 64)
  %57 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %58 = load i32, i32* @TM6010_REQ08_RF1_AADC_POWER_DOWN, align 4
  %59 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %57, i32 %58, i32 254)
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %61 = load i32, i32* @TM6010_REQ08_R1E_A_GAIN_DEEMPH_OUT, align 4
  %62 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %60, i32 %61, i32 19)
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %64 = load i32, i32* @TM6010_REQ08_R01_A_INIT, align 4
  %65 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %63, i32 %64, i32 128)
  %66 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %67 = load i32, i32* @TM6010_REQ07_RFE_POWER_DOWN, align 4
  %68 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %66, i32 %67, i32 255)
  store i32 0, i32* %2, align 4
  br label %271

69:                                               ; preds = %1
  %70 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %71 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @V4L2_STD_NTSC, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, 4
  store i32 %79, i32* %5, align 4
  br label %168

80:                                               ; preds = %69
  %81 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %82 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @V4L2_STD_NTSC, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, 67
  store i32 %90, i32* %5, align 4
  br label %167

91:                                               ; preds = %80
  %92 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %93 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @V4L2_STD_MN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, 34
  store i32 %100, i32* %5, align 4
  br label %166

101:                                              ; preds = %91
  %102 = load i32, i32* @tm6010_a_mode, align 4
  switch i32 %102, label %165 [
    i32 0, label %103
    i32 1, label %117
    i32 2, label %127
    i32 3, label %155
  ]

103:                                              ; preds = %101
  %104 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %105 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @V4L2_STD_SECAM, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %5, align 4
  br label %116

113:                                              ; preds = %103
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, 16
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %111
  br label %165

117:                                              ; preds = %101
  %118 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %119 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @V4L2_STD_DK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 9, i32* %5, align 4
  br label %126

125:                                              ; preds = %117
  store i32 5, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %124
  br label %165

127:                                              ; preds = %101
  %128 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %129 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @V4L2_STD_DK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 6, i32* %5, align 4
  br label %154

135:                                              ; preds = %127
  %136 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %137 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 8, i32* %5, align 4
  br label %153

143:                                              ; preds = %135
  %144 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %145 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 10, i32* %5, align 4
  store i32 2, i32* %4, align 4
  br label %152

151:                                              ; preds = %143
  store i32 7, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152, %142
  br label %154

154:                                              ; preds = %153, %134
  br label %165

155:                                              ; preds = %101
  %156 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %157 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @V4L2_STD_DK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 11, i32* %5, align 4
  br label %164

163:                                              ; preds = %155
  store i32 2, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %165

165:                                              ; preds = %101, %164, %154, %126, %116
  br label %166

166:                                              ; preds = %165, %98
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %77
  %169 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %170 = load i32, i32* @TM6010_REQ08_R01_A_INIT, align 4
  %171 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %169, i32 %170, i32 0)
  %172 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %173 = load i32, i32* @TM6010_REQ08_R02_A_FIX_GAIN_CTRL, align 4
  %174 = load i32, i32* %4, align 4
  %175 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %172, i32 %173, i32 %174)
  %176 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %177 = load i32, i32* @TM6010_REQ08_R03_A_AUTO_GAIN_CTRL, align 4
  %178 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %176, i32 %177, i32 0)
  %179 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %180 = load i32, i32* @TM6010_REQ08_R04_A_SIF_AMP_CTRL, align 4
  %181 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %179, i32 %180, i32 160)
  %182 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %183 = load i32, i32* @TM6010_REQ08_R05_A_STANDARD_MOD, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %182, i32 %183, i32 %184)
  %186 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %187 = load i32, i32* @TM6010_REQ08_R06_A_SOUND_MOD, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %186, i32 %187, i32 %188)
  %190 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %191 = load i32, i32* @TM6010_REQ08_R07_A_LEFT_VOL, align 4
  %192 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %190, i32 %191, i32 0)
  %193 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %194 = load i32, i32* @TM6010_REQ08_R08_A_RIGHT_VOL, align 4
  %195 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %193, i32 %194, i32 0)
  %196 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %197 = load i32, i32* @TM6010_REQ08_R09_A_MAIN_VOL, align 4
  %198 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %196, i32 %197, i32 8)
  %199 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %200 = load i32, i32* @TM6010_REQ08_R0A_A_I2S_MOD, align 4
  %201 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %199, i32 %200, i32 145)
  %202 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %203 = load i32, i32* @TM6010_REQ08_R0B_A_ASD_THRES1, align 4
  %204 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %202, i32 %203, i32 32)
  %205 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %206 = load i32, i32* @TM6010_REQ08_R0C_A_ASD_THRES2, align 4
  %207 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %205, i32 %206, i32 18)
  %208 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %209 = load i32, i32* @TM6010_REQ08_R0D_A_AMD_THRES, align 4
  %210 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %208, i32 %209, i32 32)
  %211 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %212 = load i32, i32* @TM6010_REQ08_R0E_A_MONO_THRES1, align 4
  %213 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %211, i32 %212, i32 240)
  %214 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %215 = load i32, i32* @TM6010_REQ08_R0F_A_MONO_THRES2, align 4
  %216 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %214, i32 %215, i32 128)
  %217 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %218 = load i32, i32* @TM6010_REQ08_R10_A_MUTE_THRES1, align 4
  %219 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %217, i32 %218, i32 192)
  %220 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %221 = load i32, i32* @TM6010_REQ08_R11_A_MUTE_THRES2, align 4
  %222 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %220, i32 %221, i32 128)
  %223 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %224 = load i32, i32* @TM6010_REQ08_R12_A_AGC_U, align 4
  %225 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %223, i32 %224, i32 18)
  %226 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %227 = load i32, i32* @TM6010_REQ08_R13_A_AGC_ERR_T, align 4
  %228 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %226, i32 %227, i32 254)
  %229 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %230 = load i32, i32* @TM6010_REQ08_R14_A_AGC_GAIN_INIT, align 4
  %231 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %229, i32 %230, i32 32)
  %232 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %233 = load i32, i32* @TM6010_REQ08_R15_A_AGC_STEP_THR, align 4
  %234 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %232, i32 %233, i32 20)
  %235 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %236 = load i32, i32* @TM6010_REQ08_R16_A_AGC_GAIN_MAX, align 4
  %237 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %235, i32 %236, i32 254)
  %238 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %239 = load i32, i32* @TM6010_REQ08_R17_A_AGC_GAIN_MIN, align 4
  %240 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %238, i32 %239, i32 1)
  %241 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %242 = load i32, i32* @TM6010_REQ08_R18_A_TR_CTRL, align 4
  %243 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %241, i32 %242, i32 160)
  %244 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %245 = load i32, i32* @TM6010_REQ08_R19_A_FH_2FH_GAIN, align 4
  %246 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %244, i32 %245, i32 50)
  %247 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %248 = load i32, i32* @TM6010_REQ08_R1A_A_NICAM_SER_MAX, align 4
  %249 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %247, i32 %248, i32 100)
  %250 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %251 = load i32, i32* @TM6010_REQ08_R1B_A_NICAM_SER_MIN, align 4
  %252 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %250, i32 %251, i32 32)
  %253 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %254 = load i32, i32* @REQ_08_SET_GET_AVREG_BIT, align 4
  %255 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %253, i32 %254, i32 28, i32 0)
  %256 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %257 = load i32, i32* @REQ_08_SET_GET_AVREG_BIT, align 4
  %258 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %256, i32 %257, i32 29, i32 0)
  %259 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %260 = load i32, i32* @TM6010_REQ08_R1E_A_GAIN_DEEMPH_OUT, align 4
  %261 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %259, i32 %260, i32 19)
  %262 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %263 = load i32, i32* @TM6010_REQ08_R1F_A_TEST_INTF_SEL, align 4
  %264 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %262, i32 %263, i32 0)
  %265 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %266 = load i32, i32* @TM6010_REQ08_R20_A_TEST_PIN_SEL, align 4
  %267 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %265, i32 %266, i32 0)
  %268 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %269 = load i32, i32* @TM6010_REQ08_R01_A_INIT, align 4
  %270 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %268, i32 %269, i32 128)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %168, %47
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
