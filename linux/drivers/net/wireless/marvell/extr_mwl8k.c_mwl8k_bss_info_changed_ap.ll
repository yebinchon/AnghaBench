; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_bss_info_changed_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_bss_info_changed_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.sk_buff = type { i32, i32 }

@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@mwl8k_rates_24 = common dso_local global %struct.TYPE_12__* null, align 8
@mwl8k_rates_50 = common dso_local global %struct.TYPE_11__* null, align 8
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mwl8k_bss_info_changed_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_bss_info_changed_ap(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call i64 @mwl8k_fw_lock(%struct.ieee80211_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %120

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw* %23, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %117

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ffs(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mwl8k_rates_24, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  br label %73

66:                                               ; preds = %49
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mwl8k_rates_50, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %33
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %81 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %88 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %86, %struct.ieee80211_vif* %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %12, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mwl8k_cmd_set_beacon(%struct.ieee80211_hw* %92, %struct.ieee80211_vif* %93, i32 %96, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %91, %85
  br label %104

104:                                              ; preds = %103, %78
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %112 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mwl8k_cmd_bss_start(%struct.ieee80211_hw* %110, %struct.ieee80211_vif* %111, i32 %114)
  br label %116

116:                                              ; preds = %109, %104
  br label %117

117:                                              ; preds = %116, %31
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %119 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %118)
  br label %120

120:                                              ; preds = %117, %16
  ret void
}

declare dso_local i64 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mwl8k_cmd_set_beacon(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mwl8k_cmd_bss_start(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
