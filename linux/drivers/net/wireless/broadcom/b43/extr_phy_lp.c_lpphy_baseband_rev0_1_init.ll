; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_baseband_rev0_1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_baseband_rev0_1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.ssb_sprom*, %struct.TYPE_4__* }
%struct.ssb_sprom = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }

@B43_LPPHY_AFE_DAC_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@B43_LPPHY_OFDMSYNCTHRESH0 = common dso_local global i32 0, align 4
@B43_LPPHY_CLIPCTRTHRESH = common dso_local global i32 0, align 4
@B43_LPPHY_ADC_COMPENSATION_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_ADC_CTL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_VERYLOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_HIGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_LOWGAINDB = common dso_local global i32 0, align 4
@B43_LPPHY_RX_RADIO_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_GAINDIRECTMISMATCH = common dso_local global i32 0, align 4
@B43_LPPHY_GAIN_MISMATCH_LIMIT = common dso_local global i32 0, align 4
@B43_LPPHY_CRS_ED_THRESH = common dso_local global i32 0, align 4
@B43_LPPHY_INPUT_PWRDB = common dso_local global i32 0, align 4
@B43_BFL_FEM = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_BFH_PAREF = common dso_local global i32 0, align 4
@LDO_PAREF = common dso_local global i32 0, align 4
@B43_LPPHY_LP_RF_SIGNAL_LUT = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_0 = common dso_local global i32 0, align 4
@B43_BFH_RSSIINV = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_RSSI_CTL_1 = common dso_local global i32 0, align 4
@B43_BFH_FEM_BT = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_1 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_2 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_3 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_4 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_5 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_6 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_7 = common dso_local global i32 0, align 4
@B43_LPPHY_TR_LOOKUP_8 = common dso_local global i32 0, align 4
@SSB_BOARD_BU4312 = common dso_local global i64 0, align 8
@SSB_CHIPPACK_BCM4712S = common dso_local global i64 0, align 8
@B43_LPPHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_GPIO_SELECT = common dso_local global i32 0, align 4
@B43_LPPHY_GPIO_OUTEN = common dso_local global i32 0, align 4
@B43_HF_PR45960W = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_LPPHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_MINPWR_LEVEL = common dso_local global i32 0, align 4
@B43_LPPHY_SYNCPEAKCNT = common dso_local global i32 0, align 4
@B43_LPPHY_DSSS_CONFIRM_CNT = common dso_local global i32 0, align 4
@B43_LPPHY_IDLEAFTERPKTRXTO = common dso_local global i32 0, align 4
@B43_LPPHY_4C3 = common dso_local global i32 0, align 4
@B43_LPPHY_4C4 = common dso_local global i32 0, align 4
@B43_LPPHY_4C5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_baseband_rev0_1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_baseband_rev0_1_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca %struct.b43_phy_lp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %13, align 8
  store %struct.ssb_bus* %14, %struct.ssb_bus** %3, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.ssb_sprom*, %struct.ssb_sprom** %18, align 8
  store %struct.ssb_sprom* %19, %struct.ssb_sprom** %4, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %22, align 8
  store %struct.b43_phy_lp* %23, %struct.b43_phy_lp** %5, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %26 = call i32 @b43_phy_mask(%struct.b43_wldev* %24, i32 %25, i32 63487)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_LPPHY_AFE_CTL, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 %28, i32 0)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 0)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %33, i32 %34, i32 0)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 0)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_LPPHY_AFE_DAC_CTL, align 4
  %41 = call i32 @b43_phy_set(%struct.b43_wldev* %39, i32 %40, i32 4)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_LPPHY_OFDMSYNCTHRESH0, align 4
  %44 = call i32 @b43_phy_maskset(%struct.b43_wldev* %42, i32 %43, i32 65280, i32 120)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %47 = call i32 @b43_phy_maskset(%struct.b43_wldev* %45, i32 %46, i32 33791, i32 22528)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_LPPHY_ADC_COMPENSATION_CTL, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %49, i32 22)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_LPPHY_AFE_ADC_CTL_0, align 4
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 %52, i32 65528, i32 4)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %56 = call i32 @b43_phy_maskset(%struct.b43_wldev* %54, i32 %55, i32 255, i32 21504)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_LPPHY_HIGAINDB, align 4
  %59 = call i32 @b43_phy_maskset(%struct.b43_wldev* %57, i32 %58, i32 255, i32 9216)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* @B43_LPPHY_LOWGAINDB, align 4
  %62 = call i32 @b43_phy_maskset(%struct.b43_wldev* %60, i32 %61, i32 255, i32 8448)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %65 = call i32 @b43_phy_maskset(%struct.b43_wldev* %63, i32 %64, i32 65280, i32 6)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_LPPHY_RX_RADIO_CTL, align 4
  %68 = call i32 @b43_phy_mask(%struct.b43_wldev* %66, i32 %67, i32 65534)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %71 = call i32 @b43_phy_maskset(%struct.b43_wldev* %69, i32 %70, i32 65504, i32 5)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %74 = call i32 @b43_phy_maskset(%struct.b43_wldev* %72, i32 %73, i32 64543, i32 384)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 33791, i32 15360)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 65520, i32 5)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_LPPHY_GAIN_MISMATCH_LIMIT, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %81, i32 %82, i32 65472, i32 26)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %84, i32 %85, i32 65280, i32 179)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_LPPHY_CRS_ED_THRESH, align 4
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 255, i32 44288)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_LPPHY_INPUT_PWRDB, align 4
  %92 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %93 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 65280, i32 %94)
  %96 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %97 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @B43_BFL_FEM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %1
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @b43_current_band(i32 %105)
  %107 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %111 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @B43_BFH_PAREF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %109, %102
  %117 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %118 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %117, i32 0, i32 0
  %119 = load i32, i32* @LDO_PAREF, align 4
  %120 = call i32 @ssb_pmu_set_ldo_voltage(i32* %118, i32 %119, i32 40)
  %121 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %122 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %121, i32 0, i32 0
  %123 = call i32 @ssb_pmu_set_ldo_paref(i32* %122, i32 1)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = load i32, i32* @B43_LPPHY_LP_RF_SIGNAL_LUT, align 4
  %132 = call i32 @b43_phy_maskset(%struct.b43_wldev* %130, i32 %131, i32 65487, i32 16)
  br label %133

