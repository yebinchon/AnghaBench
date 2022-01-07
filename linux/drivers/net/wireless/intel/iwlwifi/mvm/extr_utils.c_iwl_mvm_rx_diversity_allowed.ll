; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_diversity_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_diversity_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_diversity_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rx_diversity_allowed(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 2
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = call i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm* %8)
  %10 = call i32 @num_of_ant(i32 %9)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %26 = load i32, i32* @iwl_mvm_diversity_iter, align 4
  %27 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %24, i32 %25, i32 %26, i32* %4)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %20, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
