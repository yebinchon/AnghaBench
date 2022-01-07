; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_old_pre_chan_sw_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_old_pre_chan_sw_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i64, i64 }
%struct.iwl_mvm_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IWL_MVM_CHANNEL_SWITCH_TIME_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @iwl_mvm_old_pre_chan_sw_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_old_pre_chan_sw_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_channel_switch*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %25, %29
  %31 = load i32, i32* @IWL_MVM_CHANNEL_SWITCH_TIME_CLIENT, align 4
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, 1024
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %21, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %18, %17
  %37 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = call i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm* %42, %struct.ieee80211_vif* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = call i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm* %52, %struct.ieee80211_vif* %53, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @iwl_mvm_schedule_csa_period(%struct.iwl_mvm* %61, %struct.ieee80211_vif* %62, i32 %66, i64 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_schedule_csa_period(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
