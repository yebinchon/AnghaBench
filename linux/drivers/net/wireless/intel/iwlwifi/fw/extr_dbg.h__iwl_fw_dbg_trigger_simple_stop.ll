; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h__iwl_fw_dbg_trigger_simple_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h__iwl_fw_dbg_trigger_simple_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.wireless_dev*, %struct.iwl_fw_dbg_trigger_tlv*)* @_iwl_fw_dbg_trigger_simple_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iwl_fw_dbg_trigger_simple_stop(%struct.iwl_fw_runtime* %0, %struct.wireless_dev* %1, %struct.iwl_fw_dbg_trigger_tlv* %2) #0 {
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.iwl_fw_dbg_trigger_tlv* %2, %struct.iwl_fw_dbg_trigger_tlv** %6, align 8
  %7 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %6, align 8
  %8 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %6, align 8
  %14 = call i32 @iwl_fw_dbg_trigger_check_stop(%struct.iwl_fw_runtime* %11, %struct.wireless_dev* %12, %struct.iwl_fw_dbg_trigger_tlv* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %19 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %6, align 8
  %20 = call i32 @iwl_fw_dbg_collect_trig(%struct.iwl_fw_runtime* %18, %struct.iwl_fw_dbg_trigger_tlv* %19, i32* null)
  br label %21

21:                                               ; preds = %17, %16, %9
  ret void
}

declare dso_local i32 @iwl_fw_dbg_trigger_check_stop(%struct.iwl_fw_runtime*, %struct.wireless_dev*, %struct.iwl_fw_dbg_trigger_tlv*) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(%struct.iwl_fw_runtime*, %struct.iwl_fw_dbg_trigger_tlv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