133:                                              ; preds = %129, %116
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = call i32 @B43_LPTAB16(i32 11, i32 7)
  %136 = call i32 @b43_lptab_write(%struct.b43_wldev* %134, i32 %135, i32 60)
  br label %147

137:                                              ; preds = %109, %1
  %138 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %139 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %138, i32 0, i32 0
  %140 = call i32 @ssb_pmu_set_ldo_paref(i32* %139, i32 0)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* @B43_LPPHY_LP_RF_SIGNAL_LUT, align 4
  %143 = call i32 @b43_phy_maskset(%struct.b43_wldev* %141, i32 %142, i32 65487, i32 32)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i32 @B43_LPTAB16(i32 11, i32 7)
  %146 = call i32 @b43_lptab_write(%struct.b43_wldev* %144, i32 %145, i32 100)
  br label %147

147:                                              ; preds = %137, %133
  %148 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %149 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %152 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 4
  %155 = or i32 %150, %154
  %156 = or i32 %155, 40960
  store i32 %156, i32* %6, align 4
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_0, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @b43_phy_write(%struct.b43_wldev* %157, i32 %158, i32 %159)
  %161 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %162 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @B43_BFH_RSSIINV, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %147
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_1, align 4
  %170 = call i32 @b43_phy_maskset(%struct.b43_wldev* %168, i32 %169, i32 61440, i32 2730)
  br label %175

171:                                              ; preds = %147
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = load i32, i32* @B43_LPPHY_AFE_RSSI_CTL_1, align 4
  %174 = call i32 @b43_phy_maskset(%struct.b43_wldev* %172, i32 %173, i32 61440, i32 682)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = call i32 @B43_LPTAB16(i32 11, i32 1)
  %178 = call i32 @b43_lptab_write(%struct.b43_wldev* %176, i32 %177, i32 24)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = load i32, i32* @B43_LPPHY_RX_RADIO_CTL, align 4
  %181 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %182 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 1
  %185 = call i32 @b43_phy_maskset(%struct.b43_wldev* %179, i32 %180, i32 65529, i32 %184)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %247

