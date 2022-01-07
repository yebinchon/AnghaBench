; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_stats_check_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rx.c_iwl_mvm_rx_stats_check_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_stats = type { i32, i32 }

@FW_DBG_TRIGGER_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_stats_check_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_stats_check_trigger(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %6 = alloca %struct.iwl_fw_dbg_trigger_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load i32, i32* @FW_DBG_TRIGGER_STATS, align 4
  %12 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %10, i32* null, i32 %11)
  store %struct.iwl_fw_dbg_trigger_tlv* %12, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %13 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %14 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.iwl_fw_dbg_trigger_stats*
  store %struct.iwl_fw_dbg_trigger_stats* %21, %struct.iwl_fw_dbg_trigger_stats** %6, align 8
  %22 = load %struct.iwl_fw_dbg_trigger_stats*, %struct.iwl_fw_dbg_trigger_stats** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_stats, %struct.iwl_fw_dbg_trigger_stats* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.iwl_fw_dbg_trigger_stats*, %struct.iwl_fw_dbg_trigger_stats** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_stats, %struct.iwl_fw_dbg_trigger_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %32 = call i64 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %31)
  %33 = icmp sge i64 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %54

38:                                               ; preds = %16
  %39 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = inttoptr i64 %43 to i32*
  %45 = call i64 @le32_to_cpup(i32* %44)
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %54

49:                                               ; preds = %38
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 0
  %52 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %5, align 8
  %53 = call i32 @iwl_fw_dbg_collect_trig(i32* %51, %struct.iwl_fw_dbg_trigger_tlv* %52, i32* null)
  br label %54

54:                                               ; preds = %49, %48, %37, %15
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
