; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_setup_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.ieee80211_hw*, %struct.TYPE_3__* }
%struct.ieee80211_hw = type { i8*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__**, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"iwl-3945-rs\00", align 1
@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@SPECTRUM_MGMT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@PROBE_OPTION_MAX_3945 = common dso_local global i32 0, align 4
@IL3945_MAX_PROBE_REQUEST = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register hw (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_setup_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_setup_mac(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  store i32 4, i32* %12, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 2
  store i32 4, i32* %14, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %17 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %15, i32 %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = load i32, i32* @SUPPORTS_PS, align 4
  %20 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %18, i32 %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = load i32, i32* @SIGNAL_DBM, align 4
  %23 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %21, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load i32, i32* @SPECTRUM_MGMT, align 4
  %26 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %24, i32 %25)
  %27 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = or i32 %28, %30
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %44 = load i32, i32* @REGULATORY_DISABLE_BEACON_HINTS, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @PROBE_OPTION_MAX_3945, align 4
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i32 %60, i32* %64, align 8
  %65 = load i32, i32* @IL3945_MAX_PROBE_REQUEST, align 4
  %66 = sub nsw i32 %65, 24
  %67 = sub nsw i32 %66, 2
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %72, i32 0, i32 3
  store i32 4, i32* %73, align 8
  %74 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %1
  %83 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %89 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %88, i32 0, i32 1
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %89, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %93, align 8
  %95 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %94, i64 %95
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %96, align 8
  br label %97

97:                                               ; preds = %82, %1
  %98 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %99 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %97
  %107 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %113 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %112, i32 0, i32 1
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %113, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %114, i32 0, i32 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %117, align 8
  %119 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %118, i64 %119
  store %struct.TYPE_3__* %111, %struct.TYPE_3__** %120, align 8
  br label %121

121:                                              ; preds = %106, %97
  %122 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %123 = call i32 @il_leds_init(%struct.il_priv* %122)
  %124 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %125 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %124, i32 0, i32 1
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %125, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %126, i32 0, i32 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %130 = call i32 @wiphy_ext_feature_set(%struct.TYPE_4__* %128, i32 %129)
  %131 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 1
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %132, align 8
  %134 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %121
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %144

141:                                              ; preds = %121
  %142 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %143 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @il_leds_init(%struct.il_priv*) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