191:                                              ; preds = %175
  %192 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %193 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @B43_BFH_FEM_BT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %191
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %201 = call i32 @b43_phy_maskset(%struct.b43_wldev* %199, i32 %200, i32 65472, i32 10)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %204 = call i32 @b43_phy_maskset(%struct.b43_wldev* %202, i32 %203, i32 16128, i32 2304)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %207 = call i32 @b43_phy_maskset(%struct.b43_wldev* %205, i32 %206, i32 65472, i32 10)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %210 = call i32 @b43_phy_maskset(%struct.b43_wldev* %208, i32 %209, i32 49407, i32 2816)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %213 = call i32 @b43_phy_maskset(%struct.b43_wldev* %211, i32 %212, i32 65472, i32 10)
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %216 = call i32 @b43_phy_maskset(%struct.b43_wldev* %214, i32 %215, i32 49407, i32 1024)
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %218 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %219 = call i32 @b43_phy_maskset(%struct.b43_wldev* %217, i32 %218, i32 65472, i32 10)
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %221 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %222 = call i32 @b43_phy_maskset(%struct.b43_wldev* %220, i32 %221, i32 49407, i32 2816)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %224 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %225 = call i32 @b43_phy_maskset(%struct.b43_wldev* %223, i32 %224, i32 65472, i32 10)
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %228 = call i32 @b43_phy_maskset(%struct.b43_wldev* %226, i32 %227, i32 49407, i32 2304)
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %230 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %231 = call i32 @b43_phy_maskset(%struct.b43_wldev* %229, i32 %230, i32 65472, i32 10)
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %234 = call i32 @b43_phy_maskset(%struct.b43_wldev* %232, i32 %233, i32 49407, i32 2816)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %236 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %237 = call i32 @b43_phy_maskset(%struct.b43_wldev* %235, i32 %236, i32 65472, i32 10)
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %240 = call i32 @b43_phy_maskset(%struct.b43_wldev* %238, i32 %239, i32 49407, i32 2304)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %243 = call i32 @b43_phy_maskset(%struct.b43_wldev* %241, i32 %242, i32 65472, i32 10)
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %246 = call i32 @b43_phy_maskset(%struct.b43_wldev* %244, i32 %245, i32 49407, i32 2816)
  br label %365

247:                                              ; preds = %191, %175
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %249 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @b43_current_band(i32 %250)
  %252 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %275, label %254

254:                                              ; preds = %247
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %256 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %255, i32 0, i32 2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @SSB_BOARD_BU4312, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %275, label %262

262:                                              ; preds = %254
  %263 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %264 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %300

268:                                              ; preds = %262
  %269 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %270 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @B43_BFL_FEM, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %268, %254, %247
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %278 = call i32 @b43_phy_maskset(%struct.b43_wldev* %276, i32 %277, i32 65472, i32 1)
  %279 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %280 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %281 = call i32 @b43_phy_maskset(%struct.b43_wldev* %279, i32 %280, i32 49407, i32 1024)
  %282 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %283 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %284 = call i32 @b43_phy_maskset(%struct.b43_wldev* %282, i32 %283, i32 65472, i32 1)
  %285 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %286 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %287 = call i32 @b43_phy_maskset(%struct.b43_wldev* %285, i32 %286, i32 49407, i32 1280)
  %288 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %289 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %290 = call i32 @b43_phy_maskset(%struct.b43_wldev* %288, i32 %289, i32 65472, i32 2)
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %292 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %293 = call i32 @b43_phy_maskset(%struct.b43_wldev* %291, i32 %292, i32 49407, i32 2048)
  %294 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %295 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %296 = call i32 @b43_phy_maskset(%struct.b43_wldev* %294, i32 %295, i32 65472, i32 2)
  %297 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %298 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %299 = call i32 @b43_phy_maskset(%struct.b43_wldev* %297, i32 %298, i32 49407, i32 2560)
  br label %364

300:                                              ; preds = %268, %262
  %301 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %302 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %313, label %306

306:                                              ; preds = %300
  %307 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %308 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @B43_BFL_FEM, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %338

313:                                              ; preds = %306, %300
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %316 = call i32 @b43_phy_maskset(%struct.b43_wldev* %314, i32 %315, i32 65472, i32 4)
  %317 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %318 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %319 = call i32 @b43_phy_maskset(%struct.b43_wldev* %317, i32 %318, i32 49407, i32 2048)
  %320 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %321 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %322 = call i32 @b43_phy_maskset(%struct.b43_wldev* %320, i32 %321, i32 65472, i32 4)
  %323 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %324 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %325 = call i32 @b43_phy_maskset(%struct.b43_wldev* %323, i32 %324, i32 49407, i32 3072)
  %326 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %327 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %328 = call i32 @b43_phy_maskset(%struct.b43_wldev* %326, i32 %327, i32 65472, i32 2)
  %329 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %330 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %331 = call i32 @b43_phy_maskset(%struct.b43_wldev* %329, i32 %330, i32 49407, i32 256)
  %332 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %333 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %334 = call i32 @b43_phy_maskset(%struct.b43_wldev* %332, i32 %333, i32 65472, i32 2)
  %335 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %336 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %337 = call i32 @b43_phy_maskset(%struct.b43_wldev* %335, i32 %336, i32 49407, i32 768)
  br label %363

