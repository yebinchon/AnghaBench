; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1510_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1510_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MII_88E1510_GEN_CTRL_REG_1 = common dso_local global i32 0, align 4
@MII_88E1510_GEN_CTRL_REG_1_MODE_MASK = common dso_local global i32 0, align 4
@MII_88E1510_GEN_CTRL_REG_1_MODE_SGMII = common dso_local global i32 0, align 4
@MII_88E1510_GEN_CTRL_REG_1_RESET = common dso_local global i32 0, align 4
@MII_MARVELL_COPPER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1510_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1510_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @marvell_set_page(%struct.phy_device* %11, i32 18)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %10
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MII_88E1510_GEN_CTRL_REG_1, align 4
  %20 = load i32, i32* @MII_88E1510_GEN_CTRL_REG_1_MODE_MASK, align 4
  %21 = load i32, i32* @MII_88E1510_GEN_CTRL_REG_1_MODE_SGMII, align 4
  %22 = call i32 @phy_modify(%struct.phy_device* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %17
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load i32, i32* @MII_88E1510_GEN_CTRL_REG_1, align 4
  %30 = load i32, i32* @MII_88E1510_GEN_CTRL_REG_1_RESET, align 4
  %31 = call i32 @phy_modify(%struct.phy_device* %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %39 = call i32 @marvell_set_page(%struct.phy_device* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = call i32 @m88e1318_config_init(%struct.phy_device* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42, %34, %25, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @marvell_set_page(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @m88e1318_config_init(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
