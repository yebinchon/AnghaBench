; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_rm_sta_cmd = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid station id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REMOVE_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to remove station. Id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64)* @iwl_mvm_rm_sta_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_mvm_rm_sta_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_rm_sta_cmd, %struct.iwl_mvm_rm_sta_cmd* %7, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %16, i32 %19)
  store %struct.ieee80211_sta* %20, %struct.ieee80211_sta** %6, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %22 = icmp ne %struct.ieee80211_sta* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = load i32, i32* @REMOVE_STA, align 4
  %31 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %29, i32 %30, i32 0, i32 8, %struct.iwl_mvm_rm_sta_cmd* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mvm_rm_sta_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
