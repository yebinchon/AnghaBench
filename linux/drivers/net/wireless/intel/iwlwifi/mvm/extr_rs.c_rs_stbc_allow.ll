; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_stbc_allow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_stbc_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*)* @rs_stbc_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_stbc_allow(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  %8 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %9 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %16 = call i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm* %14, %struct.ieee80211_sta* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %20

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18, %12
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
