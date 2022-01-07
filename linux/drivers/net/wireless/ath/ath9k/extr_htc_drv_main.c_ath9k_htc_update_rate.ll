; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_update_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_update_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_rate = type { i32 }
%struct.ieee80211_sta = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Updated target sta: %pM, rate caps: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*)* @ath9k_htc_update_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_update_rate(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_htc_target_rate, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %6, align 8
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ath_common* @ath9k_hw_common(i32 %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  %15 = call i32 @memset(%struct.ath9k_htc_target_rate* %8, i32 0, i32 4)
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %17, i32 %20)
  store %struct.ieee80211_sta* %21, %struct.ieee80211_sta** %9, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %23 = icmp ne %struct.ieee80211_sta* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 (...) @rcu_read_unlock()
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %29 = call i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv* %27, %struct.ieee80211_sta* %28, %struct.ath9k_htc_target_rate* %8)
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %32 = call i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv* %31, %struct.ath9k_htc_target_rate* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %37 = load i32, i32* @CONFIG, align 4
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %24, %35, %26
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_rate*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_sta*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
