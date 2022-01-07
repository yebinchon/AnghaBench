; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.iwl_mac_ctx_cmd = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@MAC_FILTER_IN_BEACON = common dso_local global i32 0, align 4
@MAC_FILTER_IN_PROBE_REQUEST = common dso_local global i32 0, align 4
@MAC_FILTER_ACCEPT_GRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctxt_cmd_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_cmd_ibss(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_mac_ctx_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %7, align 8
  %11 = bitcast %struct.iwl_mac_ctx_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm* %19, %struct.ieee80211_vif* %20, %struct.iwl_mac_ctx_cmd* %8, i32* null, i32 %21)
  %23 = load i32, i32* @MAC_FILTER_IN_BEACON, align 4
  %24 = load i32, i32* @MAC_FILTER_IN_PROBE_REQUEST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAC_FILTER_ACCEPT_GRP, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %8, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %8, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %8, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %44 = call i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm* %43, %struct.iwl_mac_ctx_cmd* %8)
  ret i32 %44
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_ctx_cmd*, i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm*, %struct.iwl_mac_ctx_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
