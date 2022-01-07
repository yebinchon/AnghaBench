; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_chan_info_cmd_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_chan_info_cmd_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_fw_channel_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iwl_mvm*, %struct.iwl_fw_channel_info*)* @iwl_mvm_chan_info_cmd_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_mvm_chan_info_cmd_tail(%struct.iwl_mvm* %0, %struct.iwl_fw_channel_info* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_fw_channel_info*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_fw_channel_info* %1, %struct.iwl_fw_channel_info** %4, align 8
  %5 = load %struct.iwl_fw_channel_info*, %struct.iwl_fw_channel_info** %4, align 8
  %6 = bitcast %struct.iwl_fw_channel_info* %5 to i8*
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = call i64 @iwl_mvm_has_ultra_hb_channel(%struct.iwl_mvm* %7)
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i64 4, i64 4
  %12 = getelementptr i8, i8* %6, i64 %11
  ret i8* %12
}

declare dso_local i64 @iwl_mvm_has_ultra_hb_channel(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
