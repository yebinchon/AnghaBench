; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_atx_tid = type { i32 }

@ATH_OP_SCANNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_MIN_AMPDU_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @ath9k_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_ampdu_params*, align 8
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.ath_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ath_atx_tid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %6, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.ath_softc*, %struct.ath_softc** %18, align 8
  store %struct.ath_softc* %19, %struct.ath_softc** %7, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ath_common* @ath9k_hw_common(i32 %22)
  store %struct.ath_common* %23, %struct.ath_common** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %24, i32 0, i32 3
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %25, align 8
  store %struct.ieee80211_sta* %26, %struct.ieee80211_sta** %11, align 8
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ath_node*
  store %struct.ath_node* %30, %struct.ath_node** %12, align 8
  %31 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %37, i32 0, i32 1
  store i32* %38, i32** %15, align 8
  %39 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %110 [
    i32 134, label %43
    i32 133, label %44
    i32 131, label %45
    i32 129, label %78
    i32 128, label %78
    i32 130, label %79
    i32 132, label %98
  ]

43:                                               ; preds = %3
  br label %116

44:                                               ; preds = %3
  br label %116

45:                                               ; preds = %3
  %46 = call i32 (...) @ath9k_is_chanctx_enabled()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* @ATH_OP_SCANNING, align 4
  %50 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %51 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %50, i32 0, i32 0
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %116

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %60 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %59)
  %61 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @ath_tx_aggr_start(%struct.ath_softc* %61, %struct.ieee80211_sta* %62, i32 %63, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %58
  %76 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %77 = call i32 @ath9k_ps_restore(%struct.ath_softc* %76)
  br label %116

78:                                               ; preds = %3, %3
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %3, %78
  %80 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %81 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %80)
  %82 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %83 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ath_tx_aggr_stop(%struct.ath_softc* %82, %struct.ieee80211_sta* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %79
  %96 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %97 = call i32 @ath9k_ps_restore(%struct.ath_softc* %96)
  br label %116

98:                                               ; preds = %3
  %99 = load %struct.ath_node*, %struct.ath_node** %12, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call %struct.ath_atx_tid* @ath_node_to_tid(%struct.ath_node* %99, i32 %100)
  store %struct.ath_atx_tid* %101, %struct.ath_atx_tid** %16, align 8
  %102 = load i32, i32* @IEEE80211_MIN_AMPDU_BUF, align 4
  %103 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %102, %106
  %108 = load %struct.ath_atx_tid*, %struct.ath_atx_tid** %16, align 8
  %109 = getelementptr inbounds %struct.ath_atx_tid, %struct.ath_atx_tid* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %116

110:                                              ; preds = %3
  %111 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.ath_common* @ath9k_hw_common(i32 %113)
  %115 = call i32 @ath_err(%struct.ath_common* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %98, %95, %75, %54, %44, %43
  %117 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %118 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %10, align 4
  ret i32 %120
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_aggr_start(%struct.ath_softc*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_aggr_stop(%struct.ath_softc*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local %struct.ath_atx_tid* @ath_node_to_tid(%struct.ath_node*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
