; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_last_nonqos_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_get_last_nonqos_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_nonqos_seq_query_cmd = type { i32, i32 }
%struct.iwl_host_cmd = type { i32*, %struct.TYPE_2__*, %struct.iwl_nonqos_seq_query_cmd**, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@IWL_NONQOS_SEQ_GET = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@NON_QOS_TX_COUNTER_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_get_last_nonqos_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_last_nonqos_seq(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_nonqos_seq_query_cmd, align 4
  %8 = alloca %struct.iwl_host_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, %struct.iwl_nonqos_seq_query_cmd* %7, i32 0, i32 0
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FW_CMD_ID_AND_COLOR(i32 %16, i32 %19)
  %21 = call i32 @cpu_to_le32(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd, %struct.iwl_nonqos_seq_query_cmd* %7, i32 0, i32 1
  %23 = load i32, i32* @IWL_NONQOS_SEQ_GET, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  store i32 %24, i32* %22, align 4
  %25 = bitcast %struct.iwl_host_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 3
  %27 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 4
  %29 = load i32, i32* @NON_QOS_TX_COUNTER_CMD, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 2
  %31 = load %struct.iwl_nonqos_seq_query_cmd**, %struct.iwl_nonqos_seq_query_cmd*** %30, align 8
  %32 = getelementptr inbounds %struct.iwl_nonqos_seq_query_cmd*, %struct.iwl_nonqos_seq_query_cmd** %31, i64 0
  store %struct.iwl_nonqos_seq_query_cmd* %7, %struct.iwl_nonqos_seq_query_cmd** %32, align 8
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 8, i32* %35, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %36, %struct.iwl_host_cmd* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @iwl_rx_packet_payload_len(%struct.TYPE_2__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %61

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @le16_to_cpup(i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 16
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %8)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.TYPE_2__*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