338:                                              ; preds = %306
  %339 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %340 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %341 = call i32 @b43_phy_maskset(%struct.b43_wldev* %339, i32 %340, i32 65472, i32 10)
  %342 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %343 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %344 = call i32 @b43_phy_maskset(%struct.b43_wldev* %342, i32 %343, i32 49407, i32 2304)
  %345 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %346 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %347 = call i32 @b43_phy_maskset(%struct.b43_wldev* %345, i32 %346, i32 65472, i32 10)
  %348 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %349 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %350 = call i32 @b43_phy_maskset(%struct.b43_wldev* %348, i32 %349, i32 49407, i32 2816)
  %351 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %352 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %353 = call i32 @b43_phy_maskset(%struct.b43_wldev* %351, i32 %352, i32 65472, i32 6)
  %354 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %355 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %356 = call i32 @b43_phy_maskset(%struct.b43_wldev* %354, i32 %355, i32 49407, i32 1280)
  %357 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %358 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %359 = call i32 @b43_phy_maskset(%struct.b43_wldev* %357, i32 %358, i32 65472, i32 6)
  %360 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %361 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %362 = call i32 @b43_phy_maskset(%struct.b43_wldev* %360, i32 %361, i32 49407, i32 1792)
  br label %363

363:                                              ; preds = %338, %313
  br label %364

364:                                              ; preds = %363, %275
  br label %365

365:                                              ; preds = %364, %198
  %366 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %367 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %395

371:                                              ; preds = %365
  %372 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %373 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @B43_BFH_PAREF, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %395

