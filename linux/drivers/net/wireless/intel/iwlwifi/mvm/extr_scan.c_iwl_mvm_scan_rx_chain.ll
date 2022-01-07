; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rx_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rx_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }

@PHY_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@PHY_RX_CHAIN_FORCE_MIMO_SEL_POS = common dso_local global i32 0, align 4
@PHY_RX_CHAIN_FORCE_SEL_POS = common dso_local global i32 0, align 4
@PHY_RX_CHAIN_DRIVER_FORCE_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_scan_rx_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_rx_chain(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = call i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PHY_RX_CHAIN_VALID_POS, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PHY_RX_CHAIN_FORCE_MIMO_SEL_POS, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PHY_RX_CHAIN_FORCE_SEL_POS, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @PHY_RX_CHAIN_DRIVER_FORCE_POS, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  ret i32 %25
}

declare dso_local i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
