; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_set_hw_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_set_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32**, i32* }
%struct.ath_common = type { i32, i32* }
%struct.base_eep_header = type { i32, i32 }

@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@SPECTRUM_MGMT = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@DOESNT_SUPPORT_QOS_NDP = common dso_local global i32 0, align 4
@ath9k_ps_enable = common dso_local global i64 0, align 8
@SUPPORTS_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_OCB = common dso_local global i32 0, align 4
@if_comb = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_hw*)* @ath9k_set_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_hw_capab(%struct.ath9k_htc_priv* %0, %struct.ieee80211_hw* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.base_eep_header*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 0
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %5, align 8
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 0
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %17 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %15, i32 %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load i32, i32* @MFP_CAPABLE, align 4
  %20 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %18, i32 %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %23 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %21, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %26 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %24, i32 %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %29 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %27, i32 %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %32 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %30, i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load i32, i32* @SPECTRUM_MGMT, align 4
  %35 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %33, i32 %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = load i32, i32* @SIGNAL_DBM, align 4
  %38 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %36, i32 %37)
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %41 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %39, i32 %40)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = load i32, i32* @DOESNT_SUPPORT_QOS_NDP, align 4
  %44 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %42, i32 %43)
  %45 = load i64, i64* @ath9k_ps_enable, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %49 = load i32, i32* @SUPPORTS_PS, align 4
  %50 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %2
  %52 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* @NL80211_IFTYPE_OCB, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = or i32 %68, %70
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %76, i32 0, i32 5
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32* @if_comb, i32** %79, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %86, i32 0, i32 5
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %93 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %104, i32 0, i32 5
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 8
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %113 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %114, i32 0, i32 2
  store i32 4, i32* %115, align 8
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %117 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %116, i32 0, i32 3
  store i32 4, i32* %117, align 4
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %119 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %118, i32 0, i32 4
  store i32 12, i32* %119, align 8
  %120 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %121 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %120, i32 0, i32 0
  %122 = load %struct.ath_hw*, %struct.ath_hw** %121, align 8
  %123 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %51
  %130 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %131 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %136 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %135, i32 0, i32 5
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  store i32* %134, i32** %141, align 8
  br label %142

142:                                              ; preds = %129, %51
  %143 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %144 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %143, i32 0, i32 0
  %145 = load %struct.ath_hw*, %struct.ath_hw** %144, align 8
  %146 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %142
  %153 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %154 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %159 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %158, i32 0, i32 5
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32**, i32*** %161, align 8
  %163 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  store i32* %157, i32** %164, align 8
  br label %165

165:                                              ; preds = %152, %142
  %166 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %167 = call i32 @ath9k_cmn_reload_chainmask(%struct.ath_hw* %166)
  %168 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %169 = call %struct.base_eep_header* @ath9k_htc_get_eeprom_base(%struct.ath9k_htc_priv* %168)
  store %struct.base_eep_header* %169, %struct.base_eep_header** %7, align 8
  %170 = load %struct.base_eep_header*, %struct.base_eep_header** %7, align 8
  %171 = icmp ne %struct.base_eep_header* %170, null
  br i1 %171, label %172, label %187

172:                                              ; preds = %165
  %173 = load %struct.base_eep_header*, %struct.base_eep_header** %7, align 8
  %174 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %177 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %176, i32 0, i32 5
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  store i32 %175, i32* %179, align 8
  %180 = load %struct.base_eep_header*, %struct.base_eep_header** %7, align 8
  %181 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %184 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %183, i32 0, i32 5
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %172, %165
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %189 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %190 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %188, i32 %191)
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %193, i32 0, i32 5
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %197 = call i32 @wiphy_ext_feature_set(%struct.TYPE_4__* %195, i32 %196)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath9k_cmn_reload_chainmask(%struct.ath_hw*) #1

declare dso_local %struct.base_eep_header* @ath9k_htc_get_eeprom_base(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
