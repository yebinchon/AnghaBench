; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_recalc_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_recalc_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.iwl_mvm_mc_iter_data = type { %struct.iwl_mvm* }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_mc_iface_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_recalc_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_recalc_multicast(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_mvm_mc_iter_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_mvm_mc_iter_data, %struct.iwl_mvm_mc_iter_data* %3, i32 0, i32 0
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  store %struct.iwl_mvm* %5, %struct.iwl_mvm** %4, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 2
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %23 = load i32, i32* @iwl_mvm_mc_iface_iterator, align 4
  %24 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %21, i32 %22, i32 %23, %struct.iwl_mvm_mc_iter_data* %3)
  br label %25

25:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_mc_iter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
