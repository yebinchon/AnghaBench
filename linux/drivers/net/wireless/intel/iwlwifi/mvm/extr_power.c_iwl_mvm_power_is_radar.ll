; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_is_radar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_is_radar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_vif*)* @iwl_mvm_power_is_radar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_power_is_radar(%struct.ieee80211_vif* %0) #0 {
  %2 = alloca %struct.ieee80211_vif*, align 8
  %3 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %9)
  store %struct.ieee80211_chanctx_conf* %10, %struct.ieee80211_chanctx_conf** %3, align 8
  %11 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %3, align 8
  %12 = icmp ne %struct.ieee80211_chanctx_conf* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %3, align 8
  %17 = icmp ne %struct.ieee80211_chanctx_conf* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %4, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %1
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