378:                                              ; preds = %371
  %379 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %380 = load i32, i32* @B43_LPPHY_TR_LOOKUP_5, align 4
  %381 = load i32, i32* @B43_LPPHY_TR_LOOKUP_1, align 4
  %382 = call i32 @b43_phy_copy(%struct.b43_wldev* %379, i32 %380, i32 %381)
  %383 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %384 = load i32, i32* @B43_LPPHY_TR_LOOKUP_6, align 4
  %385 = load i32, i32* @B43_LPPHY_TR_LOOKUP_2, align 4
  %386 = call i32 @b43_phy_copy(%struct.b43_wldev* %383, i32 %384, i32 %385)
  %387 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %388 = load i32, i32* @B43_LPPHY_TR_LOOKUP_7, align 4
  %389 = load i32, i32* @B43_LPPHY_TR_LOOKUP_3, align 4
  %390 = call i32 @b43_phy_copy(%struct.b43_wldev* %387, i32 %388, i32 %389)
  %391 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %392 = load i32, i32* @B43_LPPHY_TR_LOOKUP_8, align 4
  %393 = load i32, i32* @B43_LPPHY_TR_LOOKUP_4, align 4
  %394 = call i32 @b43_phy_copy(%struct.b43_wldev* %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %378, %371, %365
  %396 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %397 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @B43_BFH_FEM_BT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %433

402:                                              ; preds = %395
  %403 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %404 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %403, i32 0, i32 2
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = icmp eq i32 %407, 21332
  br i1 %408, label %409, label %433

409:                                              ; preds = %402
  %410 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %411 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %410, i32 0, i32 2
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @SSB_CHIPPACK_BCM4712S, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %433

417:                                              ; preds = %409
  %418 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %419 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %420 = call i32 @b43_phy_set(%struct.b43_wldev* %418, i32 %419, i32 6)
  %421 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %422 = load i32, i32* @B43_LPPHY_GPIO_SELECT, align 4
  %423 = call i32 @b43_phy_write(%struct.b43_wldev* %421, i32 %422, i32 5)
  %424 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %425 = load i32, i32* @B43_LPPHY_GPIO_OUTEN, align 4
  %426 = call i32 @b43_phy_write(%struct.b43_wldev* %424, i32 %425, i32 65535)
  %427 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %428 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %429 = call i32 @b43_hf_read(%struct.b43_wldev* %428)
  %430 = load i32, i32* @B43_HF_PR45960W, align 4
  %431 = or i32 %429, %430
  %432 = call i32 @b43_hf_write(%struct.b43_wldev* %427, i32 %431)
  br label %433

433:                                              ; preds = %417, %409, %402, %395
  %434 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %435 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = call i64 @b43_current_band(i32 %436)
  %438 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %465

440:                                              ; preds = %433
  %441 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %442 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %443 = call i32 @b43_phy_set(%struct.b43_wldev* %441, i32 %442, i32 32768)
  %444 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %445 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %446 = call i32 @b43_phy_set(%struct.b43_wldev* %444, i32 %445, i32 64)
  %447 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %448 = load i32, i32* @B43_LPPHY_MINPWR_LEVEL, align 4
  %449 = call i32 @b43_phy_maskset(%struct.b43_wldev* %447, i32 %448, i32 255, i32 41984)
  %450 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %451 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %452 = call i32 @b43_phy_maskset(%struct.b43_wldev* %450, i32 %451, i32 61695, i32 2816)
  %453 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %454 = load i32, i32* @B43_LPPHY_SYNCPEAKCNT, align 4
  %455 = call i32 @b43_phy_maskset(%struct.b43_wldev* %453, i32 %454, i32 65528, i32 7)
  %456 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %457 = load i32, i32* @B43_LPPHY_DSSS_CONFIRM_CNT, align 4
  %458 = call i32 @b43_phy_maskset(%struct.b43_wldev* %456, i32 %457, i32 65528, i32 3)
  %459 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %460 = load i32, i32* @B43_LPPHY_DSSS_CONFIRM_CNT, align 4
  %461 = call i32 @b43_phy_maskset(%struct.b43_wldev* %459, i32 %460, i32 65479, i32 32)
  %462 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %463 = load i32, i32* @B43_LPPHY_IDLEAFTERPKTRXTO, align 4
  %464 = call i32 @b43_phy_mask(%struct.b43_wldev* %462, i32 %463, i32 255)
  br label %472

465:                                              ; preds = %433
  %466 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %467 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %468 = call i32 @b43_phy_mask(%struct.b43_wldev* %466, i32 %467, i32 32767)
  %469 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %470 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %471 = call i32 @b43_phy_mask(%struct.b43_wldev* %469, i32 %470, i32 65471)
  br label %472

472:                                              ; preds = %465, %440
  %473 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %474 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %520

478:                                              ; preds = %472
  %479 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %480 = load i32, i32* @B43_LPPHY_CLIPCTRTHRESH, align 4
  %481 = call i32 @b43_phy_read(%struct.b43_wldev* %479, i32 %480)
  store i32 %481, i32* %6, align 4
  %482 = load i32, i32* %6, align 4
  %483 = and i32 %482, 992
  %484 = ashr i32 %483, 5
  store i32 %484, i32* %7, align 4
  %485 = load i32, i32* %7, align 4
  %486 = shl i32 %485, 5
  %487 = load i32, i32* %7, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %7, align 4
  %489 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %490 = load i32, i32* @B43_LPPHY_4C3, align 4
  %491 = load i32, i32* %7, align 4
  %492 = call i32 @b43_phy_write(%struct.b43_wldev* %489, i32 %490, i32 %491)
  %493 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %494 = load i32, i32* @B43_LPPHY_GAINDIRECTMISMATCH, align 4
  %495 = call i32 @b43_phy_read(%struct.b43_wldev* %493, i32 %494)
  store i32 %495, i32* %6, align 4
  %496 = load i32, i32* %6, align 4
  %497 = and i32 %496, 7936
  %498 = ashr i32 %497, 8
  store i32 %498, i32* %7, align 4
  %499 = load i32, i32* %7, align 4
  %500 = shl i32 %499, 5
  %501 = load i32, i32* %7, align 4
  %502 = or i32 %501, %500
  store i32 %502, i32* %7, align 4
  %503 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %504 = load i32, i32* @B43_LPPHY_4C4, align 4
  %505 = load i32, i32* %7, align 4
  %506 = call i32 @b43_phy_write(%struct.b43_wldev* %503, i32 %504, i32 %505)
  %507 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %508 = load i32, i32* @B43_LPPHY_VERYLOWGAINDB, align 4
  %509 = call i32 @b43_phy_read(%struct.b43_wldev* %507, i32 %508)
  store i32 %509, i32* %6, align 4
  %510 = load i32, i32* %6, align 4
  %511 = and i32 %510, 255
  store i32 %511, i32* %7, align 4
  %512 = load i32, i32* %6, align 4
  %513 = shl i32 %512, 8
  %514 = load i32, i32* %7, align 4
  %515 = or i32 %514, %513
  store i32 %515, i32* %7, align 4
  %516 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %517 = load i32, i32* @B43_LPPHY_4C5, align 4
  %518 = load i32, i32* %7, align 4
  %519 = call i32 @b43_phy_write(%struct.b43_wldev* %516, i32 %517, i32 %518)
  br label %520

520:                                              ; preds = %478, %472
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @ssb_pmu_set_ldo_voltage(i32*, i32, i32) #1

declare dso_local i32 @ssb_pmu_set_ldo_paref(i32*, i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

declare dso_local i32 @b43_phy_copy(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
