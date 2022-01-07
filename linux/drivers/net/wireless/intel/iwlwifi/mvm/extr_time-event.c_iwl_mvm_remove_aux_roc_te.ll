; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_aux_roc_te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_aux_roc_te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_mvm_time_event_data = type { i32 }
%struct.iwl_hs20_roc_req = type { i8*, i8*, i8* }

@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Removing BSS AUX ROC TE 0x%x\0A\00", align 1
@HOT_SPOT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_time_event_data*)* @iwl_mvm_remove_aux_roc_te to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_remove_aux_roc_te(%struct.iwl_mvm* %0, %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_time_event_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %7 = alloca %struct.iwl_hs20_roc_req, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_vif** %5, align 8
  store %struct.iwl_mvm_time_event_data* %2, %struct.iwl_mvm_time_event_data** %6, align 8
  %11 = bitcast %struct.iwl_hs20_roc_req* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = call i64 @iwl_mvm_chan_info_padding(%struct.iwl_mvm* %12)
  %14 = sub i64 24, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %16 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %17 = call i32 @__iwl_mvm_remove_time_event(%struct.iwl_mvm* %15, %struct.iwl_mvm_time_event_data* %16, i32* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.iwl_hs20_roc_req, %struct.iwl_hs20_roc_req* %7, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.iwl_hs20_roc_req, %struct.iwl_hs20_roc_req* %7, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FW_CMD_ID_AND_COLOR(i32 %29, i32 %32)
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.iwl_hs20_roc_req, %struct.iwl_hs20_roc_req* %7, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_hs20_roc_req, %struct.iwl_hs20_roc_req* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @le32_to_cpu(i8* %38)
  %40 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = load i32, i32* @HOT_SPOT_CMD, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %41, i32 %42, i32 0, i64 %43, %struct.iwl_hs20_roc_req* %7)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %19, %48, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @iwl_mvm_chan_info_padding(%struct.iwl_mvm*) #2

declare dso_local i32 @__iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*, i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #2

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @le32_to_cpu(i8*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i64, %struct.iwl_hs20_roc_req*) #2

declare dso_local i64 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
