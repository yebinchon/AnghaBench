; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_fw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_rx_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_error_resp = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"FW Error notification: type 0x%08X cmd_id 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"FW Error notification: seq 0x%04X service 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"FW Error notification: timestamp 0x%016llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_fw_error(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_error_resp*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_error_resp*
  store %struct.iwl_error_resp* %13, %struct.iwl_error_resp** %6, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %34 = load %struct.iwl_error_resp*, %struct.iwl_error_resp** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_error_resp, %struct.iwl_error_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  %38 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
