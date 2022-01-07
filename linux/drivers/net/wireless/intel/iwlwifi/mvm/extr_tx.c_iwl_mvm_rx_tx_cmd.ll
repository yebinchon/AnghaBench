; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_mvm_tx_resp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_tx_cmd(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_mvm_tx_resp*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_mvm_tx_resp*
  store %struct.iwl_mvm_tx_resp* %13, %struct.iwl_mvm_tx_resp** %6, align 8
  %14 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %21 = call i32 @iwl_mvm_rx_tx_cmd_single(%struct.iwl_mvm* %19, %struct.iwl_rx_packet* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %25 = call i32 @iwl_mvm_rx_tx_cmd_agg(%struct.iwl_mvm* %23, %struct.iwl_rx_packet* %24)
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_mvm_rx_tx_cmd_single(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @iwl_mvm_rx_tx_cmd_agg(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
