; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_tdls_config_res = type { i32 }
%struct.iwl_tdls_config_cmd = type { i32, %struct.TYPE_2__*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }
%struct.iwl_host_cmd = type { %struct.iwl_rx_packet*, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i64, i32 }
%struct.iwl_mvm_vif = type { i32, i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@TDLS_CONFIG_CMD = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_FW_TID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"send TDLS config to FW for %d peers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_tdls_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_tdls_config(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_tdls_config_res*, align 8
  %7 = alloca %struct.iwl_tdls_config_cmd, align 8
  %8 = alloca %struct.iwl_host_cmd, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %14 = bitcast %struct.iwl_tdls_config_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 0
  store %struct.iwl_rx_packet* null, %struct.iwl_rx_packet** %15, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 1
  store i32 40, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 2
  %18 = ptrtoint %struct.iwl_tdls_config_cmd* %7 to i32
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 3
  %20 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 4
  %22 = load i32, i32* @TDLS_CONFIG_CMD, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %24 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %23)
  store %struct.iwl_mvm_vif* %24, %struct.iwl_mvm_vif** %13, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FW_CMD_ID_AND_COLOR(i32 %30, i32 %33)
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** @IWL_MVM_TDLS_FW_TID, align 8
  %38 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = call i8* @cpu_to_le16(i32 0)
  %40 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %106, %2
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %109

48:                                               ; preds = %41
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %56, i32 0, i32 0
  %58 = call i32 @lockdep_is_held(i32* %57)
  %59 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %55, i32 %58)
  store %struct.ieee80211_sta* %59, %struct.ieee80211_sta** %9, align 8
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %61 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %48
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %48
  br label %106

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 8
  %77 = load i8*, i8** @IWL_MVM_TDLS_FW_TID, align 8
  %78 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i8* %77, i8** %83, align 8
  %84 = call i8* @cpu_to_le16(i32 0)
  %85 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i8* %84, i8** %90, align 8
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i8* %97, i8** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %69, %68
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %41

109:                                              ; preds = %41
  %110 = load i32, i32* %12, align 4
  %111 = getelementptr inbounds %struct.iwl_tdls_config_cmd, %struct.iwl_tdls_config_cmd* %7, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %116 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %115, %struct.iwl_host_cmd* %8)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @WARN_ON_ONCE(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %131

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %8, i32 0, i32 0
  %123 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %122, align 8
  store %struct.iwl_rx_packet* %123, %struct.iwl_rx_packet** %5, align 8
  %124 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %125 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %124)
  %126 = sext i32 %125 to i64
  %127 = icmp ne i64 %126, 4
  %128 = zext i1 %127 to i32
  %129 = call i64 @WARN_ON_ONCE(i32 %128)
  %130 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %8)
  br label %131

131:                                              ; preds = %121, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #2

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #2

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #2

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
