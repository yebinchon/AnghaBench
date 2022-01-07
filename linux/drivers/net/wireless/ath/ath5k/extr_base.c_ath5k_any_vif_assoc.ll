; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_any_vif_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_any_vif_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_vif_iter_data = type { i32, i32, i32, i32* }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath5k_vif_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_any_vif_assoc(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_vif_iter_data, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %3, i32 0, i32 3
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %3, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %3, i32 0, i32 2
  store i32 1, i32* %7, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %12 = load i32, i32* @ath5k_vif_iter, align 4
  %13 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %10, i32 %11, i32 %12, %struct.ath5k_vif_iter_data* %3)
  %14 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  ret i32 %15
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath5k_vif_iter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
