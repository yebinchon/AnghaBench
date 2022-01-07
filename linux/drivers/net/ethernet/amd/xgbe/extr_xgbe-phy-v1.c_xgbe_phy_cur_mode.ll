; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_cur_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_cur_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_CTRL2 = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_TYPE = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_10GBR = common dso_local global i32 0, align 4
@XGBE_MODE_KR = common dso_local global i32 0, align 4
@XGBE_SPEEDSET_2500_10000 = common dso_local global i64 0, align 8
@XGBE_MODE_KX_2500 = common dso_local global i32 0, align 4
@XGBE_MODE_KX_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_cur_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_cur_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %3, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = load i32, i32* @MDIO_MMD_PCS, align 4
  %11 = load i32, i32* @MDIO_CTRL2, align 4
  %12 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MDIO_PCS_CTRL2_TYPE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MDIO_PCS_CTRL2_10GBR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @XGBE_MODE_KR, align 4
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XGBE_SPEEDSET_2500_10000, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @XGBE_MODE_KX_2500, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @XGBE_MODE_KX_1000, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
