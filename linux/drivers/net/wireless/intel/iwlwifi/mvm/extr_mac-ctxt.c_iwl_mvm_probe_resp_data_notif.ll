; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_probe_resp_data_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_probe_resp_data_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_probe_resp_data_notif = type { i32, i32, i32 }
%struct.iwl_probe_resp_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Probe response data notif: noa %d, csa %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@IWL_PROBE_RESP_DATA_NO_CSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_probe_resp_data_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_probe_resp_data_notif*, align 8
  %7 = alloca %struct.iwl_probe_resp_data*, align 8
  %8 = alloca %struct.iwl_probe_resp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_vif*, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %13 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %14 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %13)
  store %struct.iwl_rx_packet* %14, %struct.iwl_rx_packet** %5, align 8
  %15 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.iwl_probe_resp_data_notif*
  store %struct.iwl_probe_resp_data_notif* %19, %struct.iwl_probe_resp_data_notif** %6, align 8
  %20 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %21 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 12
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %115

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm* %42, i32 %43, i32 0)
  store %struct.ieee80211_vif* %44, %struct.ieee80211_vif** %11, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %46 = icmp ne %struct.ieee80211_vif* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  br label %115

48:                                               ; preds = %33
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %50 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %49)
  store %struct.iwl_mvm_vif* %50, %struct.iwl_mvm_vif** %12, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.iwl_probe_resp_data* @kzalloc(i32 8, i32 %51)
  store %struct.iwl_probe_resp_data* %52, %struct.iwl_probe_resp_data** %8, align 8
  %53 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %54 = icmp ne %struct.iwl_probe_resp_data* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %115

56:                                               ; preds = %48
  %57 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %57, i32 0, i32 1
  %59 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %60 = call i32 @memcpy(%struct.TYPE_6__* %58, %struct.iwl_probe_resp_data_notif* %59, i32 4)
  %61 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %61, i32 0, i32 0
  store i32 7, i32* %62, align 4
  %63 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %64 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %70, %56
  %78 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @lockdep_is_held(i32* %84)
  %86 = call %struct.iwl_probe_resp_data* @rcu_dereference_protected(i32 %80, i32 %85)
  store %struct.iwl_probe_resp_data* %86, %struct.iwl_probe_resp_data** %7, align 8
  %87 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %8, align 8
  %91 = call i32 @rcu_assign_pointer(i32 %89, %struct.iwl_probe_resp_data* %90)
  %92 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %7, align 8
  %93 = icmp ne %struct.iwl_probe_resp_data* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %7, align 8
  %96 = load i32, i32* @rcu_head, align 4
  %97 = call i32 @kfree_rcu(%struct.iwl_probe_resp_data* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %77
  %99 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %100 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IWL_PROBE_RESP_DATA_NO_CSA, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 1
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %111 = load %struct.iwl_probe_resp_data_notif*, %struct.iwl_probe_resp_data_notif** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_probe_resp_data_notif, %struct.iwl_probe_resp_data_notif* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ieee80211_csa_set_counter(%struct.ieee80211_vif* %110, i32 %113)
  br label %115

115:                                              ; preds = %32, %47, %55, %109, %104, %98
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm*, i32, i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_probe_resp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.iwl_probe_resp_data_notif*, i32) #1

declare dso_local %struct.iwl_probe_resp_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.iwl_probe_resp_data*) #1

declare dso_local i32 @kfree_rcu(%struct.iwl_probe_resp_data*, i32) #1

declare dso_local i32 @ieee80211_csa_set_counter(%struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
