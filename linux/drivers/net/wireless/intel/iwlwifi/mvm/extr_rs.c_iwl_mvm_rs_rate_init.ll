; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_mvm_rs_rate_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_iwl_mvm_rs_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rs_rate_init(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %11 = call i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @rs_fw_rate_init(%struct.iwl_mvm* %14, %struct.ieee80211_sta* %15, i32 %16, i32 %17)
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %21 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %20)
  store %struct.iwl_mvm_sta* %21, %struct.iwl_mvm_sta** %9, align 8
  %22 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @rs_drv_rate_init(%struct.iwl_mvm* %28, %struct.ieee80211_sta* %29, i32 %30)
  %32 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm*) #1

declare dso_local i32 @rs_fw_rate_init(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rs_drv_rate_init(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
