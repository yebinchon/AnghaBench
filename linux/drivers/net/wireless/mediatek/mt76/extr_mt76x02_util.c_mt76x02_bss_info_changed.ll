; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.mt76x02_vif = type { i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_INTVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76x02_vif*, align 8
  %10 = alloca %struct.mt76x02_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %15, %struct.mt76x02_vif** %9, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %17, align 8
  store %struct.mt76x02_dev* %18, %struct.mt76x02_dev** %10, align 8
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %29 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %9, align 8
  %30 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mt76x02_mac_set_bssid(%struct.mt76x02_dev* %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BSS_CHANGED_HT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41, %36
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %48 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mt76x02_mac_set_tx_protection(%struct.mt76x02_dev* %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %62 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %63 = load i32, i32* @MT_BEACON_TIME_CFG_INTVAL, align 4
  %64 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 4
  %68 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %61, i32 %62, i32 %63, i32 %67)
  %69 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %73 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %55
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %83 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mt76x02_mac_set_beacon_enable(%struct.mt76x02_dev* %81, %struct.ieee80211_vif* %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %94 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mt76x02_mac_set_short_preamble(%struct.mt76x02_dev* %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 9, i32 20
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %112 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %114 = call i32 @mt76x02_set_tx_ackto(%struct.mt76x02_dev* %113)
  br label %115

115:                                              ; preds = %103, %98
  %116 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %117 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76x02_mac_set_bssid(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_mac_set_tx_protection(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x02_mac_set_beacon_enable(%struct.mt76x02_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mt76x02_mac_set_short_preamble(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_set_tx_ackto(%struct.mt76x02_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
