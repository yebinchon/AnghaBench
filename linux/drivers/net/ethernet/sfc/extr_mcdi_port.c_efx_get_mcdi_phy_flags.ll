; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_get_mcdi_phy_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_get_mcdi_phy_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }

@MC_CMD_GET_PHY_CFG_OUT_TXDIS_LBN = common dso_local global i32 0, align 4
@PHY_MODE_TX_DISABLED = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_CFG_OUT_LOWPOWER_LBN = common dso_local global i32 0, align 4
@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_CFG_OUT_POWEROFF_LBN = common dso_local global i32 0, align 4
@PHY_MODE_OFF = common dso_local global i32 0, align 4
@MC_CMD_SET_LINK_IN_TXDIS_LBN = common dso_local global i32 0, align 4
@MC_CMD_SET_LINK_IN_LOWPOWER_LBN = common dso_local global i32 0, align 4
@MC_CMD_SET_LINK_IN_POWEROFF_LBN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_get_mcdi_phy_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_get_mcdi_phy_flags(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_mcdi_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  store %struct.efx_mcdi_phy_data* %9, %struct.efx_mcdi_phy_data** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %3, align 8
  %11 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_TXDIS_LBN, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %3, align 8
  %23 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_LOWPOWER_LBN, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %3, align 8
  %35 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_POWEROFF_LBN, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @PHY_MODE_OFF, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @MC_CMD_SET_LINK_IN_TXDIS_LBN, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %45
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @MC_CMD_SET_LINK_IN_LOWPOWER_LBN, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PHY_MODE_OFF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @MC_CMD_SET_LINK_IN_POWEROFF_LBN, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
