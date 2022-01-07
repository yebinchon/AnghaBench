; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i32, i64, i64, i64, i64 }
%struct.mt7603_vif = type { i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@MT_BSSID1_VALID = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mt7603_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7603_dev*, align 8
  %10 = alloca %struct.mt7603_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %14, align 8
  store %struct.mt7603_dev* %15, %struct.mt7603_dev** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %19, %struct.mt7603_vif** %10, align 8
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %21 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %26 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35, %30
  %41 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %42 = load %struct.mt7603_vif*, %struct.mt7603_vif** %10, align 8
  %43 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MT_BSSID0(i32 %44)
  %46 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @get_unaligned_le32(i64 %48)
  %50 = call i32 @mt76_wr(%struct.mt7603_dev* %41, i32 %45, i32 %49)
  %51 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %52 = load %struct.mt7603_vif*, %struct.mt7603_vif** %10, align 8
  %53 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MT_BSSID1(i32 %54)
  %56 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = call i32 @get_unaligned_le16(i64 %59)
  %61 = load i32, i32* @MT_BSSID1_VALID, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mt76_wr(%struct.mt7603_dev* %51, i32 %55, i32 %62)
  br label %77

64:                                               ; preds = %35
  %65 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %66 = load %struct.mt7603_vif*, %struct.mt7603_vif** %10, align 8
  %67 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MT_BSSID0(i32 %68)
  %70 = call i32 @mt76_wr(%struct.mt7603_dev* %65, i32 %69, i32 0)
  %71 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %72 = load %struct.mt7603_vif*, %struct.mt7603_vif** %10, align 8
  %73 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MT_BSSID1(i32 %74)
  %76 = call i32 @mt76_wr(%struct.mt7603_dev* %71, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %64, %40
  br label %78

78:                                               ; preds = %77, %4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 9, i32 20
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %92 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %98 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %100 = call i32 @mt7603_mac_set_timing(%struct.mt7603_dev* %99)
  br label %101

101:                                              ; preds = %95, %83
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %105 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %102
  %110 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %116, %119
  store i32 %120, i32* %12, align 4
  %121 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %122 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = call i32 @tasklet_disable(i32* %123)
  %125 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %126 = load %struct.mt7603_vif*, %struct.mt7603_vif** %10, align 8
  %127 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @mt7603_beacon_set_timer(%struct.mt7603_dev* %125, i32 %128, i32 %129)
  %131 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %132 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = call i32 @tasklet_enable(i32* %133)
  br label %135

135:                                              ; preds = %109, %102
  %136 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %137 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @MT_BSSID0(i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @MT_BSSID1(i32) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @mt7603_mac_set_timing(%struct.mt7603_dev*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @mt7603_beacon_set_timer(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
