; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_manage_ibss_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_manage_ibss_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_vif_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_manage_ibss_station(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_vif_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %13, %struct.iwl_vif_priv** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %25, i32 0, i32 0
  %27 = call i32 @iwlagn_add_bssid_station(%struct.iwl_priv* %17, i32 %20, i32 %24, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %30 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iwl_remove_station(%struct.iwl_priv* %29, i32 %32, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @iwlagn_add_bssid_station(%struct.iwl_priv*, i32, i32, i32*) #1

declare dso_local i32 @iwl_remove_station(%struct.iwl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
