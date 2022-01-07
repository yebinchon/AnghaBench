; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_rx_mfuart_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_rx_mfuart_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_mfuart_load_notif = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c"MFUART: installed ver: 0x%08x, external ver: 0x%08x, status: 0x%08x, duration: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"MFUART: image size: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_mfuart_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_mfuart_load_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_mfuart_load_notif*
  store %struct.iwl_mfuart_load_notif* %13, %struct.iwl_mfuart_load_notif** %6, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = load %struct.iwl_mfuart_load_notif*, %struct.iwl_mfuart_load_notif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mfuart_load_notif, %struct.iwl_mfuart_load_notif* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.iwl_mfuart_load_notif*, %struct.iwl_mfuart_load_notif** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_mfuart_load_notif, %struct.iwl_mfuart_load_notif* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.iwl_mfuart_load_notif*, %struct.iwl_mfuart_load_notif** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_mfuart_load_notif, %struct.iwl_mfuart_load_notif* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.iwl_mfuart_load_notif*, %struct.iwl_mfuart_load_notif** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mfuart_load_notif, %struct.iwl_mfuart_load_notif* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_mvm* %14, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %33 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %34, 20
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = load %struct.iwl_mfuart_load_notif*, %struct.iwl_mfuart_load_notif** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_mfuart_load_notif, %struct.iwl_mfuart_load_notif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_INFO(%struct.iwl_mvm* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %2
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
