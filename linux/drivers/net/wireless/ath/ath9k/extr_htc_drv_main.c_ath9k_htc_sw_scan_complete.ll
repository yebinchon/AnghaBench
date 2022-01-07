; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }

@ATH_OP_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_htc_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_sw_scan_complete(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %8, align 8
  store %struct.ath9k_htc_priv* %9, %struct.ath9k_htc_priv** %5, align 8
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ath_common* @ath9k_hw_common(i32 %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load i32, i32* @ATH_OP_SCANNING, align 4
  %21 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %28 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %27)
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %30 = call i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv* %29)
  %31 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %32 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %31)
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
