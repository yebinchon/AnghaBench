; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_get_invariants_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_get_invariants_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_mac_info = type { i32, i32, i32, i32, i32, i32, i32 }

@ixgbe_set_copper_phy_power = common dso_local global i32 0, align 4
@IXGBE_X540_MC_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_VFT_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_RAR_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_X540_RX_PB_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_TX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_invariants_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 1
  store %struct.ixgbe_mac_info* %6, %struct.ixgbe_mac_info** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  store %struct.ixgbe_phy_info* %8, %struct.ixgbe_phy_info** %4, align 8
  %9 = load i32, i32* @ixgbe_set_copper_phy_power, align 4
  %10 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @IXGBE_X540_MC_TBL_SIZE, align 4
  %14 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IXGBE_X540_VFT_TBL_SIZE, align 4
  %17 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IXGBE_X540_RAR_ENTRIES, align 4
  %20 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @IXGBE_X540_RX_PB_SIZE, align 4
  %23 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @IXGBE_X540_MAX_RX_QUEUES, align 4
  %26 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @IXGBE_X540_MAX_TX_QUEUES, align 4
  %29 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = call i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %31)
  %33 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret i32 0
}

declare dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
