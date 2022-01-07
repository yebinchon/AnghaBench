; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_2500baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE_2_5GBT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_5000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE_5GBT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_get_features(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @genphy_c45_pma_read_abilities(%struct.phy_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i64 @mv3310_has_pma_ngbaset_quirk(%struct.phy_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %19 = load i32, i32* @MDIO_PMA_NG_EXTABLE, align 4
  %20 = call i32 @phy_read_mmd(%struct.phy_device* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i32, i32* @ETHTOOL_LINK_MODE_2500baseT_Full_BIT, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MDIO_PMA_NG_EXTABLE_2_5GBT, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @linkmode_mod_bit(i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* @ETHTOOL_LINK_MODE_5000baseT_Full_BIT, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MDIO_PMA_NG_EXTABLE_5GBT, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @linkmode_mod_bit(i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %25, %12
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %23, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @genphy_c45_pma_read_abilities(%struct.phy_device*) #1

declare dso_local i64 @mv3310_has_pma_ngbaset_quirk(%struct.phy_device*) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
