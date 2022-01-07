; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, i64, %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i64 }
%struct.mt7615_sta = type { i32 }
%struct.mt76_txq = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @mt7615_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7615_dev*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_txq*, align 8
  %12 = alloca %struct.mt7615_sta*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mt76_txq*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %16 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.mt7615_dev*, %struct.mt7615_dev** %20, align 8
  store %struct.mt7615_dev* %21, %struct.mt7615_dev** %9, align 8
  %22 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %22, i32 0, i32 4
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %23, align 8
  store %struct.ieee80211_sta* %24, %struct.ieee80211_sta** %10, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 2
  %27 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %26, align 8
  %28 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %27, i64 %30
  %32 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %31, align 8
  store %struct.ieee80211_txq* %32, %struct.ieee80211_txq** %11, align 8
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %36, %struct.mt7615_sta** %12, align 8
  %37 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  %43 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %11, align 8
  %44 = icmp ne %struct.ieee80211_txq* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %116

48:                                               ; preds = %3
  %49 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.mt76_txq*
  store %struct.mt76_txq* %52, %struct.mt76_txq** %15, align 8
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %115 [
    i32 134, label %54
    i32 133, label %68
    i32 132, label %78
    i32 129, label %86
    i32 128, label %86
    i32 131, label %92
    i32 130, label %103
  ]

54:                                               ; preds = %48
  %55 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %56 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %55, i32 0, i32 0
  %57 = load %struct.mt7615_sta*, %struct.mt7615_sta** %12, align 8
  %58 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %57, i32 0, i32 0
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mt76_rx_aggr_start(i32* %56, i32* %58, i64 %59, i64 %60, i32 %63)
  %65 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %66 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %67 = call i32 @mt7615_mcu_set_rx_ba(%struct.mt7615_dev* %65, %struct.ieee80211_ampdu_params* %66, i32 1)
  br label %115

68:                                               ; preds = %48
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %70 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %69, i32 0, i32 0
  %71 = load %struct.mt7615_sta*, %struct.mt7615_sta** %12, align 8
  %72 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %71, i32 0, i32 0
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @mt76_rx_aggr_stop(i32* %70, i32* %72, i64 %73)
  %75 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %76 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %77 = call i32 @mt7615_mcu_set_rx_ba(%struct.mt7615_dev* %75, %struct.ieee80211_ampdu_params* %76, i32 0)
  br label %115

78:                                               ; preds = %48
  %79 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %80 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %82 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %84 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %85 = call i32 @mt7615_mcu_set_tx_ba(%struct.mt7615_dev* %83, %struct.ieee80211_ampdu_params* %84, i32 1)
  br label %115

86:                                               ; preds = %48, %48
  %87 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %88 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %90 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %91 = call i32 @mt7615_mcu_set_tx_ba(%struct.mt7615_dev* %89, %struct.ieee80211_ampdu_params* %90, i32 0)
  br label %115

92:                                               ; preds = %48
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @IEEE80211_SN_TO_SEQ(i64 %93)
  %95 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %96 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %98 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %97, i32 %100, i64 %101)
  br label %115

103:                                              ; preds = %48
  %104 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %105 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %107 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %108 = call i32 @mt7615_mcu_set_tx_ba(%struct.mt7615_dev* %106, %struct.ieee80211_ampdu_params* %107, i32 0)
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %110 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %109, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %48, %103, %92, %86, %78, %68, %54
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %45
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @mt76_rx_aggr_start(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @mt7615_mcu_set_rx_ba(%struct.mt7615_dev*, %struct.ieee80211_ampdu_params*, i32) #1

declare dso_local i32 @mt76_rx_aggr_stop(i32*, i32*, i64) #1

declare dso_local i32 @mt7615_mcu_set_tx_ba(%struct.mt7615_dev*, %struct.ieee80211_ampdu_params*, i32) #1

declare dso_local i32 @IEEE80211_SN_TO_SEQ(i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
