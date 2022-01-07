; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_vif_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_vif_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_htc_vif_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @ath9k_htc_vif_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %3 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %11 = load i32, i32* @ath9k_htc_vif_iter, align 4
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %13 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %9, i32 %10, i32 %11, %struct.ath9k_htc_priv* %12)
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %20 = call i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %28 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %27)
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %30 = call i32 @ath9k_htc_beacon_reconfig(%struct.ath9k_htc_priv* %29)
  %31 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %32 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %31)
  br label %33

33:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_beacon_reconfig(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
