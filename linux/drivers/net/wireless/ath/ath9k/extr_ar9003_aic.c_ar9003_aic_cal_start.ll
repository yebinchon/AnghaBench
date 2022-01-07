; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_aic }
%struct.ath9k_hw_aic = type { i32, i32, i64, i64* }

@AR_PHY_AIC_SRAM_ADDR_B0 = common dso_local global i64 0, align 8
@ATH_AIC_SRAM_AUTO_INCREMENT = common dso_local global i32 0, align 4
@ATH_AIC_SRAM_CAL_OFFSET = common dso_local global i32 0, align 4
@ATH_AIC_MAX_BT_CHANNEL = common dso_local global i32 0, align 4
@AR_PHY_AIC_SRAM_DATA_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_CTRL_0_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_MON_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_MAX_HOP_COUNT = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_MIN_VALID_COUNT = common dso_local global i32 0, align 4
@AR_PHY_AIC_F_WLAN = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_CH_VALID_RESET = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AIC_BTTX_PWR_THR = common dso_local global i32 0, align 4
@AR_PHY_AIC_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_0_B1 = common dso_local global i64 0, align 8
@AR_PHY_AIC_CTRL_1_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_CAL_BT_REF_DELAY = common dso_local global i32 0, align 4
@AR_PHY_AIC_BT_IDLE_CFG = common dso_local global i32 0, align 4
@AR_PHY_AIC_STDBY_COND = common dso_local global i32 0, align 4
@AR_PHY_AIC_STDBY_ROT_ATT_DB = common dso_local global i32 0, align 4
@AR_PHY_AIC_STDBY_COM_ATT_DB = common dso_local global i32 0, align 4
@AR_PHY_AIC_RSSI_MAX = common dso_local global i32 0, align 4
@AR_PHY_AIC_RSSI_MIN = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_1_B1 = common dso_local global i64 0, align 8
@AR_PHY_AIC_CTRL_2_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_RADIO_DELAY = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_STEP_SIZE_CORR = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_ROT_IDX_CORR = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_CONV_CHECK_FACTOR = common dso_local global i32 0, align 4
@AR_PHY_AIC_ROT_IDX_COUNT_MAX = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_SYNTH_TOGGLE = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_SYNTH_AFTER_BTRX = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_SYNTH_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_3_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_MON_MAX_HOP_COUNT = common dso_local global i32 0, align 4
@AR_PHY_AIC_MON_MIN_STALE_COUNT = common dso_local global i32 0, align 4
@AR_PHY_AIC_MON_PWR_EST_LONG = common dso_local global i32 0, align 4
@AR_PHY_AIC_MON_PD_TALLY_SCALING = common dso_local global i32 0, align 4
@AR_PHY_AIC_MON_PERF_THR = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_TARGET_MAG_SETTING = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_PERF_CHECK_FACTOR = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_PWR_EST_LONG = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_4_B0 = common dso_local global i64 0, align 8
@AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF = common dso_local global i32 0, align 4
@AR_PHY_AIC_CAL_COM_ATT_DB_FIXED = common dso_local global i32 0, align 4
@AR_PHY_AIC_CTRL_4_B1 = common dso_local global i64 0, align 8
@ATH_AIC_BT_JUPITER_CTRL = common dso_local global i64 0, align 8
@ATH_AIC_BT_AIC_ENABLE = common dso_local global i32 0, align 4
@AR_TSF_L32 = common dso_local global i64 0, align 8
@AIC_CAL_STATE_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ar9003_aic_cal_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_aic_cal_start(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_aic*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ath9k_hw_aic* %9, %struct.ath9k_hw_aic** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i64, i64* @AR_PHY_AIC_SRAM_ADDR_B0, align 8
  %12 = add nsw i64 %11, 12288
  %13 = load i32, i32* @ATH_AIC_SRAM_AUTO_INCREMENT, align 4
  %14 = load i32, i32* @ATH_AIC_SRAM_CAL_OFFSET, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @REG_WRITE(%struct.ath_hw* %10, i64 %12, i32 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %32, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ATH_AIC_MAX_BT_CHANNEL, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i64, i64* @AR_PHY_AIC_SRAM_DATA_B0, align 8
  %24 = add nsw i64 %23, 12288
  %25 = call i32 @REG_WRITE(%struct.ath_hw* %22, i64 %24, i32 0)
  %26 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %5, align 8
  %27 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i64, i64* @AR_PHY_AIC_CTRL_0_B0, align 8
  %38 = load i32, i32* @AR_PHY_AIC_MON_ENABLE, align 4
  %39 = call i32 @SM(i32 0, i32 %38)
  %40 = load i32, i32* @AR_PHY_AIC_CAL_MAX_HOP_COUNT, align 4
  %41 = call i32 @SM(i32 127, i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @AR_PHY_AIC_CAL_MIN_VALID_COUNT, align 4
  %45 = call i32 @SM(i32 %43, i32 %44)
  %46 = or i32 %42, %45
  %47 = load i32, i32* @AR_PHY_AIC_F_WLAN, align 4
  %48 = call i32 @SM(i32 37, i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @AR_PHY_AIC_CAL_CH_VALID_RESET, align 4
  %51 = call i32 @SM(i32 1, i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %54 = call i32 @SM(i32 0, i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* @AR_PHY_AIC_BTTX_PWR_THR, align 4
  %57 = call i32 @SM(i32 64, i32 %56)
  %58 = or i32 %55, %57
  %59 = load i32, i32* @AR_PHY_AIC_ENABLE, align 4
  %60 = call i32 @SM(i32 0, i32 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @REG_WRITE(%struct.ath_hw* %36, i64 %37, i32 %61)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i64, i64* @AR_PHY_AIC_CTRL_0_B1, align 8
  %65 = load i32, i32* @AR_PHY_AIC_MON_ENABLE, align 4
  %66 = call i32 @SM(i32 0, i32 %65)
  %67 = load i32, i32* @AR_PHY_AIC_CAL_CH_VALID_RESET, align 4
  %68 = call i32 @SM(i32 1, i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %71 = call i32 @SM(i32 0, i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @AR_PHY_AIC_BTTX_PWR_THR, align 4
  %74 = call i32 @SM(i32 64, i32 %73)
  %75 = or i32 %72, %74
  %76 = load i32, i32* @AR_PHY_AIC_ENABLE, align 4
  %77 = call i32 @SM(i32 0, i32 %76)
  %78 = or i32 %75, %77
  %79 = call i32 @REG_WRITE(%struct.ath_hw* %63, i64 %64, i32 %78)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = load i64, i64* @AR_PHY_AIC_CTRL_1_B0, align 8
  %82 = load i32, i32* @AR_PHY_AIC_CAL_BT_REF_DELAY, align 4
  %83 = call i32 @SM(i32 8, i32 %82)
  %84 = load i32, i32* @AR_PHY_AIC_BT_IDLE_CFG, align 4
  %85 = call i32 @SM(i32 0, i32 %84)
  %86 = or i32 %83, %85
  %87 = load i32, i32* @AR_PHY_AIC_STDBY_COND, align 4
  %88 = call i32 @SM(i32 1, i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @AR_PHY_AIC_STDBY_ROT_ATT_DB, align 4
  %91 = call i32 @SM(i32 37, i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* @AR_PHY_AIC_STDBY_COM_ATT_DB, align 4
  %94 = call i32 @SM(i32 5, i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* @AR_PHY_AIC_RSSI_MAX, align 4
  %97 = call i32 @SM(i32 15, i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* @AR_PHY_AIC_RSSI_MIN, align 4
  %100 = call i32 @SM(i32 0, i32 %99)
  %101 = or i32 %98, %100
  %102 = call i32 @REG_WRITE(%struct.ath_hw* %80, i64 %81, i32 %101)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = load i64, i64* @AR_PHY_AIC_CTRL_1_B1, align 8
  %105 = load i32, i32* @AR_PHY_AIC_RSSI_MAX, align 4
  %106 = call i32 @SM(i32 15, i32 %105)
  %107 = load i32, i32* @AR_PHY_AIC_RSSI_MIN, align 4
  %108 = call i32 @SM(i32 0, i32 %107)
  %109 = or i32 %106, %108
  %110 = call i32 @REG_WRITE(%struct.ath_hw* %103, i64 %104, i32 %109)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %112 = load i64, i64* @AR_PHY_AIC_CTRL_2_B0, align 8
  %113 = load i32, i32* @AR_PHY_AIC_RADIO_DELAY, align 4
  %114 = call i32 @SM(i32 44, i32 %113)
  %115 = load i32, i32* @AR_PHY_AIC_CAL_STEP_SIZE_CORR, align 4
  %116 = call i32 @SM(i32 8, i32 %115)
  %117 = or i32 %114, %116
  %118 = load i32, i32* @AR_PHY_AIC_CAL_ROT_IDX_CORR, align 4
  %119 = call i32 @SM(i32 12, i32 %118)
  %120 = or i32 %117, %119
  %121 = load i32, i32* @AR_PHY_AIC_CAL_CONV_CHECK_FACTOR, align 4
  %122 = call i32 @SM(i32 2, i32 %121)
  %123 = or i32 %120, %122
  %124 = load i32, i32* @AR_PHY_AIC_ROT_IDX_COUNT_MAX, align 4
  %125 = call i32 @SM(i32 5, i32 %124)
  %126 = or i32 %123, %125
  %127 = load i32, i32* @AR_PHY_AIC_CAL_SYNTH_TOGGLE, align 4
  %128 = call i32 @SM(i32 0, i32 %127)
  %129 = or i32 %126, %128
  %130 = load i32, i32* @AR_PHY_AIC_CAL_SYNTH_AFTER_BTRX, align 4
  %131 = call i32 @SM(i32 0, i32 %130)
  %132 = or i32 %129, %131
  %133 = load i32, i32* @AR_PHY_AIC_CAL_SYNTH_SETTLING, align 4
  %134 = call i32 @SM(i32 200, i32 %133)
  %135 = or i32 %132, %134
  %136 = call i32 @REG_WRITE(%struct.ath_hw* %111, i64 %112, i32 %135)
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = load i64, i64* @AR_PHY_AIC_CTRL_3_B0, align 8
  %139 = load i32, i32* @AR_PHY_AIC_MON_MAX_HOP_COUNT, align 4
  %140 = call i32 @SM(i32 2, i32 %139)
  %141 = load i32, i32* @AR_PHY_AIC_MON_MIN_STALE_COUNT, align 4
  %142 = call i32 @SM(i32 1, i32 %141)
  %143 = or i32 %140, %142
  %144 = load i32, i32* @AR_PHY_AIC_MON_PWR_EST_LONG, align 4
  %145 = call i32 @SM(i32 1, i32 %144)
  %146 = or i32 %143, %145
  %147 = load i32, i32* @AR_PHY_AIC_MON_PD_TALLY_SCALING, align 4
  %148 = call i32 @SM(i32 2, i32 %147)
  %149 = or i32 %146, %148
  %150 = load i32, i32* @AR_PHY_AIC_MON_PERF_THR, align 4
  %151 = call i32 @SM(i32 10, i32 %150)
  %152 = or i32 %149, %151
  %153 = load i32, i32* @AR_PHY_AIC_CAL_TARGET_MAG_SETTING, align 4
  %154 = call i32 @SM(i32 2, i32 %153)
  %155 = or i32 %152, %154
  %156 = load i32, i32* @AR_PHY_AIC_CAL_PERF_CHECK_FACTOR, align 4
  %157 = call i32 @SM(i32 1, i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* @AR_PHY_AIC_CAL_PWR_EST_LONG, align 4
  %160 = call i32 @SM(i32 1, i32 %159)
  %161 = or i32 %158, %160
  %162 = call i32 @REG_WRITE(%struct.ath_hw* %137, i64 %138, i32 %161)
  %163 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %164 = load i64, i64* @AR_PHY_AIC_CTRL_4_B0, align 8
  %165 = load i32, i32* @AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO, align 4
  %166 = call i32 @SM(i32 2, i32 %165)
  %167 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO, align 4
  %168 = call i32 @SM(i32 3, i32 %167)
  %169 = or i32 %166, %168
  %170 = load i32, i32* @AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING, align 4
  %171 = call i32 @SM(i32 0, i32 %170)
  %172 = or i32 %169, %171
  %173 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF, align 4
  %174 = call i32 @SM(i32 2, i32 %173)
  %175 = or i32 %172, %174
  %176 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_FIXED, align 4
  %177 = call i32 @SM(i32 1, i32 %176)
  %178 = or i32 %175, %177
  %179 = call i32 @REG_WRITE(%struct.ath_hw* %163, i64 %164, i32 %178)
  %180 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %181 = load i64, i64* @AR_PHY_AIC_CTRL_4_B1, align 8
  %182 = load i32, i32* @AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO, align 4
  %183 = call i32 @SM(i32 2, i32 %182)
  %184 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO, align 4
  %185 = call i32 @SM(i32 3, i32 %184)
  %186 = or i32 %183, %185
  %187 = load i32, i32* @AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING, align 4
  %188 = call i32 @SM(i32 0, i32 %187)
  %189 = or i32 %186, %188
  %190 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF, align 4
  %191 = call i32 @SM(i32 2, i32 %190)
  %192 = or i32 %189, %191
  %193 = load i32, i32* @AR_PHY_AIC_CAL_COM_ATT_DB_FIXED, align 4
  %194 = call i32 @SM(i32 1, i32 %193)
  %195 = or i32 %192, %194
  %196 = call i32 @REG_WRITE(%struct.ath_hw* %180, i64 %181, i32 %195)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = call i32 @ar9003_aic_gain_table(%struct.ath_hw* %197)
  %199 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %200 = load i64, i64* @ATH_AIC_BT_JUPITER_CTRL, align 8
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = load i64, i64* @ATH_AIC_BT_JUPITER_CTRL, align 8
  %203 = call i32 @REG_READ(%struct.ath_hw* %201, i64 %202)
  %204 = load i32, i32* @ATH_AIC_BT_AIC_ENABLE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @REG_WRITE(%struct.ath_hw* %199, i64 %200, i32 %205)
  %207 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %208 = load i64, i64* @AR_TSF_L32, align 8
  %209 = call i32 @REG_READ(%struct.ath_hw* %207, i64 %208)
  %210 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %5, align 8
  %211 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %213 = load i64, i64* @AR_PHY_AIC_CTRL_0_B1, align 8
  %214 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %215 = call i32 @REG_CLR_BIT(%struct.ath_hw* %212, i64 %213, i32 %214)
  %216 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %217 = load i64, i64* @AR_PHY_AIC_CTRL_0_B1, align 8
  %218 = load i32, i32* @AR_PHY_AIC_CAL_CH_VALID_RESET, align 4
  %219 = call i32 @REG_SET_BIT(%struct.ath_hw* %216, i64 %217, i32 %218)
  %220 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %221 = load i64, i64* @AR_PHY_AIC_CTRL_0_B1, align 8
  %222 = load i32, i32* @AR_PHY_AIC_CAL_ENABLE, align 4
  %223 = call i32 @REG_SET_BIT(%struct.ath_hw* %220, i64 %221, i32 %222)
  %224 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %5, align 8
  %225 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* @AIC_CAL_STATE_STARTED, align 4
  %227 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %5, align 8
  %228 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %5, align 8
  %230 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  ret i32 %231
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ar9003_aic_gain_table(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
