; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_pcoem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal_pcoem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ath9k_hw_cal_data* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_HW_CAP_RTT = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_OFFSET_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_PKDET_CAL = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RTT calibration to be done\0A\00", align 1
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AH_FASTCC = common dso_local global i32 0, align 4
@TX_CL_CAL = common dso_local global i32 0, align 4
@TXCLCAL_DONE = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@TX_IQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT = common dso_local global i32 0, align 4
@DELPT = common dso_local global i32 0, align 4
@TX_IQ_ON_AGC_CAL = common dso_local global i32 0, align 4
@TXIQCAL_DONE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_RX_DELAY = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_DIS = common dso_local global i32 0, align 4
@AR_PHY_RX_DELAY_DELAY = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_EN = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not stop baseband\0A\00", align 1
@SW_PKDET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_init_cal_pcoem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_init_cal_pcoem(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %6, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 5
  %21 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %20, align 8
  store %struct.ath9k_hw_cal_data* %21, %struct.ath9k_hw_cal_data** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %33 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR_PHY_AGC_CONTROL_PKDET_CAL, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %37, i32 %41, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %2
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %52 = call i32 @ar9003_hw_rtt_restore(%struct.ath_hw* %50, %struct.ath9k_channel* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %60 = load i32, i32* @CALIBRATE, align 4
  %61 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = call i32 @ar9003_hw_rtt_enable(%struct.ath_hw* %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = call i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw* %70, i32 0)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = call i32 @ar9003_hw_rtt_clear_hist(%struct.ath_hw* %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %82 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %83 = call i32 @REG_READ(%struct.ath_hw* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %88 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @AR_PHY_AGC_CONTROL_PKDET_CAL, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %96 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @REG_WRITE(%struct.ath_hw* %95, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %77
  %100 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AH_FASTCC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %99
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TX_CL_CAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %118 = icmp ne %struct.ath9k_hw_cal_data* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* @TXCLCAL_DONE, align 4
  %121 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %122 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %121, i32 0, i32 0
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %127 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %128 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %129 = call i32 @REG_CLR_BIT(%struct.ath_hw* %126, i32 %127, i32 %128)
  br label %135

130:                                              ; preds = %119, %116
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %133 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %134 = call i32 @REG_SET_BIT(%struct.ath_hw* %131, i32 %132, i32 %133)
  store i32 1, i32* %12, align 4
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %138 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %136
  %141 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %142 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TX_IQ_CAL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144, %140, %136
  br label %185

152:                                              ; preds = %144
  %153 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %154 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1, align 4
  %155 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT, align 4
  %156 = load i32, i32* @DELPT, align 4
  %157 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %159 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TX_IQ_ON_AGC_CAL, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %152
  %165 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %166 = icmp ne %struct.ath9k_hw_cal_data* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32, i32* @TXIQCAL_DONE, align 4
  %169 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %170 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %169, i32 0, i32 0
  %171 = call i64 @test_bit(i32 %168, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %175 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %176 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %177 = call i32 @REG_SET_BIT(%struct.ath_hw* %174, i32 %175, i32 %176)
  br label %183

178:                                              ; preds = %167, %164
  %179 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %180 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %181 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %182 = call i32 @REG_CLR_BIT(%struct.ath_hw* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  store i32 1, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %184

184:                                              ; preds = %183, %152
  br label %185

185:                                              ; preds = %184, %151
  %186 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %187 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %191 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %198 = call i32 @ar9003_mci_init_cal_req(%struct.ath_hw* %197, i32* %9)
  br label %199

199:                                              ; preds = %196, %193, %189, %185
  %200 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %201 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %202 = call i32 @REG_READ(%struct.ath_hw* %200, i32 %201)
  %203 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %208 = load i32, i32* @AR_PHY_RX_DELAY, align 4
  %209 = call i32 @REG_READ(%struct.ath_hw* %207, i32 %208)
  store i32 %209, i32* %14, align 4
  %210 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %211 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %212 = load i32, i32* @AR_PHY_ACTIVE_DIS, align 4
  %213 = call i32 @REG_WRITE(%struct.ath_hw* %210, i32 %211, i32 %212)
  %214 = call i32 @udelay(i32 5)
  %215 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %216 = load i32, i32* @AR_PHY_RX_DELAY, align 4
  %217 = load i32, i32* @AR_PHY_RX_DELAY_DELAY, align 4
  %218 = call i32 @REG_WRITE(%struct.ath_hw* %215, i32 %216, i32 %217)
  %219 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %220 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %221 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %222 = call i32 @REG_WRITE(%struct.ath_hw* %219, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %206, %199
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %228 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @AH_FASTCC, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %226, %223
  %234 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %235 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %236 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %237 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %238 = call i32 @REG_READ(%struct.ath_hw* %236, i32 %237)
  %239 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @REG_WRITE(%struct.ath_hw* %234, i32 %235, i32 %240)
  %242 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %243 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %244 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %245 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %246 = call i32 @ath9k_hw_wait(%struct.ath_hw* %242, i32 %243, i32 %244, i32 0, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %248 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @ar9003_hw_do_pcoem_manual_peak_cal(%struct.ath_hw* %247, %struct.ath9k_channel* %248, i32 %249)
  br label %251

251:                                              ; preds = %233, %226
  %252 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %253 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %254 = call i32 @REG_READ(%struct.ath_hw* %252, i32 %253)
  %255 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %260 = load i32, i32* @AR_PHY_RX_DELAY, align 4
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @REG_WRITE(%struct.ath_hw* %259, i32 %260, i32 %261)
  %263 = call i32 @udelay(i32 5)
  br label %264

264:                                              ; preds = %258, %251
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %264
  %269 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %270 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %277 = call i32 @ar9003_mci_init_cal_done(%struct.ath_hw* %276)
  br label %278

278:                                              ; preds = %275, %272, %268, %264
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %278
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %15, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %15, align 4
  %288 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %289 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @REG_WRITE(%struct.ath_hw* %288, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %284, %281, %278
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %300 = call i32 @ar9003_hw_rtt_disable(%struct.ath_hw* %299)
  br label %301

301:                                              ; preds = %298, %295
  %302 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %303 = load i32, i32* @CALIBRATE, align 4
  %304 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %305 = sdiv i32 %304, 1000
  %306 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %302, i32 %303, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %305)
  store i32 0, i32* %3, align 4
  br label %376

307:                                              ; preds = %292
  %308 = load i32, i32* %8, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw* %311, i32 0, i32 %312)
  br label %327

314:                                              ; preds = %307
  %315 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %316 = icmp ne %struct.ath9k_hw_cal_data* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i32, i32* @TXIQCAL_DONE, align 4
  %319 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %320 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %319, i32 0, i32 0
  %321 = call i64 @test_bit(i32 %318, i32* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %325 = call i32 @ar9003_hw_tx_iq_cal_reload(%struct.ath_hw* %324)
  br label %326

326:                                              ; preds = %323, %317, %314
  br label %327

327:                                              ; preds = %326, %310
  %328 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @ar9003_hw_cl_cal_post_proc(%struct.ath_hw* %328, i32 %329)
  %331 = load i32, i32* %11, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %365

333:                                              ; preds = %327
  %334 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %335 = icmp ne %struct.ath9k_hw_cal_data* %334, null
  br i1 %335, label %336, label %365

336:                                              ; preds = %333
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %362

339:                                              ; preds = %336
  %340 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %341 = call i32 @ath9k_hw_rfbus_req(%struct.ath_hw* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %339
  %344 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %345 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %344)
  %346 = call i32 @ath_err(%struct.ath_common* %345, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %359

347:                                              ; preds = %339
  %348 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %349 = call i32 @ar9003_hw_rtt_fill_hist(%struct.ath_hw* %348)
  %350 = load i32, i32* @SW_PKDET_DONE, align 4
  %351 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %352 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %351, i32 0, i32 0
  %353 = call i64 @test_bit(i32 %350, i32* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %347
  %356 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %357 = call i32 @ar9003_hw_rtt_load_hist(%struct.ath_hw* %356)
  br label %358

358:                                              ; preds = %355, %347
  br label %359

359:                                              ; preds = %358, %343
  %360 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %361 = call i32 @ath9k_hw_rfbus_done(%struct.ath_hw* %360)
  br label %362

362:                                              ; preds = %359, %336
  %363 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %364 = call i32 @ar9003_hw_rtt_disable(%struct.ath_hw* %363)
  br label %365

365:                                              ; preds = %362, %333, %327
  %366 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %367 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %368 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %371 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %366, i32 %369, i32 %372)
  %374 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %375 = call i32 @ar9003_hw_init_cal_common(%struct.ath_hw* %374)
  store i32 1, i32* %3, align 4
  br label %376

376:                                              ; preds = %365, %301
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_chain_masks(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_rtt_restore(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9003_hw_rtt_enable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_rtt_clear_hist(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_init_cal_req(%struct.ath_hw*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ar9003_hw_do_pcoem_manual_peak_cal(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ar9003_mci_init_cal_done(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_disable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_reload(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_cl_cal_post_proc(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_rfbus_req(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ar9003_hw_rtt_fill_hist(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_load_hist(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_rfbus_done(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_init_cal_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
