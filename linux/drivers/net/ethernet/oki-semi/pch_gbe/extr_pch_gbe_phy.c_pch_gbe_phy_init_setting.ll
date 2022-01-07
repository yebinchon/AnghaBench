; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_init_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_init_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pch_gbe_adapter = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ethtool_cmd = type { i32, i32, i32, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error: mii_ethtool_gset\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: mii_ethtool_sset\0A\00", align 1
@PHY_PHYSP_CONTROL = common dso_local global i32 0, align 4
@PHYSP_CTRL_ASSERT_CRS_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_phy_init_setting(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.ethtool_cmd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %8 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 3
  %13 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 2
  %16 = call i32 @mii_ethtool_gset(i32* %15, %struct.ethtool_cmd* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %4, i32 %28)
  %30 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %46 = load i32, i32* @MII_BMCR, align 4
  %47 = load i32, i32* @BMCR_RESET, align 4
  %48 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %45, i32 %46, i32 %47)
  %49 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %49, i32 0, i32 2
  %51 = call i32 @mii_ethtool_sset(i32* %50, %struct.ethtool_cmd* %4)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %24
  %55 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %24
  %60 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %61 = call i32 @pch_gbe_phy_sw_reset(%struct.pch_gbe_hw* %60)
  %62 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %63 = load i32, i32* @PHY_PHYSP_CONTROL, align 4
  %64 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %62, i32 %63, i32* %6)
  %65 = load i32, i32* @PHYSP_CTRL_ASSERT_CRS_TX, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %69 = load i32, i32* @PHY_PHYSP_CONTROL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %59
  %77 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %85 = call i32 @pch_gbe_phy_tx_clk_delay(%struct.pch_gbe_hw* %84)
  br label %86

86:                                               ; preds = %83, %76, %59
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

declare dso_local i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @mii_ethtool_sset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @pch_gbe_phy_sw_reset(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @pch_gbe_phy_tx_clk_delay(%struct.pch_gbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
