; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, %struct.TYPE_4__, i64, i64, i32, i32, i32, i32*, i32*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@iwl_mvm_cleanup_iterator = common dso_local global i32 0, align 4
@FW_DBG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_restart_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_restart_cleanup(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %3 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %4 = call i32 @iwl_mvm_stop_device(%struct.iwl_mvm* %3)
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 12
  store i64 0, i64* %6, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 11
  store i64 0, i64* %8, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %14 = call i32 @iwl_mvm_cleanup_roc_te(%struct.iwl_mvm* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ieee80211_remain_on_channel_expired(i32 %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %20 = call i32 @iwl_mvm_ftm_restart(%struct.iwl_mvm* %19)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @iwl_mvm_cleanup_iterator, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %26 = call i32 @ieee80211_iterate_interfaces(i32 %23, i32 0, i32 %24, %struct.iwl_mvm* %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 10
  store i32* null, i32** %28, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %30 = call i32 @iwl_mvm_reset_phy_ctxts(%struct.iwl_mvm* %29)
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 9
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @memset(i32* %33, i32 0, i32 8)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 8
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 7
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ieee80211_wake_queues(i32 %43)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @FW_DBG_INVALID, align 4
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %57 = call i32 @iwl_mvm_accu_radio_stats(%struct.iwl_mvm* %56)
  ret void
}

declare dso_local i32 @iwl_mvm_stop_device(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_cleanup_roc_te(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i32 @iwl_mvm_ftm_restart(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_iterate_interfaces(i32, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_reset_phy_ctxts(%struct.iwl_mvm*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @iwl_mvm_accu_radio_stats(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
