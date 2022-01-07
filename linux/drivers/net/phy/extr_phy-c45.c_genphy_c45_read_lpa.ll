; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_lpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_read_lpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_COMPLETE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_LPABLE = common dso_local global i32 0, align 4
@MDIO_AN_LPA = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_read_lpa(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MDIO_MMD_AN, align 4
  %7 = load i32, i32* @MDIO_STAT1, align 4
  %8 = call i32 @phy_read_mmd(%struct.phy_device* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @linkmode_clear_bit(i32 %19, i32 %22)
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mii_10gbt_stat_mod_linkmode_lpa_t(i32 %26, i32 0)
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mii_adv_mod_linkmode_adv_t(i32 %30, i32 0)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %89

36:                                               ; preds = %13
  %37 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MDIO_AN_STAT1_LPABLE, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @linkmode_mod_bit(i32 %37, i32 %40, i32 %43)
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MDIO_MMD_AN, align 4
  %47 = load i32, i32* @MDIO_AN_LPA, align 4
  %48 = call i32 @phy_read_mmd(%struct.phy_device* %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %89

53:                                               ; preds = %36
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mii_adv_mod_linkmode_adv_t(i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = load i32, i32* @MDIO_MMD_AN, align 4
  %77 = load i32, i32* @MDIO_AN_10GBT_STAT, align 4
  %78 = call i32 @phy_read_mmd(%struct.phy_device* %75, i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %89

83:                                               ; preds = %53
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @mii_10gbt_stat_mod_linkmode_lpa_t(i32 %86, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %81, %51, %18, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @linkmode_clear_bit(i32, i32) #1

declare dso_local i32 @mii_10gbt_stat_mod_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @mii_adv_mod_linkmode_adv_t(i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
