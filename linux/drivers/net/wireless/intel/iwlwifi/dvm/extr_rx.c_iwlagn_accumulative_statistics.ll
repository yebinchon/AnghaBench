; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_accumulative_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_accumulative_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.statistics_general_common = type { i32 }
%struct.statistics_rx_non_phy = type { i32 }
%struct.statistics_rx_ht_phy = type { i32 }
%struct.statistics_rx_phy = type { i32 }
%struct.statistics_tx = type { i32 }
%struct.statistics_bt_activity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.statistics_general_common*, %struct.statistics_rx_non_phy*, %struct.statistics_rx_phy*, %struct.statistics_rx_ht_phy*, %struct.statistics_rx_phy*, %struct.statistics_tx*, %struct.statistics_bt_activity*)* @iwlagn_accumulative_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_accumulative_statistics(%struct.iwl_priv* %0, %struct.statistics_general_common* %1, %struct.statistics_rx_non_phy* %2, %struct.statistics_rx_phy* %3, %struct.statistics_rx_ht_phy* %4, %struct.statistics_rx_phy* %5, %struct.statistics_tx* %6, %struct.statistics_bt_activity* %7) #0 {
  %9 = alloca %struct.iwl_priv*, align 8
  %10 = alloca %struct.statistics_general_common*, align 8
  %11 = alloca %struct.statistics_rx_non_phy*, align 8
  %12 = alloca %struct.statistics_rx_phy*, align 8
  %13 = alloca %struct.statistics_rx_ht_phy*, align 8
  %14 = alloca %struct.statistics_rx_phy*, align 8
  %15 = alloca %struct.statistics_tx*, align 8
  %16 = alloca %struct.statistics_bt_activity*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %9, align 8
  store %struct.statistics_general_common* %1, %struct.statistics_general_common** %10, align 8
  store %struct.statistics_rx_non_phy* %2, %struct.statistics_rx_non_phy** %11, align 8
  store %struct.statistics_rx_phy* %3, %struct.statistics_rx_phy** %12, align 8
  store %struct.statistics_rx_ht_phy* %4, %struct.statistics_rx_ht_phy** %13, align 8
  store %struct.statistics_rx_phy* %5, %struct.statistics_rx_phy** %14, align 8
  store %struct.statistics_tx* %6, %struct.statistics_tx** %15, align 8
  store %struct.statistics_bt_activity* %7, %struct.statistics_bt_activity** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
