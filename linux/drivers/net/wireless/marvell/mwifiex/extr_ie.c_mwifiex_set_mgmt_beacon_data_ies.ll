; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_set_mgmt_beacon_data_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_set_mgmt_beacon_data_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i8*, i8*, i8* }
%struct.cfg80211_beacon_data = type { i64, i64, i64, i64, i64, i64 }
%struct.mwifiex_ie = type { i32 }

@MWIFIEX_AUTO_IDX_MASK = common dso_local global i8* null, align 8
@MGMT_MASK_BEACON = common dso_local global i32 0, align 4
@WLAN_OUI_MICROSOFT = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_MICROSOFT_WPS = common dso_local global i32 0, align 4
@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@MGMT_MASK_PROBE_RESP = common dso_local global i32 0, align 4
@MGMT_MASK_ASSOC_RESP = common dso_local global i32 0, align 4
@MGMT_MASK_REASSOC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_beacon_data*)* @mwifiex_set_mgmt_beacon_data_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_set_mgmt_beacon_data_ies(%struct.mwifiex_private* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca %struct.mwifiex_ie*, align 8
  %6 = alloca %struct.mwifiex_ie*, align 8
  %7 = alloca %struct.mwifiex_ie*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %4, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %5, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %6, align 8
  store %struct.mwifiex_ie* null, %struct.mwifiex_ie** %7, align 8
  %12 = load i8*, i8** @MWIFIEX_AUTO_IDX_MASK, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** @MWIFIEX_AUTO_IDX_MASK, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** @MWIFIEX_AUTO_IDX_MASK, align 8
  store i8* %14, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %16 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @MGMT_MASK_BEACON, align 4
  %32 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %33 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WPS, align 4
  %34 = call i32 @mwifiex_update_vs_ie(i64 %27, i64 %30, %struct.mwifiex_ie** %5, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %36 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @MGMT_MASK_BEACON, align 4
  %42 = load i32, i32* @WLAN_OUI_WFA, align 4
  %43 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %44 = call i32 @mwifiex_update_vs_ie(i64 %37, i64 %40, %struct.mwifiex_ie** %5, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %24, %19, %2
  %46 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %52 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %57 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %60 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @MGMT_MASK_PROBE_RESP, align 4
  %63 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %64 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WPS, align 4
  %65 = call i32 @mwifiex_update_vs_ie(i64 %58, i64 %61, %struct.mwifiex_ie** %6, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %67 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %70 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @MGMT_MASK_PROBE_RESP, align 4
  %73 = load i32, i32* @WLAN_OUI_WFA, align 4
  %74 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %75 = call i32 @mwifiex_update_vs_ie(i64 %68, i64 %71, %struct.mwifiex_ie** %6, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %55, %50, %45
  %77 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %78 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %83 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %91 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @MGMT_MASK_ASSOC_RESP, align 4
  %94 = load i32, i32* @MGMT_MASK_REASSOC_RESP, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %97 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WPS, align 4
  %98 = call i32 @mwifiex_update_vs_ie(i64 %89, i64 %92, %struct.mwifiex_ie** %7, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %100 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %103 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @MGMT_MASK_ASSOC_RESP, align 4
  %106 = load i32, i32* @MGMT_MASK_REASSOC_RESP, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @WLAN_OUI_WFA, align 4
  %109 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %110 = call i32 @mwifiex_update_vs_ie(i64 %101, i64 %104, %struct.mwifiex_ie** %7, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %86, %81, %76
  %112 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %113 = icmp ne %struct.mwifiex_ie* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %116 = icmp ne %struct.mwifiex_ie* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %119 = icmp ne %struct.mwifiex_ie* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117, %114, %111
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %122 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %123 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %124 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %125 = call i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private* %121, %struct.mwifiex_ie* %122, i8** %8, %struct.mwifiex_ie* %123, i8** %9, %struct.mwifiex_ie* %124, i8** %10)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %140

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %117
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %133 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %136 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %130, %128
  %141 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %5, align 8
  %142 = call i32 @kfree(%struct.mwifiex_ie* %141)
  %143 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %144 = call i32 @kfree(%struct.mwifiex_ie* %143)
  %145 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %7, align 8
  %146 = call i32 @kfree(%struct.mwifiex_ie* %145)
  %147 = load i32, i32* %11, align 4
  ret i32 %147
}

declare dso_local i32 @mwifiex_update_vs_ie(i64, i64, %struct.mwifiex_ie**, i32, i32, i32) #1

declare dso_local i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private*, %struct.mwifiex_ie*, i8**, %struct.mwifiex_ie*, i8**, %struct.mwifiex_ie*, i8**) #1

declare dso_local i32 @kfree(%struct.mwifiex_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
