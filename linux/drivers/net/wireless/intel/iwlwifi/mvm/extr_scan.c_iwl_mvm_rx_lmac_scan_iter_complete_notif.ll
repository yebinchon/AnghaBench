; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_lmac_scan_iter_complete_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_lmac_scan_iter_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_lmac_scan_complete_notif = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Scan offload iteration complete: status=0x%x scanned channels=%d\0A\00", align 1
@SCHED_SCAN_PASS_ALL_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Pass all scheduled scan results found\0A\00", align 1
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_lmac_scan_iter_complete_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_lmac_scan_complete_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_lmac_scan_complete_notif*
  store %struct.iwl_lmac_scan_complete_notif* %13, %struct.iwl_lmac_scan_complete_notif** %6, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = load %struct.iwl_lmac_scan_complete_notif*, %struct.iwl_lmac_scan_complete_notif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_lmac_scan_complete_notif, %struct.iwl_lmac_scan_complete_notif* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwl_lmac_scan_complete_notif*, %struct.iwl_lmac_scan_complete_notif** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_lmac_scan_complete_notif, %struct.iwl_lmac_scan_complete_notif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %14, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCHED_SCAN_PASS_ALL_FOUND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ieee80211_sched_scan_results(i32 %32)
  %34 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %2
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @ieee80211_sched_scan_results(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
