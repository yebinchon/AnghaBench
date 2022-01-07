; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SFF_DIAG_ADDR_CHANGE = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_modinfo*)* @efx_mcdi_phy_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_get_module_info(%struct.efx_nic* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = call i32 @efx_mcdi_phy_module_type(%struct.efx_nic* %8)
  switch i32 %9, label %50 [
    i32 128, label %10
    i32 129, label %43
  ]

10:                                               ; preds = %2
  %11 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %12 = call i32 @efx_mcdi_phy_sff_8472_level(%struct.efx_nic* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %10
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = call i32 @efx_mcdi_phy_diag_type(%struct.efx_nic* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SFF_DIAG_ADDR_CHANGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %30 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %33 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %42

35:                                               ; preds = %23
  %36 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %37 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %40 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  br label %53

43:                                               ; preds = %2
  %44 = load i32, i32* @ETH_MODULE_SFF_8436, align 4
  %45 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ETH_MODULE_SFF_8436_LEN, align 4
  %48 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %43, %42
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @efx_mcdi_phy_module_type(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_phy_sff_8472_level(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_phy_diag_type(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
