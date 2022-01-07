; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_swap_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_swap_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@PORT_HW_CFG_LANE_SWAP_CFG_RX_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_RX_SHIFT = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_TX_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_TX_SHIFT = common dso_local global i32 0, align 4
@MDIO_REG_BANK_XGXS_BLOCK2 = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_RX_LN_SWAP = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_RX_LN_SWAP_ENABLE = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_RX_LN_SWAP_FORCE_ENABLE = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_TX_LN_SWAP = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_TX_LN_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.bnx2x_phy*)* @bnx2x_set_swap_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_swap_lanes(%struct.link_params* %0, %struct.bnx2x_phy* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %3, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_RX_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_RX_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.link_params*, %struct.link_params** %3, align 8
  %19 = getelementptr inbounds %struct.link_params, %struct.link_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_TX_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_TX_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 27
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load i32, i32* @MDIO_REG_BANK_XGXS_BLOCK2, align 4
  %31 = load i32, i32* @MDIO_XGXS_BLOCK2_RX_LN_SWAP, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MDIO_XGXS_BLOCK2_RX_LN_SWAP_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MDIO_XGXS_BLOCK2_RX_LN_SWAP_FORCE_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32 %36)
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %41 = load i32, i32* @MDIO_REG_BANK_XGXS_BLOCK2, align 4
  %42 = load i32, i32* @MDIO_XGXS_BLOCK2_RX_LN_SWAP, align 4
  %43 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 27
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %50 = load i32, i32* @MDIO_REG_BANK_XGXS_BLOCK2, align 4
  %51 = load i32, i32* @MDIO_XGXS_BLOCK2_TX_LN_SWAP, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MDIO_XGXS_BLOCK2_TX_LN_SWAP_ENABLE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %48, %struct.bnx2x_phy* %49, i32 %50, i32 %51, i32 %54)
  br label %62

56:                                               ; preds = %44
  %57 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %59 = load i32, i32* @MDIO_REG_BANK_XGXS_BLOCK2, align 4
  %60 = load i32, i32* @MDIO_XGXS_BLOCK2_TX_LN_SWAP, align 4
  %61 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %57, %struct.bnx2x_phy* %58, i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
