; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-stds.c_tm6000_set_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-stds.c_tm6000_set_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.tm6000_core = type { i64, i64, i32, %struct.tm6000_input, %struct.tm6000_input*, i32 }
%struct.tm6000_input = type { i32, i32, i64, i32 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ08_RE3_ADC_IN1_SEL = common dso_local global i32 0, align 4
@TM6010_REQ08_REA_BUFF_DRV_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_REB_SIF_GAIN_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_REC_REVERSE_YC_CTRL = common dso_local global i32 0, align 4
@TM6010_REQ08_RED_GAIN_SEL = common dso_local global i32 0, align 4
@TM6010_REQ08_RE4_ADC_IN2_SEL = common dso_local global i32 0, align 4
@TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG = common dso_local global i32 0, align 4
@TM6010_REQ07_R07_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@TM6010_REQ08_RE2_POWER_DOWN_CTRL1 = common dso_local global i32 0, align 4
@TM6010_REQ08_RE6_POWER_DOWN_CTRL2 = common dso_local global i32 0, align 4
@TM6010_REQ08_RF1_AADC_POWER_DOWN = common dso_local global i32 0, align 4
@TM6010_REQ07_RFE_POWER_DOWN = common dso_local global i32 0, align 4
@TM6000_REQ07_RE3_VADC_INP_LPF_SEL1 = common dso_local global i32 0, align 4
@TM6000_REQ07_RE5_VADC_INP_LPF_SEL2 = common dso_local global i32 0, align 4
@TM6000_REQ07_RE8_VADC_PWDOWN_CTL = common dso_local global i32 0, align 4
@REQ_03_SET_GET_MCU_PIN = common dso_local global i32 0, align 4
@TM6000_REQ07_REB_VADC_AADC_MODE = common dso_local global i32 0, align 4
@TM6000_INPUT_SVIDEO = common dso_local global i64 0, align 8
@svideo_stds = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@composite_stds = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_set_standard(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca %struct.tm6000_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 138, i32* %7, align 4
  store i32 252, i32* %8, align 4
  store i32 240, i32* %9, align 4
  store i32 15, i32* %10, align 4
  %11 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %12 = call i32 @tm6000_get_std_res(%struct.tm6000_core* %11)
  %13 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %14 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %19 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %18, i32 0, i32 4
  %20 = load %struct.tm6000_input*, %struct.tm6000_input** %19, align 8
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %22 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %20, i64 %23
  store %struct.tm6000_input* %24, %struct.tm6000_input** %4, align 8
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %27 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %26, i32 0, i32 3
  store %struct.tm6000_input* %27, %struct.tm6000_input** %4, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %30 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TM6010, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %162

34:                                               ; preds = %28
  %35 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %36 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %93 [
    i32 130, label %38
    i32 128, label %56
    i32 129, label %74
  ]

38:                                               ; preds = %34
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %40 = load i32, i32* @TM6010_REQ08_RE3_ADC_IN1_SEL, align 4
  %41 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %39, i32 %40, i32 244)
  %42 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %43 = load i32, i32* @TM6010_REQ08_REA_BUFF_DRV_CTRL, align 4
  %44 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %42, i32 %43, i32 241)
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %46 = load i32, i32* @TM6010_REQ08_REB_SIF_GAIN_CTRL, align 4
  %47 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %45, i32 %46, i32 224)
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %49 = load i32, i32* @TM6010_REQ08_REC_REVERSE_YC_CTRL, align 4
  %50 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %48, i32 %49, i32 194)
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %52 = load i32, i32* @TM6010_REQ08_RED_GAIN_SEL, align 4
  %53 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %51, i32 %52, i32 232)
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %94

56:                                               ; preds = %34
  %57 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %58 = load i32, i32* @TM6010_REQ08_RE3_ADC_IN1_SEL, align 4
  %59 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %57, i32 %58, i32 248)
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %61 = load i32, i32* @TM6010_REQ08_REA_BUFF_DRV_CTRL, align 4
  %62 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %60, i32 %61, i32 241)
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %64 = load i32, i32* @TM6010_REQ08_REB_SIF_GAIN_CTRL, align 4
  %65 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %63, i32 %64, i32 224)
  %66 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %67 = load i32, i32* @TM6010_REQ08_REC_REVERSE_YC_CTRL, align 4
  %68 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %66, i32 %67, i32 194)
  %69 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %70 = load i32, i32* @TM6010_REQ08_RED_GAIN_SEL, align 4
  %71 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %69, i32 %70, i32 232)
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %94

