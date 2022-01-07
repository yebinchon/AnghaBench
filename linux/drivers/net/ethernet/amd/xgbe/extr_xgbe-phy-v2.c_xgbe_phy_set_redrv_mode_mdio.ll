; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_set_redrv_mode_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_set_redrv_mode_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__, %struct.xgbe_phy_data* }
%struct.TYPE_2__ = type { i32 (%struct.xgbe_prv_data.0*, i32, i64, i64)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_phy_data = type { i32, i32 }

@XGBE_PHY_REDRV_MODE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_phy_set_redrv_mode_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_set_redrv_mode_mdio(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_phy_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 1
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %9, align 8
  store %struct.xgbe_phy_data* %10, %struct.xgbe_phy_data** %5, align 8
  %11 = load i64, i64* @XGBE_PHY_REDRV_MODE_REG, align 8
  %12 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %13 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 4096
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.xgbe_prv_data.0*, i32, i64, i64)*, i32 (%struct.xgbe_prv_data.0*, i32, i64, i64)** %22, align 8
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = bitcast %struct.xgbe_prv_data* %24 to %struct.xgbe_prv_data.0*
  %26 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %27 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 %23(%struct.xgbe_prv_data.0* %25, i32 %28, i64 %29, i64 %30)
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
