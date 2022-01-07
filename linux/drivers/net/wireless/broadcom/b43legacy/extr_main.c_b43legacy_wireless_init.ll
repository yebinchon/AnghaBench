; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.TYPE_4__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32 }
%struct.ieee80211_hw = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43legacy_wl = type { i64*, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }

@ENOMEM = common dso_local global i32 0, align 4
@b43legacy_hw_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate ieee80211 device\0A\00", align 1
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@b43legacy_beacon_update_trigger_work = common dso_local global i32 0, align 4
@b43legacy_tx_work = common dso_local global i32 0, align 4
@B43legacy_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Broadcom %04X WLAN found (core revision %u)\0A\00", align 1
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*)* @b43legacy_wireless_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_init(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.b43legacy_wl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.ssb_sprom* %11, %struct.ssb_sprom** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %15 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @b43legacy_sprom_fixup(%struct.TYPE_6__* %16)
  %18 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 48, i32* @b43legacy_hw_ops)
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %4, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = icmp ne %struct.ieee80211_hw* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @b43legacyerr(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %137

23:                                               ; preds = %1
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %26 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %24, i32 %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = load i32, i32* @SIGNAL_DBM, align 4
  %29 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %27, i32 %28)
  %30 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = or i32 %34, %36
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %48 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %46, i32 %49)
  %51 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %52 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_valid_ether_addr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %23
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %59 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %57, i32 %60)
  br label %68

62:                                               ; preds = %23
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %65 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %73 = call i32 @wiphy_ext_feature_set(%struct.TYPE_5__* %71, i32 %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %74)
  store %struct.b43legacy_wl* %75, %struct.b43legacy_wl** %5, align 8
  %76 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %77 = call i32 @memset(%struct.b43legacy_wl* %76, i32 0, i32 48)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %80 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %79, i32 0, i32 8
  store %struct.ieee80211_hw* %78, %struct.ieee80211_hw** %80, align 8
  %81 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %82 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %81, i32 0, i32 7
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %85 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %84, i32 0, i32 6
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %88 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %87, i32 0, i32 5
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %91 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %90, i32 0, i32 4
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %94 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %93, i32 0, i32 3
  %95 = load i32, i32* @b43legacy_beacon_update_trigger_work, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %98 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %97, i32 0, i32 2
  %99 = load i32, i32* @b43legacy_tx_work, align 4
  %100 = call i32 @INIT_WORK(i32* %98, i32 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %119, %68
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @B43legacy_QOS_QUEUE_NUM, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %107 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @skb_queue_head_init(i32* %111)
  %113 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %114 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %124 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %125 = call i32 @ssb_set_devtypedata(%struct.ssb_device* %123, %struct.b43legacy_wl* %124)
  %126 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %127 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %128 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %133 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @b43legacyinfo(%struct.b43legacy_wl* %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %135)
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %122, %21
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @b43legacy_sprom_fixup(%struct.TYPE_6__*) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @b43legacyerr(i32*, i8*) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.b43legacy_wl*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ssb_set_devtypedata(%struct.ssb_device*, %struct.b43legacy_wl*) #1

declare dso_local i32 @b43legacyinfo(%struct.b43legacy_wl*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
