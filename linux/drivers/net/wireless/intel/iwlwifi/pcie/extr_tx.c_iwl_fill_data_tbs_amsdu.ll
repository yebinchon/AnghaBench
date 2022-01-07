; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_fill_data_tbs_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_fill_data_tbs_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_txq = type { i32 }
%struct.iwl_cmd_meta = type { i32 }
%struct.iwl_device_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.sk_buff*, %struct.iwl_txq*, i32, %struct.iwl_cmd_meta*, %struct.iwl_device_cmd*, i32)* @iwl_fill_data_tbs_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fill_data_tbs_amsdu(%struct.iwl_trans* %0, %struct.sk_buff* %1, %struct.iwl_txq* %2, i32 %3, %struct.iwl_cmd_meta* %4, %struct.iwl_device_cmd* %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.iwl_txq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_cmd_meta*, align 8
  %13 = alloca %struct.iwl_device_cmd*, align 8
  %14 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.iwl_txq* %2, %struct.iwl_txq** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.iwl_cmd_meta* %4, %struct.iwl_cmd_meta** %12, align 8
  store %struct.iwl_device_cmd* %5, %struct.iwl_device_cmd** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = call i32 @WARN_ON(i32 1)
  ret i32 -1
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
