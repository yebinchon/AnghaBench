; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_ieee_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, i8*, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@N_TX_QUEUES = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"minstrel_ht\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ieee_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %3 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %4 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %5 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %3, i32 %4)
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = load i32, i32* @SIGNAL_DBM, align 4
  %8 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %6, i32 %7)
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %11 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %9, i32 %10)
  %12 = call i32 (...) @brcms_c_get_header_len()
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @N_TX_QUEUES, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %36 = call i32 @wiphy_ext_feature_set(%struct.TYPE_2__* %34, i32 %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = call i32 @ieee_hw_rate_init(%struct.ieee80211_hw* %41)
  ret i32 %42
}

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @brcms_c_get_header_len(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ieee_hw_rate_init(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
