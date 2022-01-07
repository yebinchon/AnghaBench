; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }
%struct.ethtool_fecparam = type { i32 }

@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_AN_LBN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_fecparam*)* @efx_mcdi_phy_set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_set_fecparam(%struct.efx_nic* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.efx_mcdi_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 3
  %11 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %10, align 8
  store %struct.efx_mcdi_phy_data* %11, %struct.efx_mcdi_phy_data** %6, align 8
  %12 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ethtool_linkset_to_mcdi_cap(i32 %21)
  %23 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ethtool_fec_caps_to_mcdi(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %40 = call i32 @efx_get_mcdi_phy_flags(%struct.efx_nic* %39)
  %41 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @efx_mcdi_set_link(%struct.efx_nic* %37, i32 %38, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %30
  %50 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ethtool_linkset_to_mcdi_cap(i32) #1

declare dso_local i32 @ethtool_fec_caps_to_mcdi(i32) #1

declare dso_local i32 @efx_mcdi_set_link(%struct.efx_nic*, i32, i32, i32, i32) #1

declare dso_local i32 @efx_get_mcdi_phy_flags(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
