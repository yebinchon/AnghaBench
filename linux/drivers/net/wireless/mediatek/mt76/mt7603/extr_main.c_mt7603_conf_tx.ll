; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i64, i64, i64, i64 }

@MT_WMM_TXOP_MASK = common dso_local global i64 0, align 8
@MT_WMM_AIFSN = common dso_local global i32 0, align 4
@MT_WMM_AIFSN_MASK = common dso_local global i64 0, align 8
@MT_WMM_CWMIN = common dso_local global i32 0, align 4
@MT_WMM_CWMIN_MASK = common dso_local global i64 0, align 8
@MT_WMM_CWMAX_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @mt7603_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.mt7603_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %14, align 8
  store %struct.mt7603_dev* %15, %struct.mt7603_dev** %9, align 8
  store i64 31, i64* %10, align 8
  store i64 1023, i64* %11, align 8
  %16 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %17 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %45 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %49 = call i32 @mt7603_mac_stop(%struct.mt7603_dev* %48)
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @MT_WMM_TXOP(i64 %51)
  %53 = call i64 @mt76_rr(%struct.mt7603_dev* %50, i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* @MT_WMM_TXOP_MASK, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @MT_WMM_TXOP_SHIFT(i64 %55)
  %57 = shl i64 %54, %56
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %12, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %12, align 8
  %61 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @MT_WMM_TXOP_SHIFT(i64 %64)
  %66 = shl i64 %63, %65
  %67 = load i64, i64* %12, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @MT_WMM_TXOP(i64 %70)
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @mt76_wr(%struct.mt7603_dev* %69, i32 %71, i64 %72)
  %74 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %75 = load i32, i32* @MT_WMM_AIFSN, align 4
  %76 = call i64 @mt76_rr(%struct.mt7603_dev* %74, i32 %75)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* @MT_WMM_AIFSN_MASK, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @MT_WMM_AIFSN_SHIFT(i64 %78)
  %80 = shl i64 %77, %79
  %81 = xor i64 %80, -1
  %82 = load i64, i64* %12, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @MT_WMM_AIFSN_SHIFT(i64 %87)
  %89 = shl i64 %86, %88
  %90 = load i64, i64* %12, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %93 = load i32, i32* @MT_WMM_AIFSN, align 4
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @mt76_wr(%struct.mt7603_dev* %92, i32 %93, i64 %94)
  %96 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %97 = load i32, i32* @MT_WMM_CWMIN, align 4
  %98 = call i64 @mt76_rr(%struct.mt7603_dev* %96, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* @MT_WMM_CWMIN_MASK, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @MT_WMM_CWMIN_SHIFT(i64 %100)
  %102 = shl i64 %99, %101
  %103 = xor i64 %102, -1
  %104 = load i64, i64* %12, align 8
  %105 = and i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i64 @MT_WMM_CWMIN_SHIFT(i64 %107)
  %109 = shl i64 %106, %108
  %110 = load i64, i64* %12, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %113 = load i32, i32* @MT_WMM_CWMIN, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @mt76_wr(%struct.mt7603_dev* %112, i32 %113, i64 %114)
  %116 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @MT_WMM_CWMAX(i64 %117)
  %119 = call i64 @mt76_rr(%struct.mt7603_dev* %116, i32 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* @MT_WMM_CWMAX_MASK, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i64 @MT_WMM_CWMAX_SHIFT(i64 %121)
  %123 = shl i64 %120, %122
  %124 = xor i64 %123, -1
  %125 = load i64, i64* %12, align 8
  %126 = and i64 %125, %124
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @MT_WMM_CWMAX_SHIFT(i64 %128)
  %130 = shl i64 %127, %129
  %131 = load i64, i64* %12, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %12, align 8
  %133 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @MT_WMM_CWMAX(i64 %134)
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @mt76_wr(%struct.mt7603_dev* %133, i32 %135, i64 %136)
  %138 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %139 = call i32 @mt7603_mac_start(%struct.mt7603_dev* %138)
  %140 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %141 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7603_mac_stop(%struct.mt7603_dev*) #1

declare dso_local i64 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @MT_WMM_TXOP(i64) #1

declare dso_local i64 @MT_WMM_TXOP_SHIFT(i64) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i64) #1

declare dso_local i64 @MT_WMM_AIFSN_SHIFT(i64) #1

declare dso_local i64 @MT_WMM_CWMIN_SHIFT(i64) #1

declare dso_local i32 @MT_WMM_CWMAX(i64) #1

declare dso_local i64 @MT_WMM_CWMAX_SHIFT(i64) #1

declare dso_local i32 @mt7603_mac_start(%struct.mt7603_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
