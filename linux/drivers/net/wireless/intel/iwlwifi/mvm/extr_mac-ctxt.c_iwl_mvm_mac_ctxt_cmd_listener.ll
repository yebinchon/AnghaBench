; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_listener.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mac_ctx_cmd = type { i32 }

@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@MAC_FILTER_IN_PROMISC = common dso_local global i32 0, align 4
@MAC_FILTER_IN_CONTROL_AND_MGMT = common dso_local global i32 0, align 4
@MAC_FILTER_IN_BEACON = common dso_local global i32 0, align 4
@MAC_FILTER_IN_PROBE_REQUEST = common dso_local global i32 0, align 4
@MAC_FILTER_IN_CRC32 = common dso_local global i32 0, align 4
@MAC_FILTER_ACCEPT_GRP = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IWL_STA_GENERAL_PURPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctxt_cmd_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mac_ctx_cmd, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.iwl_mac_ctx_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm* %23, %struct.ieee80211_vif* %24, %struct.iwl_mac_ctx_cmd* %8, i32* null, i32 %25)
  %27 = load i32, i32* @MAC_FILTER_IN_PROMISC, align 4
  %28 = load i32, i32* @MAC_FILTER_IN_CONTROL_AND_MGMT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MAC_FILTER_IN_BEACON, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MAC_FILTER_IN_PROBE_REQUEST, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MAC_FILTER_IN_CRC32, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MAC_FILTER_ACCEPT_GRP, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %44 = call i32 @ieee80211_hw_set(i32 %42, i32 %43)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IWL_STA_GENERAL_PURPOSE, align 4
  %53 = call i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm* %45, i32* %47, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %3
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %60 = call i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm* %59, %struct.iwl_mac_ctx_cmd* %8)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_ctx_cmd*, i32*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @ieee80211_hw_set(i32, i32) #2

declare dso_local i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm*, i32*, i32, i32, i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm*, %struct.iwl_mac_ctx_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
