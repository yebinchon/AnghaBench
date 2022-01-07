; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_p2p_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mac_ctx_cmd = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.iwl_mvm_go_iterator_data = type { i64 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@MAC_FILTER_IN_PROBE_REQUEST = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@iwl_mvm_go_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctxt_cmd_p2p_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_cmd_p2p_device(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mac_ctx_cmd, align 8
  %8 = alloca %struct.iwl_mvm_go_iterator_data, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.iwl_mac_ctx_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = bitcast %struct.iwl_mvm_go_iterator_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm* %18, %struct.ieee80211_vif* %19, %struct.iwl_mac_ctx_cmd* %7, i32* null, i32 %20)
  %22 = load i32, i32* @MAC_FILTER_IN_PROBE_REQUEST, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %29 = load i32, i32* @iwl_mvm_go_iterator, align 4
  %30 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %27, i32 %28, i32 %29, %struct.iwl_mvm_go_iterator_data* %8)
  %31 = getelementptr inbounds %struct.iwl_mvm_go_iterator_data, %struct.iwl_mvm_go_iterator_data* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %40 = call i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm* %39, %struct.iwl_mac_ctx_cmd* %7)
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_ctx_cmd*, i32*, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_go_iterator_data*) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm*, %struct.iwl_mac_ctx_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
