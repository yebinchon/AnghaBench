; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32, %struct.ieee80211_txq**, i64 }
%struct.ieee80211_txq = type { i64 }
%struct.mt76x02_sta = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mt76_txq = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.mt76x02_dev*, align 8
  %11 = alloca %struct.mt76x02_sta*, align 8
  %12 = alloca %struct.ieee80211_txq*, align 8
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
  %19 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %19, i32 0, i32 4
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %20, align 8
  store %struct.ieee80211_sta* %21, %struct.ieee80211_sta** %9, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 0
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %23, align 8
  store %struct.mt76x02_dev* %24, %struct.mt76x02_dev** %10, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.mt76x02_sta*
  store %struct.mt76x02_sta* %28, %struct.mt76x02_sta** %11, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %30, align 8
  %32 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %31, i64 %34
  %36 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %35, align 8
  store %struct.ieee80211_txq* %36, %struct.ieee80211_txq** %12, align 8
  %37 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  %43 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %44 = icmp ne %struct.ieee80211_txq* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %134

48:                                               ; preds = %3
  %49 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.mt76_txq*
  store %struct.mt76_txq* %52, %struct.mt76_txq** %15, align 8
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %133 [
    i32 134, label %54
    i32 133, label %77
    i32 132, label %96
    i32 129, label %110
    i32 128, label %110
    i32 131, label %113
    i32 130, label %124
  ]

54:                                               ; preds = %48
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %55, i32 0, i32 0
  %57 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %11, align 8
  %58 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %57, i32 0, i32 0
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mt76_rx_aggr_start(i32* %56, %struct.TYPE_3__* %58, i64 %59, i64 %60, i32 %63)
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %66 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %11, align 8
  %67 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MT_WCID_ADDR(i32 %69)
  %71 = add nsw i32 %70, 4
  %72 = load i64, i64* %13, align 8
  %73 = add i64 16, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @BIT(i32 %74)
  %76 = call i32 @mt76_set(%struct.mt76x02_dev* %65, i32 %71, i32 %75)
  br label %133

77:                                               ; preds = %48
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %79 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %78, i32 0, i32 0
  %80 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %11, align 8
  %81 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %80, i32 0, i32 0
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @mt76_rx_aggr_stop(i32* %79, %struct.TYPE_3__* %81, i64 %82)
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %10, align 8
  %85 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %11, align 8
  %86 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MT_WCID_ADDR(i32 %88)
  %90 = add nsw i32 %89, 4
  %91 = load i64, i64* %13, align 8
  %92 = add i64 16, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @BIT(i32 %93)
  %95 = call i32 @mt76_clear(%struct.mt76x02_dev* %84, i32 %90, i32 %94)
  br label %133

96:                                               ; preds = %48
  %97 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %98 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %100 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %107 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ieee80211_send_bar(%struct.ieee80211_vif* %101, i32 %104, i64 %105, i32 %108)
  br label %133

110:                                              ; preds = %48, %48
  %111 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %112 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  br label %133

113:                                              ; preds = %48
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @IEEE80211_SN_TO_SEQ(i64 %114)
  %116 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %117 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %118, i32 %121, i64 %122)
  br label %133

124:                                              ; preds = %48
  %125 = load %struct.mt76_txq*, %struct.mt76_txq** %15, align 8
  %126 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %125, i32 0, i32 0
  store i32 0, i32* %126, align 4
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %127, i32 %130, i64 %131)
  br label %133

133:                                              ; preds = %48, %124, %113, %110, %96, %77, %54
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %45
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @mt76_rx_aggr_start(i32*, %struct.TYPE_3__*, i64, i64, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_WCID_ADDR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_rx_aggr_stop(i32*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @ieee80211_send_bar(%struct.ieee80211_vif*, i32, i64, i32) #1

declare dso_local i32 @IEEE80211_SN_TO_SEQ(i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
