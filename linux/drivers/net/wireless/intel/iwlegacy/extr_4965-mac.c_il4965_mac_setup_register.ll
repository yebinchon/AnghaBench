; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_setup_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_setup_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.ieee80211_hw*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.ieee80211_hw = type { i8*, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__**, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"iwl-4965-rs\00", align 1
@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@SPECTRUM_MGMT = common dso_local global i32 0, align 4
@NEED_DTIM_BEFORE_ASSOC = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IL_SKU_N = common dso_local global i32 0, align 4
@NL80211_FEATURE_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@NL80211_FEATURE_STATIC_SMPS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@IL_CONN_MAX_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register hw (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32)* @il4965_mac_setup_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_mac_setup_register(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %14 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %15 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %13, i32 %14)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = load i32, i32* @SUPPORTS_PS, align 4
  %18 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %16, i32 %17)
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %20 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %21 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %19, i32 %20)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %23 = load i32, i32* @SPECTRUM_MGMT, align 4
  %24 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %22, i32 %23)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %26 = load i32, i32* @NEED_DTIM_BEFORE_ASSOC, align 4
  %27 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %25, i32 %26)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %29 = load i32, i32* @SIGNAL_DBM, align 4
  %30 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %28, i32 %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %32 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %33 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %31, i32 %32)
  %34 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IL_SKU_N, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @NL80211_FEATURE_DYNAMIC_SMPS, align 4
  %44 = load i32, i32* @NL80211_FEATURE_STATIC_SMPS, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %42, %2
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %53, i32 0, i32 1
  store i32 4, i32* %54, align 8
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 2
  store i32 4, i32* %56, align 4
  %57 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = or i32 %58, %60
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %74 = load i32, i32* @REGULATORY_DISABLE_BEACON_HINTS, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %76, i32 0, i32 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %83
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %91, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 24
  %97 = sub nsw i32 %96, 2
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %102, i32 0, i32 3
  store i32 4, i32* %103, align 8
  %104 = load i32, i32* @IL_CONN_MAX_LISTEN_INTERVAL, align 4
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %52
  %116 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %117 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %122, align 8
  %124 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %123, i32 0, i32 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %126, align 8
  %128 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %127, i64 %128
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %129, align 8
  br label %130

130:                                              ; preds = %115, %52
  %131 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %130
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %143
  %145 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 1
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %146, align 8
  %148 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %147, i32 0, i32 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %150, align 8
  %152 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %151, i64 %152
  store %struct.TYPE_5__* %144, %struct.TYPE_5__** %153, align 8
  br label %154

154:                                              ; preds = %139, %130
  %155 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %156 = call i32 @il_leds_init(%struct.il_priv* %155)
  %157 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %158 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %157, i32 0, i32 1
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %158, align 8
  %160 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %159, i32 0, i32 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %163 = call i32 @wiphy_ext_feature_set(%struct.TYPE_6__* %161, i32 %162)
  %164 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %165 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %164, i32 0, i32 1
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %165, align 8
  %167 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %154
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %177

174:                                              ; preds = %154
  %175 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %176 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %174, %170
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @il_leds_init(%struct.il_priv*) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
