; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@ETH_TP_MDI_AUTO = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MV_AN_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @ETH_TP_MDI_AUTO, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTONEG_DISABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = call i32 @genphy_c45_pma_setup_forced(%struct.phy_device* %16)
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = call i32 @genphy_c45_an_config_aneg(%struct.phy_device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @linkmode_adv_to_mii_ctrl1000_t(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @MDIO_MMD_AN, align 4
  %36 = load i32, i32* @MV_AN_CTRL1000, align 4
  %37 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %38 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @phy_modify_mmd_changed(%struct.phy_device* %34, i32 %35, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @genphy_c45_check_and_restart_aneg(%struct.phy_device* %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %44, %23, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @genphy_c45_pma_setup_forced(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_an_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @linkmode_adv_to_mii_ctrl1000_t(i32) #1

declare dso_local i32 @phy_modify_mmd_changed(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @genphy_c45_check_and_restart_aneg(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
