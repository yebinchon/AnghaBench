; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_umac_scan_iter_complete_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_umac_scan_iter_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_umac_scan_iter_complete_notif = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"UMAC Scan iteration complete: status=0x%x scanned_channels=%d\0A\00", align 1
@SCHED_SCAN_PASS_ALL_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Pass all scheduled scan results found\0A\00", align 1
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"UMAC Scan iteration complete: scan started at %llu (TSF)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_umac_scan_iter_complete_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_umac_scan_iter_complete_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_umac_scan_iter_complete_notif*
  store %struct.iwl_umac_scan_iter_complete_notif* %13, %struct.iwl_umac_scan_iter_complete_notif** %6, align 8
  %14 = load %struct.iwl_umac_scan_iter_complete_notif*, %struct.iwl_umac_scan_iter_complete_notif** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_umac_scan_iter_complete_notif, %struct.iwl_umac_scan_iter_complete_notif* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le64_to_cpu(i32 %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = load %struct.iwl_umac_scan_iter_complete_notif*, %struct.iwl_umac_scan_iter_complete_notif** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_umac_scan_iter_complete_notif, %struct.iwl_umac_scan_iter_complete_notif* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iwl_umac_scan_iter_complete_notif*, %struct.iwl_umac_scan_iter_complete_notif** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_umac_scan_iter_complete_notif, %struct.iwl_umac_scan_iter_complete_notif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCHED_SCAN_PASS_ALL_FOUND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ieee80211_sched_scan_results(i32 %38)
  %40 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %2
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @ieee80211_sched_scan_results(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
