; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_phydev_flowctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_phydev_flowctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__, %struct.xgbe_phy_data* }
%struct.TYPE_4__ = type { i32, i32, %struct.ethtool_link_ksettings }
%struct.ethtool_link_ksettings = type { i32 }
%struct.xgbe_phy_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }

@Pause = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_phydev_flowctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_phydev_flowctrl(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.ethtool_link_ksettings*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store %struct.ethtool_link_ksettings* %10, %struct.ethtool_link_ksettings** %3, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 1
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %12, align 8
  store %struct.xgbe_phy_data* %13, %struct.xgbe_phy_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %80

25:                                               ; preds = %1
  %26 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @linkmode_adv_to_lcl_adv_t(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %33 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %40 = load i32, i32* @Pause, align 4
  %41 = call i32 @XGBE_SET_LP_ADV(%struct.ethtool_link_ksettings* %39, i32 %40)
  %42 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %54 = load i32, i32* @Asym_Pause, align 4
  %55 = call i32 @XGBE_SET_LP_ADV(%struct.ethtool_link_ksettings* %53, i32 %54)
  %56 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mii_resolve_flowctrl_fdx(i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FLOW_CTRL_TX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FLOW_CTRL_RX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %24, %76, %71
  ret void
}

declare dso_local i32 @linkmode_adv_to_lcl_adv_t(i32) #1

declare dso_local i32 @XGBE_SET_LP_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
