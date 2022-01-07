; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i64, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i64, i32 }
%struct.ath9k_htc_sta = type { i32* }

@ATH9K_HTC_MAX_TID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AGGR_OPERATIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @ath9k_htc_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_ampdu_params*, align 8
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ath9k_htc_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %16, i32 0, i32 2
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %10, align 8
  %19 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %29 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %28)
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %89 [
    i32 134, label %31
    i32 133, label %32
    i32 131, label %33
    i32 130, label %50
    i32 129, label %50
    i32 128, label %50
    i32 132, label %63
  ]

31:                                               ; preds = %3
  br label %95

32:                                               ; preds = %3
  br label %95

33:                                               ; preds = %3
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv* %34, %struct.ieee80211_vif* %35, %struct.ieee80211_sta* %36, i32 %37, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %33
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %43, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %33
  br label %95

50:                                               ; preds = %3, %3, %3
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv* %51, %struct.ieee80211_vif* %52, %struct.ieee80211_sta* %53, i32 %54, i64 %55)
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %57, i32 %60, i64 %61)
  br label %95

63:                                               ; preds = %3
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @ATH9K_HTC_MAX_TID, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %95

70:                                               ; preds = %63
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %74, %struct.ath9k_htc_sta** %8, align 8
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %76 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @spin_lock_bh(i32* %77)
  %79 = load i32, i32* @AGGR_OPERATIONAL, align 4
  %80 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %8, align 8
  %81 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  br label %95

89:                                               ; preds = %3
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %91 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ath9k_hw_common(i32 %92)
  %94 = call i32 @ath_err(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %70, %67, %50, %49, %32, %31
  %96 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %97 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %96)
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %99 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_err(i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
