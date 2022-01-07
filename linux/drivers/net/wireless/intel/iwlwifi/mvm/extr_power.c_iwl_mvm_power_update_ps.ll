; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_update_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_power_vifs = type { i64, %struct.iwl_mvm* }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_power_get_vifs_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_power_update_ps(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_power_vifs, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 1
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm* %8, %struct.iwl_mvm** %7, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %16 = load i32, i32* @iwl_mvm_power_get_vifs_iterator, align 4
  %17 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %14, i32 %15, i32 %16, %struct.iwl_power_vifs* %4)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = call i32 @iwl_mvm_power_set_ps(%struct.iwl_mvm* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_power_vifs, %struct.iwl_power_vifs* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @iwl_mvm_power_set_ba(%struct.iwl_mvm* %29, i64 %31)
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_power_vifs*) #1

declare dso_local i32 @iwl_mvm_power_set_ps(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_power_set_ba(%struct.iwl_mvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
