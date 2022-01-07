; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, i64, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_sta = type { i64, i32, i32* }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mac ampdu action action %d tid %d\0A\00", align 1
@WCN36XX_AMPDU_START = common dso_local global i32 0, align 4
@WCN36XX_AMPDU_OPERATIONAL = common dso_local global i32 0, align 4
@WCN36XX_AMPDU_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @wcn36xx_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_ampdu_params*, align 8
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_sta*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  store %struct.wcn36xx* %15, %struct.wcn36xx** %7, align 8
  %16 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %19 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %18)
  store %struct.wcn36xx_sta* %19, %struct.wcn36xx_sta** %8, align 8
  %20 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %20, i32 0, i32 3
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %21, align 8
  store %struct.ieee80211_sta* %22, %struct.ieee80211_sta** %9, align 8
  %23 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %29, i32 0, i32 2
  store i64* %30, i64** %12, align 8
  %31 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @wcn36xx_dbg(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %124 [
    i32 134, label %39
    i32 133, label %58
    i32 131, label %65
    i32 132, label %84
    i32 129, label %105
    i32 128, label %105
    i32 130, label %105
  ]

39:                                               ; preds = %3
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %48 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %49 = call i32 @get_sta_index(%struct.ieee80211_vif* %47, %struct.wcn36xx_sta* %48)
  %50 = call i32 @wcn36xx_smd_add_ba_session(%struct.wcn36xx* %43, %struct.ieee80211_sta* %44, i64 %45, i64* %46, i32 0, i32 %49)
  %51 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %52 = call i32 @wcn36xx_smd_add_ba(%struct.wcn36xx* %51)
  %53 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %55 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %56 = call i32 @get_sta_index(%struct.ieee80211_vif* %54, %struct.wcn36xx_sta* %55)
  %57 = call i32 @wcn36xx_smd_trigger_ba(%struct.wcn36xx* %53, i32 %56)
  br label %126

58:                                               ; preds = %3
  %59 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %62 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %63 = call i32 @get_sta_index(%struct.ieee80211_vif* %61, %struct.wcn36xx_sta* %62)
  %64 = call i32 @wcn36xx_smd_del_ba(%struct.wcn36xx* %59, i64 %60, i32 %63)
  br label %126

65:                                               ; preds = %3
  %66 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load i32, i32* @WCN36XX_AMPDU_START, align 4
  %70 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %71 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %76 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %78, i32 %81, i64 %82)
  br label %126

84:                                               ; preds = %3
  %85 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %86 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %85, i32 0, i32 1
  %87 = call i32 @spin_lock_bh(i32* %86)
  %88 = load i32, i32* @WCN36XX_AMPDU_OPERATIONAL, align 4
  %89 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %90 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %95 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %98 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %102 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %103 = call i32 @get_sta_index(%struct.ieee80211_vif* %101, %struct.wcn36xx_sta* %102)
  %104 = call i32 @wcn36xx_smd_add_ba_session(%struct.wcn36xx* %97, %struct.ieee80211_sta* %98, i64 %99, i64* %100, i32 1, i32 %103)
  br label %126

105:                                              ; preds = %3, %3, %3
  %106 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %107 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %106, i32 0, i32 1
  %108 = call i32 @spin_lock_bh(i32* %107)
  %109 = load i32, i32* @WCN36XX_AMPDU_NONE, align 4
  %110 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %111 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %116 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %118, i32 %121, i64 %122)
  br label %126

124:                                              ; preds = %3
  %125 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %105, %84, %65, %58, %39
  %127 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %128 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  ret i32 0
}

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wcn36xx_smd_add_ba_session(%struct.wcn36xx*, %struct.ieee80211_sta*, i64, i64*, i32, i32) #1

declare dso_local i32 @get_sta_index(%struct.ieee80211_vif*, %struct.wcn36xx_sta*) #1

declare dso_local i32 @wcn36xx_smd_add_ba(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_trigger_ba(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_smd_del_ba(%struct.wcn36xx*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
