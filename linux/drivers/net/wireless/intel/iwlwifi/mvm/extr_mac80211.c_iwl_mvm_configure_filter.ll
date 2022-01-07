; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_mvm = type { i32, %struct.iwl_mcast_filter_cmd* }
%struct.iwl_mcast_filter_cmd = type { i32, i64 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @iwl_mvm_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_mcast_filter_cmd*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_mcast_filter_cmd*
  store %struct.iwl_mcast_filter_cmd* %15, %struct.iwl_mcast_filter_cmd** %10, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 1
  %21 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %20, align 8
  %22 = call i32 @kfree(%struct.iwl_mcast_filter_cmd* %21)
  %23 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %10, align 8
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 1
  store %struct.iwl_mcast_filter_cmd* %23, %struct.iwl_mcast_filter_cmd** %25, align 8
  %26 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %10, align 8
  %27 = icmp ne %struct.iwl_mcast_filter_cmd* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %56

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FIF_ALLMULTI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_mcast_filter_cmd, %struct.iwl_mcast_filter_cmd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_mcast_filter_cmd, %struct.iwl_mcast_filter_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.iwl_mcast_filter_cmd*, %struct.iwl_mcast_filter_cmd** %10, align 8
  %52 = getelementptr inbounds %struct.iwl_mcast_filter_cmd, %struct.iwl_mcast_filter_cmd* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %55 = call i32 @iwl_mvm_recalc_multicast(%struct.iwl_mvm* %54)
  br label %56

56:                                               ; preds = %53, %28
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.iwl_mcast_filter_cmd*) #1

declare dso_local i32 @iwl_mvm_recalc_multicast(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
