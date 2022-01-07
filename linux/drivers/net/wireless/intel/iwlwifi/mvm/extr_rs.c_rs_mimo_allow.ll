; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_mimo_allow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_mimo_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rs_rate = type { i32 }
%struct.rs_tx_column = type { i32 }

@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.rs_rate*, %struct.rs_tx_column*)* @rs_mimo_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_mimo_allow(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.rs_rate* %2, %struct.rs_tx_column* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca %struct.rs_tx_column*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.rs_rate* %2, %struct.rs_rate** %8, align 8
  store %struct.rs_tx_column* %3, %struct.rs_tx_column** %9, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

16:                                               ; preds = %4
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %44

23:                                               ; preds = %16
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %24)
  %26 = call i32 @num_of_ant(i32 %25)
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %44

29:                                               ; preds = %23
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %32 = call i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm* %30, %struct.ieee80211_sta* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %28, %22, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_bt_coex_is_mimo_allowed(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
