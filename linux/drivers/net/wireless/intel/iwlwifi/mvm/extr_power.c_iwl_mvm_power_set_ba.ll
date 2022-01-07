; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_set_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_set_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iwl_beacon_filter_cmd = type { i32, i32, i32 }

@IWL_BF_CMD_CONFIG_DEFAULTS = common dso_local global i32 0, align 4
@IWL_UCODE_WOWLAN = common dso_local global i64 0, align 8
@IWL_BA_ESCAPE_TIMER_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_power_set_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_power_set_ba(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_beacon_filter_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %8)
  store %struct.iwl_mvm_vif* %9, %struct.iwl_mvm_vif** %6, align 8
  %10 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, %struct.iwl_beacon_filter_cmd* %7, i32 0, i32 0
  %11 = load i32, i32* @IWL_BF_CMD_CONFIG_DEFAULTS, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, %struct.iwl_beacon_filter_cmd* %7, i32 0, i32 1
  %13 = call i32 @cpu_to_le32(i32 1)
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, %struct.iwl_beacon_filter_cmd* %7, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IWL_UCODE_WOWLAN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @IWL_BA_ESCAPE_TIMER_D3, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds %struct.iwl_beacon_filter_cmd, %struct.iwl_beacon_filter_cmd* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %50 = call i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %42, %37, %32
  %53 = phi i1 [ true, %42 ], [ true, %37 ], [ true, %32 ], [ %51, %48 ]
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %61 = call i32 @_iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %59, %struct.ieee80211_vif* %60, %struct.iwl_beacon_filter_cmd* %7, i32 0)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif*) #1

declare dso_local i32 @_iwl_mvm_enable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_beacon_filter_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
