; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096_set_param_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096_set_param_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend*, i32)*, {}*, i32 (%struct.dvb_frontend*, i32, i32, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32*, i32, i32)* }

@CT_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"only 6MHz bandwidth is supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dib8090_pll_config_12mhz = common dso_local global i32 0, align 4
@DEMOD_TIMF_SET = common dso_local global i32 0, align 4
@BAND_CBAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"tuning in CBAND - soft-AGC startup\0A\00", align 1
@CT_AGC_START = common dso_local global i32 0, align 4
@CT_AGC_STEP_0 = common dso_local global i32 0, align 4
@CT_AGC_STEP_1 = common dso_local global i32 0, align 4
@CT_AGC_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"switching to PWM AGC\0A\00", align 1
@CT_DEMOD_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"not tuning in CBAND - standard AGC startup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8096_set_param_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096_set_param_override(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %17, align 8
  store %struct.dvb_usb_adapter* %18, %struct.dvb_usb_adapter** %4, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %20, align 8
  store %struct.dib0700_adapter_state* %21, %struct.dib0700_adapter_state** %5, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 1000
  %27 = call i32 @BAND_OF_FREQUENCY(i32 %26)
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* @CT_SHUTDOWN, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %30 [
    i32 128, label %36
    i32 129, label %43
  ]

30:                                               ; preds = %1
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %1, %30
  %37 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32 (%struct.dvb_frontend*, i32, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32, i32)** %39, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = call i32 %40(%struct.dvb_frontend* %41, i32 3, i32 0, i32 1)
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32 (%struct.dvb_frontend*, i32, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32, i32)** %46, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %49 = call i32 %47(%struct.dvb_frontend* %48, i32 3, i32 0, i32 0)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %52 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.dvb_frontend*)**
  %54 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %53, align 8
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = call i32 %54(%struct.dvb_frontend* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %2, align 4
  br label %210

61:                                               ; preds = %50
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 6000000
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %210

71:                                               ; preds = %61
  %72 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %73 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32 (%struct.dvb_frontend*, i32*, i32, i32)*, i32 (%struct.dvb_frontend*, i32*, i32, i32)** %74, align 8
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 1000
  %82 = call i32 %75(%struct.dvb_frontend* %76, i32* @dib8090_pll_config_12mhz, i32 %81, i32 0)
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = call i32 @dib8090_compute_pll_parameters(%struct.dvb_frontend* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 17
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  store i32 21387946, i32* %11, align 4
  br label %99

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 18
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 20199727, i32* %11, align 4
  br label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 19
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 19136583, i32* %11, align 4
  br label %97

96:                                               ; preds = %92
  store i32 18179756, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %101 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i32 (%struct.dvb_frontend*, i32*, i32, i32)*, i32 (%struct.dvb_frontend*, i32*, i32, i32)** %102, align 8
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 1000
  %110 = load i32, i32* %6, align 4
  %111 = call i32 %103(%struct.dvb_frontend* %104, i32* @dib8090_pll_config_12mhz, i32 %109, i32 %110)
  %112 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %113 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32)** %114, align 8
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %117 = load i32, i32* @DEMOD_TIMF_SET, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 %115(%struct.dvb_frontend* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @BAND_CBAND, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %99
  %124 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %125 = call i32 @dib0090_get_wbd_target(%struct.dvb_frontend* %124)
  %126 = mul nsw i32 %125, 8
  %127 = mul nsw i32 %126, 18
  %128 = sdiv i32 %127, 33
  %129 = add nsw i32 %128, 1
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %8, align 4
  %131 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %132 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %133, align 8
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 %134(%struct.dvb_frontend* %135, i32 %136)
  br label %138

138:                                              ; preds = %123, %99
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @BAND_CBAND, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %205

142:                                              ; preds = %138
  %143 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %145 = load i32, i32* @CT_AGC_START, align 4
  %146 = call i32 @dib0090_set_tune_state(%struct.dvb_frontend* %144, i32 %145)
  br label %147

147:                                              ; preds = %183, %142
  %148 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %149 = call i32 @dib0090_gain_control(%struct.dvb_frontend* %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @msleep(i32 %150)
  %152 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %153 = call i32 @dib0090_get_tune_state(%struct.dvb_frontend* %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @CT_AGC_STEP_0, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %159 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32 (%struct.dvb_frontend*, i32, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32, i32)** %160, align 8
  %162 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %163 = call i32 %161(%struct.dvb_frontend* %162, i32 6, i32 0, i32 1)
  br label %182

164:                                              ; preds = %147
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @CT_AGC_STEP_1, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %170 = call i32 @dib0090_get_current_gain(%struct.dvb_frontend* %169, i32* null, i32* null, i32* %10, i32* %9)
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 2000
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %175 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32 (%struct.dvb_frontend*, i32, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32, i32)** %176, align 8
  %178 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %179 = call i32 %177(%struct.dvb_frontend* %178, i32 6, i32 0, i32 0)
  br label %180

180:                                              ; preds = %173, %168
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %157
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @CT_AGC_STOP, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %147, label %187

187:                                              ; preds = %183
  %188 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %190 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %189)
  %191 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %192 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = bitcast {}** %193 to i32 (%struct.dvb_frontend*)**
  %195 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %194, align 8
  %196 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %197 = call i32 %195(%struct.dvb_frontend* %196)
  %198 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %199 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %200, align 8
  %202 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %203 = load i32, i32* @CT_DEMOD_START, align 4
  %204 = call i32 %201(%struct.dvb_frontend* %202, i32 %203)
  br label %209

205:                                              ; preds = %138
  %206 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %207 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %208 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %207)
  br label %209

209:                                              ; preds = %205, %187
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %67, %59
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @dib8090_compute_pll_parameters(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_get_wbd_target(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_set_tune_state(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib0090_gain_control(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0090_get_tune_state(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_get_current_gain(%struct.dvb_frontend*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
