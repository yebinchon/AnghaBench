; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_rx_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_rx_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MAC_PFR = common dso_local global i32 0, align 4
@VTFE = common dso_local global i32 0, align 4
@MAC_VLANTR = common dso_local global i32 0, align 4
@VTHM = common dso_local global i32 0, align 4
@VTIM = common dso_local global i32 0, align 4
@ETV = common dso_local global i32 0, align 4
@VL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_enable_rx_vlan_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_enable_rx_vlan_filtering(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = load i32, i32* @MAC_PFR, align 4
  %5 = load i32, i32* @VTFE, align 4
  %6 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %3, i32 %4, i32 %5, i32 1)
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = load i32, i32* @MAC_VLANTR, align 4
  %9 = load i32, i32* @VTHM, align 4
  %10 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %7, i32 %8, i32 %9, i32 1)
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = load i32, i32* @MAC_VLANTR, align 4
  %13 = load i32, i32* @VTIM, align 4
  %14 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = load i32, i32* @MAC_VLANTR, align 4
  %17 = load i32, i32* @ETV, align 4
  %18 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = load i32, i32* @MAC_VLANTR, align 4
  %21 = load i32, i32* @VL, align 4
  %22 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %19, i32 %20, i32 %21, i32 1)
  ret i32 0
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
