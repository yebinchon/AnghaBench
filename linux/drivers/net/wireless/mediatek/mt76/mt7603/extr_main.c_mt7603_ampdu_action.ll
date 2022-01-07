; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, i64, %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i64 }
%struct.mt7603_sta = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mt76_txq = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @mt7603_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7603_dev*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_txq*, align 8
  %12 = alloca %struct.mt7603_sta*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mt76_txq*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %17 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load %struct.mt7603_dev*, %struct.mt7603_dev** %21, align 8
  store %struct.mt7603_dev* %22, %struct.mt7603_dev** %9, align 8
  %23 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %24, align 8
  store %struct.ieee80211_sta* %25, %struct.ieee80211_sta** %10, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 2
  %28 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %27, align 8
  %29 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %28, i64 %31
  %33 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %32, align 8
  store %struct.ieee80211_txq* %33, %struct.ieee80211_txq** %11, align 8
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.mt7603_sta*
  store %struct.mt7603_sta* %37, %struct.mt7603_sta** %12, align 8
  %38 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %15, align 4
  %47 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %11, align 8
  %48 = icmp ne %struct.ieee80211_txq* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %133

52:                                               ; preds = %3
  %53 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.mt76_txq*
  store %struct.mt76_txq* %56, %struct.mt76_txq** %16, align 8
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %132 [
    i32 134, label %58
    i32 133, label %75
    i32 132, label %82
    i32 129, label %95
    i32 128, label %95
    i32 131, label %105
    i32 130, label %116
  ]

58:                                               ; preds = %52
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %60 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %59, i32 0, i32 0
  %61 = load %struct.mt7603_sta*, %struct.mt7603_sta** %12, align 8
  %62 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %61, i32 0, i32 0
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mt76_rx_aggr_start(i32* %60, %struct.TYPE_3__* %62, i64 %63, i64 %64, i32 %67)
  %69 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @mt7603_mac_rx_ba_reset(%struct.mt7603_dev* %69, i32 %72, i64 %73)
  br label %132

75:                                               ; preds = %52
  %76 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %77 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %76, i32 0, i32 0
  %78 = load %struct.mt7603_sta*, %struct.mt7603_sta** %12, align 8
  %79 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %78, i32 0, i32 0
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @mt76_rx_aggr_stop(i32* %77, %struct.TYPE_3__* %79, i64 %80)
  br label %132

82:                                               ; preds = %52
  %83 = load %struct.mt76_txq*, %struct.mt76_txq** %16, align 8
  %84 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.mt76_txq*, %struct.mt76_txq** %16, align 8
  %86 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %88 = load %struct.mt7603_sta*, %struct.mt7603_sta** %12, align 8
  %89 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @mt7603_mac_tx_ba_reset(%struct.mt7603_dev* %87, i32 %91, i64 %92, i32 %93)
  br label %132

95:                                               ; preds = %52, %52
  %96 = load %struct.mt76_txq*, %struct.mt76_txq** %16, align 8
  %97 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %99 = load %struct.mt7603_sta*, %struct.mt7603_sta** %12, align 8
  %100 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @mt7603_mac_tx_ba_reset(%struct.mt7603_dev* %98, i32 %102, i64 %103, i32 -1)
  br label %132

105:                                              ; preds = %52
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @IEEE80211_SN_TO_SEQ(i64 %106)
  %108 = load %struct.mt76_txq*, %struct.mt76_txq** %16, align 8
  %109 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %111 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %110, i32 %113, i64 %114)
  br label %132

116:                                              ; preds = %52
  %117 = load %struct.mt76_txq*, %struct.mt76_txq** %16, align 8
  %118 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %117, i32 0, i32 0
  store i32 0, i32* %118, align 4
  %119 = load %struct.mt7603_dev*, %struct.mt7603_dev** %9, align 8
  %120 = load %struct.mt7603_sta*, %struct.mt7603_sta** %12, align 8
  %121 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @mt7603_mac_tx_ba_reset(%struct.mt7603_dev* %119, i32 %123, i64 %124, i32 -1)
  %126 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %127 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %126, i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %52, %116, %105, %95, %82, %75, %58
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %49
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @mt76_rx_aggr_start(i32*, %struct.TYPE_3__*, i64, i64, i32) #1

declare dso_local i32 @mt7603_mac_rx_ba_reset(%struct.mt7603_dev*, i32, i64) #1

declare dso_local i32 @mt76_rx_aggr_stop(i32*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @mt7603_mac_tx_ba_reset(%struct.mt7603_dev*, i32, i64, i32) #1

declare dso_local i32 @IEEE80211_SN_TO_SEQ(i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
