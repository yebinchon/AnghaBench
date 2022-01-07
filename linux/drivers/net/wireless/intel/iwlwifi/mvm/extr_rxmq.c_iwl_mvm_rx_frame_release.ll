; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_frame_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_frame_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_frame_release = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_frame_release(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_rx_packet*, align 8
  %10 = alloca %struct.iwl_frame_release*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %12 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %11)
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %9, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_frame_release*
  store %struct.iwl_frame_release* %17, %struct.iwl_frame_release** %10, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %20 = load %struct.iwl_frame_release*, %struct.iwl_frame_release** %10, align 8
  %21 = getelementptr inbounds %struct.iwl_frame_release, %struct.iwl_frame_release* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwl_frame_release*, %struct.iwl_frame_release** %10, align 8
  %24 = getelementptr inbounds %struct.iwl_frame_release, %struct.iwl_frame_release* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @iwl_mvm_release_frames_from_notif(%struct.iwl_mvm* %18, %struct.napi_struct* %19, i32 %22, i32 %26, i32 %27, i32 0)
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_mvm_release_frames_from_notif(%struct.iwl_mvm*, %struct.napi_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
