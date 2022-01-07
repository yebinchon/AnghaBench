; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_iqcalibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_iqcalibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32*, i32*, i32* }
%struct.ath_common = type { i32 }

@ar9003_hw_iqcalibrate.offset_array = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Starting IQ Cal and Correction for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Original: Chn %d iq_corr_meas = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"iqCorrNeg is 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Chn %d iCoff = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Chn %d qCoff = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Chn %d : iCoff = 0x%x  qCoff = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Register offset (0x%04x) before update = 0x%x\0A\00", align 1
@AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [73 x i8] c"Register offset (0x%04x) QI COFF (bitfields 0x%08x) after update = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"Register offset (0x%04x) QQ COFF (bitfields 0x%08x) after update = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", align 1
@AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [87 x i8] c"IQ Cal and Correction (offset 0x%04x) enabled (bit position 0x%08x). New Value 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_iqcalibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_iqcalibrate(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %223, %2
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %226

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %44 = load i32, i32* @CALIBRATE, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %48 = load i32, i32* @CALIBRATE, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %47, i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %56)
  store i32 0, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ugt i32 %58, -2147483648
  br i1 %59, label %60, label %64

60:                                               ; preds = %21
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 -1, %61
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %21
  %65 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %66 = load i32, i32* @CALIBRATE, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %65, i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %71 = load i32, i32* @CALIBRATE, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %70, i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %76 = load i32, i32* @CALIBRATE, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %75, i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %79, 2
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = sdiv i32 %83, 256
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 64
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %222

89:                                               ; preds = %64
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %222

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sdiv i32 %96, %97
  %99 = sub nsw i32 %98, 64
  store i32 %99, i32* %11, align 4
  %100 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %101 = load i32, i32* @CALIBRATE, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %100, i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %106 = load i32, i32* @CALIBRATE, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %105, i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 63
  br i1 %111, label %112, label %113

112:                                              ; preds = %92
  store i32 63, i32* %12, align 4
  br label %118

113:                                              ; preds = %92
  %114 = load i32, i32* %12, align 4
  %115 = icmp sle i32 %114, -63
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 -63, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %113
  br label %118

118:                                              ; preds = %117, %112
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %125, 63
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 63, i32* %11, align 4
  br label %133

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  %130 = icmp sle i32 %129, -63
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 -63, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %134, 127
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, 127
  store i32 %137, i32* %11, align 4
  %138 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %139 = load i32, i32* @CALIBRATE, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %138, i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %140, i32 %141, i32 %142)
  %144 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %145 = load i32, i32* @CALIBRATE, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @REG_READ(%struct.ath_hw* %150, i32 %154)
  %156 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %144, i32 %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %149, i32 %155)
  %157 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %158 = call i64 @AR_SREV_9565(%struct.ath_hw* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %133
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 63
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 63
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, -63
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, -63
  br i1 %171, label %172, label %173

172:                                              ; preds = %169, %166, %163, %160
  br label %236

173:                                              ; preds = %169, %133
  %174 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %174, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %182, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %191 = load i32, i32* @CALIBRATE, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, align 4
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @REG_READ(%struct.ath_hw* %197, i32 %201)
  %203 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %190, i32 %191, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %195, i32 %196, i32 %202)
  %204 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %205 = load i32, i32* @CALIBRATE, align 4
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, align 4
  %211 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [3 x i32], [3 x i32]* @ar9003_hw_iqcalibrate.offset_array, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @REG_READ(%struct.ath_hw* %211, i32 %215)
  %217 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %204, i32 %205, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %209, i32 %210, i32 %216)
  %218 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %219 = load i32, i32* @CALIBRATE, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %218, i32 %219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %173, %89, %64
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %17

226:                                              ; preds = %17
  %227 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %228 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE, align 4
  %229 = call i32 @REG_SET_BIT(%struct.ath_hw* %227, i32 130, i32 %228)
  %230 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %231 = load i32, i32* @CALIBRATE, align 4
  %232 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE, align 4
  %233 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %234 = call i32 @REG_READ(%struct.ath_hw* %233, i32 130)
  %235 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %230, i32 %231, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0), i32 130, i32 %232, i32 %234)
  br label %236

236:                                              ; preds = %226, %172
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
