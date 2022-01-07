; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_process_infra_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_process_infra_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.mwifiex_bssdescriptor = type { i32, i32, i64 }
%struct.mwifiex_ie_types_header = type { i8*, i8* }
%struct.mwifiex_ie_types_pwr_capability = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.mwifiex_ie_types_local_pwr_constraint = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }

@WLAN_EID_PWR_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_PWR_CONSTRAINT = common dso_local global i32 0, align 4
@TLV_TYPE_PASSTHROUGH = common dso_local global i32 0, align 4
@WLAN_EID_SUPPORTED_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, i64**, %struct.mwifiex_bssdescriptor*)* @mwifiex_11h_process_infra_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_11h_process_infra_join(%struct.mwifiex_private* %0, i64** %1, %struct.mwifiex_bssdescriptor* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %7 = alloca %struct.mwifiex_ie_types_header*, align 8
  %8 = alloca %struct.mwifiex_ie_types_pwr_capability*, align 8
  %9 = alloca %struct.mwifiex_ie_types_local_pwr_constraint*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i64** %1, i64*** %5, align 8
  store %struct.mwifiex_bssdescriptor* %2, %struct.mwifiex_bssdescriptor** %6, align 8
  %13 = load i64**, i64*** %5, align 8
  %14 = icmp ne i64** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64**, i64*** %5, align 8
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %3
  br label %135

20:                                               ; preds = %15
  %21 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @mwifiex_band_to_radio_type(i64 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, i64 %31
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, align 8
  store %struct.ieee80211_supported_band* %33, %struct.ieee80211_supported_band** %10, align 8
  %34 = load i64**, i64*** %5, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = bitcast i64* %35 to %struct.mwifiex_ie_types_pwr_capability*
  store %struct.mwifiex_ie_types_pwr_capability* %36, %struct.mwifiex_ie_types_pwr_capability** %8, align 8
  %37 = load i32, i32* @WLAN_EID_PWR_CAPABILITY, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.mwifiex_ie_types_pwr_capability*, %struct.mwifiex_ie_types_pwr_capability** %8, align 8
  %40 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, %struct.mwifiex_ie_types_pwr_capability* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = call i8* @cpu_to_le16(i32 2)
  %43 = load %struct.mwifiex_ie_types_pwr_capability*, %struct.mwifiex_ie_types_pwr_capability** %8, align 8
  %44 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, %struct.mwifiex_ie_types_pwr_capability* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.mwifiex_ie_types_pwr_capability*, %struct.mwifiex_ie_types_pwr_capability** %8, align 8
  %47 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, %struct.mwifiex_ie_types_pwr_capability* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.mwifiex_ie_types_pwr_capability*, %struct.mwifiex_ie_types_pwr_capability** %8, align 8
  %49 = getelementptr inbounds %struct.mwifiex_ie_types_pwr_capability, %struct.mwifiex_ie_types_pwr_capability* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64**, i64*** %5, align 8
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 32
  store i64* %52, i64** %50, align 8
  %53 = load i64**, i64*** %5, align 8
  %54 = load i64*, i64** %53, align 8
  %55 = bitcast i64* %54 to %struct.mwifiex_ie_types_local_pwr_constraint*
  store %struct.mwifiex_ie_types_local_pwr_constraint* %55, %struct.mwifiex_ie_types_local_pwr_constraint** %9, align 8
  %56 = load i32, i32* @WLAN_EID_PWR_CONSTRAINT, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.mwifiex_ie_types_local_pwr_constraint*, %struct.mwifiex_ie_types_local_pwr_constraint** %9, align 8
  %59 = getelementptr inbounds %struct.mwifiex_ie_types_local_pwr_constraint, %struct.mwifiex_ie_types_local_pwr_constraint* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = call i8* @cpu_to_le16(i32 2)
  %62 = load %struct.mwifiex_ie_types_local_pwr_constraint*, %struct.mwifiex_ie_types_local_pwr_constraint** %9, align 8
  %63 = getelementptr inbounds %struct.mwifiex_ie_types_local_pwr_constraint, %struct.mwifiex_ie_types_local_pwr_constraint* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %66 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mwifiex_ie_types_local_pwr_constraint*, %struct.mwifiex_ie_types_local_pwr_constraint** %9, align 8
  %69 = getelementptr inbounds %struct.mwifiex_ie_types_local_pwr_constraint, %struct.mwifiex_ie_types_local_pwr_constraint* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %71 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mwifiex_ie_types_local_pwr_constraint*, %struct.mwifiex_ie_types_local_pwr_constraint** %9, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ie_types_local_pwr_constraint, %struct.mwifiex_ie_types_local_pwr_constraint* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64**, i64*** %5, align 8
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 24
  store i64* %77, i64** %75, align 8
  %78 = load i64**, i64*** %5, align 8
  %79 = load i64*, i64** %78, align 8
  %80 = bitcast i64* %79 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %80, %struct.mwifiex_ie_types_header** %7, align 8
  %81 = load i32, i32* @TLV_TYPE_PASSTHROUGH, align 4
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %7, align 8
  %84 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %88, 2
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %7, align 8
  %92 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i64**, i64*** %5, align 8
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 16
  store i64* %95, i64** %93, align 8
  %96 = load i32, i32* @WLAN_EID_SUPPORTED_CHANNELS, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64**, i64*** %5, align 8
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %98, align 8
  store i64 %97, i64* %99, align 8
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = load i64**, i64*** %5, align 8
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %106, align 8
  store i64 %105, i64* %107, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %132, %20
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %112 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ieee80211_frequency_to_channel(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = load i64**, i64*** %5, align 8
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %126, align 8
  store i64 %125, i64* %127, align 8
  %129 = load i64**, i64*** %5, align 8
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %129, align 8
  store i64 1, i64* %130, align 8
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %109

135:                                              ; preds = %19, %109
  ret void
}

declare dso_local i64 @mwifiex_band_to_radio_type(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
