; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_wow.c_ath9k_hw_wow_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PMCTRL_HOST_PME_EN = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_PMCTRL_AUX_PWR_DET = common dso_local global i32 0, align 4
@AR_PMCTRL_WOW_PME_CLR = common dso_local global i32 0, align 4
@AR_WOW_PATTERN = common dso_local global i32 0, align 4
@AR_WOW_PAT_BACKOFF = common dso_local global i32 0, align 4
@AR_WOW_COUNT = common dso_local global i32 0, align 4
@AR_WOW_CNT_AIFS_CNT = common dso_local global i32 0, align 4
@AR_WOW_CNT_SLOT_CNT = common dso_local global i32 0, align 4
@AR_WOW_CNT_KA_CNT = common dso_local global i32 0, align 4
@AH_WOW_BEACON_MISS = common dso_local global i32 0, align 4
@AR_WOW_BCN_TIMO = common dso_local global i32 0, align 4
@AR_WOW_BEACON_TIMO = common dso_local global i32 0, align 4
@AR_WOW_BEACON_TIMO_MAX = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_TIMO = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_NEVER = common dso_local global i32 0, align 4
@KAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_DELAY = common dso_local global i32 0, align 4
@KAL_DELAY = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_AUTO_DIS = common dso_local global i32 0, align 4
@AH_WOW_LINK_CHANGE = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL_DIS = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@AR_RSSI_THR_BM_THR = common dso_local global i32 0, align 4
@AR_WOW_BMISSTHRESHOLD = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL = common dso_local global i32 0, align 4
@AR_WOW_BCN_EN = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL_EN = common dso_local global i32 0, align 4
@AR_WOW_MAC_INTR_EN = common dso_local global i32 0, align 4
@AH_WOW_MAGIC_PATTERN_EN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_EN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_PAT_FOUND = common dso_local global i32 0, align 4
@AR_WOW_PATTERN_MATCH_LT_256B = common dso_local global i32 0, align 4
@AR_WOW_PATTERN_SUPPORTED = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3 = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3_REAL = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PRESERVE_SEQNUM = common dso_local global i32 0, align 4
@AR_PCIE_PHY_REG3 = common dso_local global i32 0, align 4
@AR_RTC_KEEP_AWAKE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_wow_enable(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %15 = load i32, i32* @AR_PMCTRL_HOST_PME_EN, align 4
  %16 = load i32, i32* @AR_PMCTRL_PWR_PM_CTRL_ENA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AR_PMCTRL_AUX_PWR_DET, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @REG_SET_BIT(%struct.ath_hw* %13, i32 %14, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %25 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  %26 = call i32 @REG_CLR_BIT(%struct.ath_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_WOW_PATTERN, align 4
  %29 = load i32, i32* @AR_WOW_PAT_BACKOFF, align 4
  %30 = call i32 @AR_WOW_BACK_OFF_SHIFT(i32 %29)
  %31 = call i32 @REG_SET_BIT(%struct.ath_hw* %27, i32 %28, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_WOW_COUNT, align 4
  %34 = load i32, i32* @AR_WOW_CNT_AIFS_CNT, align 4
  %35 = call i32 @AR_WOW_AIFS_CNT(i32 %34)
  %36 = load i32, i32* @AR_WOW_CNT_SLOT_CNT, align 4
  %37 = call i32 @AR_WOW_SLOT_CNT(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @AR_WOW_CNT_KA_CNT, align 4
  %40 = call i32 @AR_WOW_KEEP_ALIVE_CNT(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @REG_SET_BIT(%struct.ath_hw* %32, i32 %33, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load i32, i32* @AR_WOW_BCN_TIMO, align 4
  %50 = load i32, i32* @AR_WOW_BEACON_TIMO, align 4
  %51 = call i32 @REG_WRITE(%struct.ath_hw* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %2
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = load i32, i32* @AR_WOW_BCN_TIMO, align 4
  %55 = load i32, i32* @AR_WOW_BEACON_TIMO_MAX, align 4
  %56 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_WOW_KEEP_ALIVE_TIMO, align 4
  %63 = load i32, i32* @AR_WOW_KEEP_ALIVE_NEVER, align 4
  %64 = call i32 @REG_WRITE(%struct.ath_hw* %61, i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %57
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_WOW_KEEP_ALIVE_TIMO, align 4
  %68 = load i32, i32* @KAL_TIMEOUT, align 4
  %69 = mul nsw i32 %68, 32
  %70 = call i32 @REG_WRITE(%struct.ath_hw* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %73 = load i32, i32* @AR_WOW_KEEP_ALIVE_DELAY, align 4
  %74 = load i32, i32* @KAL_DELAY, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %72, i32 %73, i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = call i32 @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw* %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %80 = load i32, i32* @AR_WOW_KEEP_ALIVE, align 4
  %81 = call i32 @REG_READ(%struct.ath_hw* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @AR_WOW_KEEP_ALIVE_AUTO_DIS, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @AH_WOW_LINK_CHANGE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %71
  %91 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL_DIS, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %102

98:                                               ; preds = %71
  %99 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL_DIS, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %90
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = load i32, i32* @AR_WOW_KEEP_ALIVE, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @REG_WRITE(%struct.ath_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = load i32, i32* @AR_RSSI_THR, align 4
  %109 = load i32, i32* @AR_RSSI_THR_BM_THR, align 4
  %110 = load i32, i32* @AR_WOW_BMISSTHRESHOLD, align 4
  %111 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load i32, i32* @AR_WOW_BEACON_FAIL, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = load i32, i32* @AR_WOW_BCN_EN, align 4
  %122 = load i32, i32* @AR_WOW_BEACON_FAIL_EN, align 4
  %123 = call i32 @REG_SET_BIT(%struct.ath_hw* %120, i32 %121, i32 %122)
  br label %129

124:                                              ; preds = %102
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = load i32, i32* @AR_WOW_BCN_EN, align 4
  %127 = load i32, i32* @AR_WOW_BEACON_FAIL_EN, align 4
  %128 = call i32 @REG_CLR_BIT(%struct.ath_hw* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %116
  %130 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %131 = load i32, i32* @AR_WOW_PATTERN, align 4
  %132 = call i32 @REG_READ(%struct.ath_hw* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @AR_WOW_MAC_INTR_EN, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @AH_WOW_MAGIC_PATTERN_EN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load i32, i32* @AR_WOW_MAGIC_EN, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @AR_WOW_MAGIC_PAT_FOUND, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %152

147:                                              ; preds = %129
  %148 = load i32, i32* @AR_WOW_MAGIC_EN, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %147, %140
  %153 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %154 = load i32, i32* @AR_WOW_PATTERN, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @REG_WRITE(%struct.ath_hw* %153, i32 %154, i32 %155)
  %157 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %158 = load i32, i32* @AR_WOW_PATTERN_MATCH_LT_256B, align 4
  %159 = load i32, i32* @AR_WOW_PATTERN_SUPPORTED, align 4
  %160 = call i32 @REG_WRITE(%struct.ath_hw* %157, i32 %158, i32 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %163 = call i32 @REG_READ(%struct.ath_hw* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  %165 = load i32, i32* @AR_PMCTRL_HOST_PME_EN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @AR_PMCTRL_PWR_PM_CTRL_ENA, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %176 = call i64 @AR_SREV_9462(%struct.ath_hw* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %152
  %179 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3_REAL, align 4
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %178, %152
  %187 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %188 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @REG_WRITE(%struct.ath_hw* %187, i32 %188, i32 %189)
  %191 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %192 = load i32, i32* @AR_STA_ID1, align 4
  %193 = load i32, i32* @AR_STA_ID1_PRESERVE_SEQNUM, align 4
  %194 = call i32 @REG_CLR_BIT(%struct.ath_hw* %191, i32 %192, i32 %193)
  %195 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %196 = load i32, i32* @AR_PCIE_PHY_REG3, align 4
  %197 = call i32 @BIT(i32 13)
  %198 = call i32 @REG_SET_BIT(%struct.ath_hw* %195, i32 %196, i32 %197)
  %199 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %200 = call i32 @ath9k_hw_wow_set_arwr_reg(%struct.ath_hw* %199)
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %186
  %205 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %206 = load i32, i32* @AR_RTC_KEEP_AWAKE, align 4
  %207 = call i32 @REG_WRITE(%struct.ath_hw* %205, i32 %206, i32 2)
  br label %208

208:                                              ; preds = %204, %186
  %209 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %210 = load i32, i32* @AR_PCU_MISC_MODE3, align 4
  %211 = call i32 @BIT(i32 5)
  %212 = call i32 @REG_CLR_BIT(%struct.ath_hw* %209, i32 %210, i32 %211)
  %213 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %214 = call i32 @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw* %213)
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %217 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 4
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_WOW_BACK_OFF_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_AIFS_CNT(i32) #1

declare dso_local i32 @AR_WOW_SLOT_CNT(i32) #1

declare dso_local i32 @AR_WOW_KEEP_ALIVE_CNT(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath9k_hw_wow_set_arwr_reg(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