74:                                               ; preds = %34
  %75 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %76 = load i32, i32* @TM6010_REQ08_RE3_ADC_IN1_SEL, align 4
  %77 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %75, i32 %76, i32 252)
  %78 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %79 = load i32, i32* @TM6010_REQ08_RE4_ADC_IN2_SEL, align 4
  %80 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %78, i32 %79, i32 248)
  store i32 0, i32* %10, align 4
  %81 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %82 = load i32, i32* @TM6010_REQ08_REA_BUFF_DRV_CTRL, align 4
  %83 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %81, i32 %82, i32 242)
  %84 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %85 = load i32, i32* @TM6010_REQ08_REB_SIF_GAIN_CTRL, align 4
  %86 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %84, i32 %85, i32 240)
  %87 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %88 = load i32, i32* @TM6010_REQ08_REC_REVERSE_YC_CTRL, align 4
  %89 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %87, i32 %88, i32 194)
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %91 = load i32, i32* @TM6010_REQ08_RED_GAIN_SEL, align 4
  %92 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %90, i32 %91, i32 224)
  br label %94

93:                                               ; preds = %34
  br label %94

94:                                               ; preds = %93, %74, %56, %38
  %95 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %96 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %144 [
    i32 134, label %98
    i32 133, label %105
    i32 132, label %112
    i32 131, label %128
  ]

98:                                               ; preds = %94
  %99 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %100 = load i32, i32* @TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG, align 4
  %101 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %99, i32 %100, i32 0, i32 15)
  %102 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %103 = load i32, i32* @TM6010_REQ07_R07_OUTPUT_CONTROL, align 4
  %104 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %102, i32 %103, i32 16, i32 240)
  br label %145

105:                                              ; preds = %94
  %106 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %107 = load i32, i32* @TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG, align 4
  %108 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %106, i32 %107, i32 8, i32 15)
  %109 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %110 = load i32, i32* @TM6010_REQ07_R07_OUTPUT_CONTROL, align 4
  %111 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %109, i32 %110, i32 16, i32 240)
  br label %145

112:                                              ; preds = %94
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, 2
  store i32 %114, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, 64
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, 2
  store i32 %118, i32* %8, align 4
  %119 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %120 = load i32, i32* @TM6010_REQ08_RE4_ADC_IN2_SEL, align 4
  %121 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %119, i32 %120, i32 243)
  %122 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %123 = load i32, i32* @TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG, align 4
  %124 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %122, i32 %123, i32 2, i32 15)
  %125 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %126 = load i32, i32* @TM6010_REQ07_R07_OUTPUT_CONTROL, align 4
  %127 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %125, i32 %126, i32 48, i32 240)
  br label %145

128:                                              ; preds = %94
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, 2
  store i32 %130, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, 64
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, 2
  store i32 %134, i32* %8, align 4
  %135 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %136 = load i32, i32* @TM6010_REQ08_RE4_ADC_IN2_SEL, align 4
  %137 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %135, i32 %136, i32 247)
  %138 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %139 = load i32, i32* @TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG, align 4
  %140 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %138, i32 %139, i32 2, i32 15)
  %141 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %142 = load i32, i32* @TM6010_REQ07_R07_OUTPUT_CONTROL, align 4
  %143 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %141, i32 %142, i32 48, i32 240)
  br label %145

144:                                              ; preds = %94
  br label %145

145:                                              ; preds = %144, %128, %112, %105, %98
  %146 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %147 = load i32, i32* @TM6010_REQ08_RE2_POWER_DOWN_CTRL1, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %146, i32 %147, i32 %148)
  %150 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %151 = load i32, i32* @TM6010_REQ08_RE6_POWER_DOWN_CTRL2, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %150, i32 %151, i32 %152)
  %154 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %155 = load i32, i32* @TM6010_REQ08_RF1_AADC_POWER_DOWN, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %154, i32 %155, i32 %156)
  %158 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %159 = load i32, i32* @TM6010_REQ07_RFE_POWER_DOWN, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %158, i32 %159, i32 %160)
  br label %229

162:                                              ; preds = %28
  %163 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %164 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %214 [
    i32 130, label %166
    i32 128, label %182
    i32 129, label %198
  ]

166:                                              ; preds = %162
  %167 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %168 = load i32, i32* @TM6000_REQ07_RE3_VADC_INP_LPF_SEL1, align 4
  %169 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %167, i32 %168, i32 16)
  %170 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %171 = load i32, i32* @TM6000_REQ07_RE5_VADC_INP_LPF_SEL2, align 4
  %172 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %170, i32 %171, i32 0)
  %173 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %174 = load i32, i32* @TM6000_REQ07_RE8_VADC_PWDOWN_CTL, align 4
  %175 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %173, i32 %174, i32 15)
  %176 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %177 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %178 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %179 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %176, i32 %177, i32 %180, i32 0)
  br label %215

