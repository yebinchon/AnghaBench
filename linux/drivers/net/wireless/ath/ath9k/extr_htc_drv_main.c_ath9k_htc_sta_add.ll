; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath9k_htc_sta = type { %struct.ath9k_htc_priv*, i32 }

@ath9k_htc_sta_rc_update_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_htc_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ath9k_htc_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  store %struct.ath9k_htc_priv* %12, %struct.ath9k_htc_priv** %7, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %16, %struct.ath9k_htc_sta** %8, align 8
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %21 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %20)
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %25 = call i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv* %22, %struct.ieee80211_vif* %23, %struct.ieee80211_sta* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %8, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %29, i32 0, i32 1
  %31 = load i32, i32* @ath9k_htc_sta_rc_update_work, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %34 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %8, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %34, i32 0, i32 0
  store %struct.ath9k_htc_priv* %33, %struct.ath9k_htc_priv** %35, align 8
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %38 = call i32 @ath9k_htc_init_rate(%struct.ath9k_htc_priv* %36, %struct.ieee80211_sta* %37)
  br label %39

39:                                               ; preds = %28, %3
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %41 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %40)
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ath9k_htc_init_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
