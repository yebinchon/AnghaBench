; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_an_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_an_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV5G = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV2_5G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_an_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @linkmode_and(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @genphy_config_eee_advert(%struct.phy_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @linkmode_adv_to_mii_adv_t(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @MDIO_MMD_AN, align 4
  %25 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %26 = load i32, i32* @ADVERTISE_ALL, align 4
  %27 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @phy_modify_mmd_changed(%struct.phy_device* %23, i32 %24, i32 %25, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %68

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @linkmode_adv_to_mii_10gbt_adv_t(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = load i32, i32* @MDIO_MMD_AN, align 4
  %50 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %51 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %52 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV5G, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV2_5G, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @phy_modify_mmd_changed(%struct.phy_device* %48, i32 %49, i32 %50, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %43
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %60, %37
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @genphy_config_eee_advert(%struct.phy_device*) #1

declare dso_local i32 @linkmode_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @phy_modify_mmd_changed(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @linkmode_adv_to_mii_10gbt_adv_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
