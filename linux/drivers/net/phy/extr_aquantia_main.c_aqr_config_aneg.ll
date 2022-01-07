; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_AN_VEND_PROV_1000BASET_FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@MDIO_AN_VEND_PROV_1000BASET_HALF = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_VEND_PROV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @aqr_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUTONEG_DISABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @genphy_c45_pma_setup_forced(%struct.phy_device* %13)
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = call i32 @genphy_c45_an_config_aneg(%struct.phy_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  store i32 0, i32* %5, align 4
  %27 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @linkmode_test_bit(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @MDIO_AN_VEND_PROV_1000BASET_FULL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @linkmode_test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @MDIO_AN_VEND_PROV_1000BASET_HALF, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @MDIO_MMD_AN, align 4
  %51 = load i32, i32* @MDIO_AN_VEND_PROV, align 4
  %52 = load i32, i32* @MDIO_AN_VEND_PROV_1000BASET_HALF, align 4
  %53 = load i32, i32* @MDIO_AN_VEND_PROV_1000BASET_FULL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @phy_modify_mmd_changed(%struct.phy_device* %49, i32 %50, i32 %51, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %69

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @genphy_c45_check_and_restart_aneg(%struct.phy_device* %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %59, %20, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @genphy_c45_pma_setup_forced(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_an_config_aneg(%struct.phy_device*) #1

declare dso_local i64 @linkmode_test_bit(i32, i32) #1

declare dso_local i32 @phy_modify_mmd_changed(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @genphy_c45_check_and_restart_aneg(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
