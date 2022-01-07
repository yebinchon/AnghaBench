; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_last_nonqos_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_last_nonqos_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32 }
%struct.iwl_nonqos_seq_query_cmd = type { i32, i32, i32 }

@IWL_NONQOS_SEQ_SET = common dso_local global i32 0, align 4
@NON_QOS_TX_COUNTER_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set non-QoS seqno\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_set_last_nonqos_seq(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_nonqos_seq_query_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %7)
  store %struct.iwl_mvm_vif* %8, %struct.iwl_mvm_vif** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, %struct.iwl_nonqos_seq_query_cmd* %6, i32 0, i32 0
  %10 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cpu_to_le16(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, %struct.iwl_nonqos_seq_query_cmd* %6, i32 0, i32 1
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FW_CMD_ID_AND_COLOR(i32 %17, i32 %20)
  %22 = call i32 @cpu_to_le32(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, %struct.iwl_nonqos_seq_query_cmd* %6, i32 0, i32 2
  %24 = load i32, i32* @IWL_NONQOS_SEQ_SET, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  store i32 %25, i32* %23, align 4
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = load i32, i32* @NON_QOS_TX_COUNTER_CMD, align 4
  %36 = call i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %34, i32 %35, i32 0, i32 12, %struct.iwl_nonqos_seq_query_cmd* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %40 = call i32 @IWL_ERR(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %30, %38, %31
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i64 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_nonqos_seq_query_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
