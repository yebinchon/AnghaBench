; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wl = type { i32, i64*, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.b43_bus_dev = type { i32, i32, i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }

@b43_hw_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate ieee80211 device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@b43_beacon_update_trigger_work = common dso_local global i32 0, align 4
@b43_phy_txpower_adjust_work = common dso_local global i32 0, align 4
@b43_tx_work = common dso_local global i32 0, align 4
@B43_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Broadcom %s WLAN found (core revision %u)\0A\00", align 1
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_wl* (%struct.b43_bus_dev*)* @b43_wireless_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_wl* @b43_wireless_init(%struct.b43_bus_dev* %0) #0 {
  %2 = alloca %struct.b43_wl*, align 8
  %3 = alloca %struct.b43_bus_dev*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.b43_wl*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.b43_bus_dev* %0, %struct.b43_bus_dev** %3, align 8
  %9 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %9, i32 0, i32 3
  %11 = load %struct.ssb_sprom*, %struct.ssb_sprom** %10, align 8
  store %struct.ssb_sprom* %11, %struct.ssb_sprom** %4, align 8
  %12 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 56, i32* @b43_hw_ops)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = icmp ne %struct.ieee80211_hw* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i32 @b43err(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.b43_wl* @ERR_PTR(i32 %18)
  store %struct.b43_wl* %19, %struct.b43_wl** %2, align 8
  br label %149

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %21)
  store %struct.b43_wl* %22, %struct.b43_wl** %6, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %25 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %23, i32 %24)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = load i32, i32* @SIGNAL_DBM, align 4
  %28 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %26, i32 %27)
  %29 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %55 = call i32 @wiphy_ext_feature_set(%struct.TYPE_2__* %53, i32 %54)
  %56 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %57 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %62 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %60, i32 %63)
  %65 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %66 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_valid_ether_addr(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %20
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %72 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %73 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %71, i32 %74)
  br label %82

76:                                               ; preds = %20
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %78 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %79 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %84 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %85 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %84, i32 0, i32 9
  store %struct.ieee80211_hw* %83, %struct.ieee80211_hw** %85, align 8
  %86 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %87 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %86, i32 0, i32 8
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %90 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %89, i32 0, i32 7
  %91 = call i32 @spin_lock_init(i32* %90)
  %92 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %93 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %92, i32 0, i32 6
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %96 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %95, i32 0, i32 5
  %97 = load i32, i32* @b43_beacon_update_trigger_work, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %100 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %99, i32 0, i32 4
  %101 = load i32, i32* @b43_phy_txpower_adjust_work, align 4
  %102 = call i32 @INIT_WORK(i32* %100, i32 %101)
  %103 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %104 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %103, i32 0, i32 3
  %105 = load i32, i32* @b43_tx_work, align 4
  %106 = call i32 @INIT_WORK(i32* %104, i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %125, %82
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @B43_QOS_QUEUE_NUM, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %113 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @skb_queue_head_init(i32* %117)
  %119 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %120 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %107

128:                                              ; preds = %107
  %129 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %130 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %131 = call i32 @ARRAY_SIZE(i8* %130)
  %132 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %133 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 39321
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %138 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %139 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @snprintf(i8* %129, i32 %131, i8* %137, i32 %140)
  %142 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %143 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %144 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %145 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @b43info(%struct.b43_wl* %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %143, i32 %146)
  %148 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  store %struct.b43_wl* %148, %struct.b43_wl** %2, align 8
  br label %149

149:                                              ; preds = %128, %15
  %150 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  ret %struct.b43_wl* %150
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @b43err(i32*, i8*) #1

declare dso_local %struct.b43_wl* @ERR_PTR(i32) #1

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @b43info(%struct.b43_wl*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
