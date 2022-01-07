; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_init_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_init_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_ADC_CTL = common dso_local global i32 0, align 4
@AR_PHY_ADC_CTL_OFF_PWDADC = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", align 1
@NFCAL_PENDING = common dso_local global i32 0, align 4
@IQ_MISMATCH_CAL = common dso_local global i32 0, align 4
@ADC_GAIN_CAL = common dso_local global i32 0, align 4
@ADC_DC_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"enabling ADC Gain Calibration\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"enabling ADC DC Calibration\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"enabling IQ Calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_init_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_init_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %6, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call i64 @AR_SREV_9271(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %15 = call i32 @ar9285_hw_cl_cal(%struct.ath_hw* %13, %struct.ath9k_channel* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %231

18:                                               ; preds = %12
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = call i64 @AR_SREV_9285(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %30 = call i32 @ar9285_hw_clc(%struct.ath_hw* %28, %struct.ath9k_channel* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %231

33:                                               ; preds = %27
  br label %92

34:                                               ; preds = %23, %19
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = call i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %45 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %46 = call i32 @REG_CLR_BIT(%struct.ath_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %50 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %51 = call i32 @REG_SET_BIT(%struct.ath_hw* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %57 = call i32 @REG_READ(%struct.ath_hw* %55, i32 %56)
  %58 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 %54, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %63 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %64 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %65 = call i32 @ath9k_hw_wait(%struct.ath_hw* %61, i32 %62, i32 %63, i32 0, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %52
  %68 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %69 = load i32, i32* @CALIBRATE, align 4
  %70 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %71 = sdiv i32 %70, 1000
  %72 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %68, i32 %69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %3, align 4
  br label %231

73:                                               ; preds = %52
  %74 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %75 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = call i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %83 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %84 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %85 = call i32 @REG_SET_BIT(%struct.ath_hw* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %89 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %90 = call i32 @REG_CLR_BIT(%struct.ath_hw* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %73
  br label %92

92:                                               ; preds = %91, %33
  br label %93

93:                                               ; preds = %92, %18
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = call i32 @ar9002_hw_pa_cal(%struct.ath_hw* %94, i32 1)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %98 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %96, %struct.ath9k_channel* %97)
  %99 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %100 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %99, i32 1)
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp ne %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load i32, i32* @NFCAL_PENDING, align 4
  %107 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %106, i32* %110)
  br label %112

112:                                              ; preds = %105, %93
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %115, i32 0, i32 7
  store i32* null, i32** %116, align 8
  %117 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %118 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  %119 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %120 = call i64 @AR_SREV_9100(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %112
  %123 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %124 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %220

126:                                              ; preds = %122, %112
  %127 = load i32, i32* @IQ_MISMATCH_CAL, align 4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load i32, i32* @ADC_GAIN_CAL, align 4
  %135 = load i32, i32* @ADC_DC_CAL, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %138 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %133, %126
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = call i64 @AR_SREV_9287(%struct.ath_hw* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i32, i32* @ADC_GAIN_CAL, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %149 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %141
  %153 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %154 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %155 = load i32, i32* @ADC_GAIN_CAL, align 4
  %156 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %153, %struct.ath9k_channel* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %159, i32 0, i32 6
  %161 = call i32 @INIT_CAL(i32* %160)
  %162 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %163 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %164 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %163, i32 0, i32 6
  %165 = call i32 @INSERT_CAL(%struct.ath_hw* %162, i32* %164)
  %166 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %167 = load i32, i32* @CALIBRATE, align 4
  %168 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %166, i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %158, %152
  %170 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %171 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %172 = load i32, i32* @ADC_DC_CAL, align 4
  %173 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %170, %struct.ath9k_channel* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %176, i32 0, i32 5
  %178 = call i32 @INIT_CAL(i32* %177)
  %179 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %180, i32 0, i32 5
  %182 = call i32 @INSERT_CAL(%struct.ath_hw* %179, i32* %181)
  %183 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %184 = load i32, i32* @CALIBRATE, align 4
  %185 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %183, i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %175, %169
  %187 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %188 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %189 = load i32, i32* @IQ_MISMATCH_CAL, align 4
  %190 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %187, %struct.ath9k_channel* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %194 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %193, i32 0, i32 4
  %195 = call i32 @INIT_CAL(i32* %194)
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %198 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %197, i32 0, i32 4
  %199 = call i32 @INSERT_CAL(%struct.ath_hw* %196, i32* %198)
  %200 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %201 = load i32, i32* @CALIBRATE, align 4
  %202 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %200, i32 %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %192, %186
  %204 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %205 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %208 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %207, i32 0, i32 2
  store i32* %206, i32** %208, align 8
  %209 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %210 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %203
  %214 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %215 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %214, i32* %217)
  br label %219

219:                                              ; preds = %213, %203
  br label %220

220:                                              ; preds = %219, %122
  %221 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %222 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = icmp ne %struct.TYPE_2__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %227 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %226, i32 0, i32 1
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %225, %220
  store i32 1, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %67, %32, %17
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ar9285_hw_cl_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9285_hw_clc(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9002_hw_pa_cal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @ar9002_hw_is_cal_supported(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @INIT_CAL(i32*) #1

declare dso_local i32 @INSERT_CAL(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
