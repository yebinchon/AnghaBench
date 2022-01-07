; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i64, i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32 }
%struct.iwl_mac_ctx_cmd = type { i8*, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Removing inactive MAC %pM/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@MAC_CONTEXT_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to remove MAC context: %d\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_mac_ctx_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %6, align 8
  %11 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %20)
  %22 = call i64 @WARN_ONCE(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = call i32 @memset(%struct.iwl_mac_ctx_cmd* %7, i32 0, i32 16)
  %29 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FW_CMD_ID_AND_COLOR(i32 %31, i32 %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = load i32, i32* @MAC_CONTEXT_CMD, align 4
  %43 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %41, i32 %42, i32 0, i32 16, %struct.iwl_mac_ctx_cmd* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %27
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @IWL_ERR(%struct.iwl_mvm* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %27
  %52 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__clear_bit(i32 %60, i32 %65)
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %68 = call i32 @iwl_mvm_dealloc_snif_sta(%struct.iwl_mvm* %67)
  br label %69

69:                                               ; preds = %59, %51
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %46, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @memset(%struct.iwl_mac_ctx_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mac_ctx_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @iwl_mvm_dealloc_snif_sta(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
