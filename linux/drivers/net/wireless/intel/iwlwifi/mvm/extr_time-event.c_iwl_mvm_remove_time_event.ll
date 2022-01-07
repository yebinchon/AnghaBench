; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_time_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_time_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_mvm_time_event_data = type { i32 }
%struct.iwl_time_event_cmd = type { i8*, i8*, i8* }

@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Removing TE 0x%x\0A\00", align 1
@TIME_EVENT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_remove_time_event(%struct.iwl_mvm* %0, %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_time_event_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %7 = alloca %struct.iwl_time_event_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_vif** %5, align 8
  store %struct.iwl_mvm_time_event_data* %2, %struct.iwl_mvm_time_event_data** %6, align 8
  %10 = bitcast %struct.iwl_time_event_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %13 = call i32 @__iwl_mvm_remove_time_event(%struct.iwl_mvm* %11, %struct.iwl_mvm_time_event_data* %12, i32* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FW_CMD_ID_AND_COLOR(i32 %25, i32 %28)
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @le32_to_cpu(i8* %34)
  %36 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %38 = load i32, i32* @TIME_EVENT_CMD, align 4
  %39 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %37, i32 %38, i32 0, i32 24, %struct.iwl_time_event_cmd* %7)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %15, %43, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*, i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #2

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @le32_to_cpu(i8*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_time_event_cmd*) #2

declare dso_local i64 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
