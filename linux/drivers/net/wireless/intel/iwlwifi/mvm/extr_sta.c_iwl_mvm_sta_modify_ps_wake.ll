; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_ps_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_ps_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i32, i32 }

@STA_FLG_PS = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_modify_ps_wake(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca %struct.iwl_mvm_add_sta_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %9 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %8)
  store %struct.iwl_mvm_sta* %9, %struct.iwl_mvm_sta** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 0
  %11 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 1
  %16 = load i32, i32* @STA_FLG_PS, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 2
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 3
  %23 = load i32, i32* @STA_MODE_MODIFY, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = load i32, i32* @ADD_STA, align 4
  %26 = load i32, i32* @CMD_ASYNC, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %27)
  %29 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %24, i32 %25, i32 %26, i32 %28, %struct.iwl_mvm_add_sta_cmd* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @IWL_ERR(%struct.iwl_mvm* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mvm_add_sta_cmd*) #1

declare dso_local i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
