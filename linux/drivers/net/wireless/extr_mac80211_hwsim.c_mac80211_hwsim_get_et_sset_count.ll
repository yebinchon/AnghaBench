; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_get_et_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_get_et_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@MAC80211_HWSIM_SSTATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @mac80211_hwsim_get_et_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_get_et_sset_count(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ETH_SS_STATS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @MAC80211_HWSIM_SSTATS_LEN, align 4
  store i32 %12, i32* %4, align 4
  br label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