182:                                              ; preds = %162
  %183 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %184 = load i32, i32* @TM6000_REQ07_RE3_VADC_INP_LPF_SEL1, align 4
  %185 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %183, i32 %184, i32 0)
  %186 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %187 = load i32, i32* @TM6000_REQ07_RE5_VADC_INP_LPF_SEL2, align 4
  %188 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %186, i32 %187, i32 0)
  %189 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %190 = load i32, i32* @TM6000_REQ07_RE8_VADC_PWDOWN_CTL, align 4
  %191 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %189, i32 %190, i32 15)
  %192 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %193 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %194 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %195 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %192, i32 %193, i32 %196, i32 0)
  br label %215

198:                                              ; preds = %162
  %199 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %200 = load i32, i32* @TM6000_REQ07_RE3_VADC_INP_LPF_SEL1, align 4
  %201 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %199, i32 %200, i32 16)
  %202 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %203 = load i32, i32* @TM6000_REQ07_RE5_VADC_INP_LPF_SEL2, align 4
  %204 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %202, i32 %203, i32 16)
  %205 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %206 = load i32, i32* @TM6000_REQ07_RE8_VADC_PWDOWN_CTL, align 4
  %207 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %205, i32 %206, i32 0)
  %208 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %209 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %210 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %211 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (%struct.tm6000_core*, i32, i32, ...) @tm6000_set_reg(%struct.tm6000_core* %208, i32 %209, i32 %212, i32 1)
  br label %215

214:                                              ; preds = %162
  br label %215

215:                                              ; preds = %214, %198, %182, %166
  %216 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %217 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  switch i32 %218, label %227 [
    i32 134, label %219
    i32 133, label %223
  ]

219:                                              ; preds = %215
  %220 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %221 = load i32, i32* @TM6000_REQ07_REB_VADC_AADC_MODE, align 4
  %222 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %220, i32 %221, i32 0, i32 15)
  br label %228

223:                                              ; preds = %215
  %224 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %225 = load i32, i32* @TM6000_REQ07_REB_VADC_AADC_MODE, align 4
  %226 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %224, i32 %225, i32 4, i32 15)
  br label %228

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %223, %219
  br label %229

229:                                              ; preds = %228, %145
  %230 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %231 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @TM6000_INPUT_SVIDEO, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %269

235:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %263, %235
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svideo_stds, align 8
  %239 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %238)
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %266

241:                                              ; preds = %236
  %242 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %243 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svideo_stds, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %244, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %241
  %254 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** @svideo_stds, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @tm6000_load_std(%struct.tm6000_core* %254, i32 %260)
  store i32 %261, i32* %6, align 4
  br label %303

262:                                              ; preds = %241
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %236

266:                                              ; preds = %236
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %2, align 4
  br label %329

269:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %297, %269
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** @composite_stds, align 8
  %273 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %272)
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %300

275:                                              ; preds = %270
  %276 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %277 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** @composite_stds, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %278, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %275
  %288 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** @composite_stds, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @tm6000_load_std(%struct.tm6000_core* %288, i32 %294)
  store i32 %295, i32* %6, align 4
  br label %303

296:                                              ; preds = %275
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %270

300:                                              ; preds = %270
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %2, align 4
  br label %329

303:                                              ; preds = %287, %253
  %304 = load i32, i32* %6, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* %6, align 4
  store i32 %307, i32* %2, align 4
  br label %329

308:                                              ; preds = %303
  %309 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %310 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @TM6010, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %327

314:                                              ; preds = %308
  %315 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %316 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 132
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load %struct.tm6000_input*, %struct.tm6000_input** %4, align 8
  %321 = getelementptr inbounds %struct.tm6000_input, %struct.tm6000_input* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 131
  br i1 %323, label %324, label %327

324:                                              ; preds = %319, %314
  %325 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %326 = call i32 @tm6000_set_audio_std(%struct.tm6000_core* %325)
  br label %327

327:                                              ; preds = %324, %319, %308
  %328 = call i32 @msleep(i32 40)
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %327, %306, %300, %266
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local i32 @tm6000_get_std_res(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, ...) #1

declare dso_local i32 @tm6000_set_reg_mask(%struct.tm6000_core*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @tm6000_load_std(%struct.tm6000_core*, i32) #1

declare dso_local i32 @tm6000_set_audio_std(%struct.tm6000_core*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
