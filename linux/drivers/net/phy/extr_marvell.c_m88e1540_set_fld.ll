; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1540_set_fld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1540_set_fld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_eee = type { i64 }

@ETHTOOL_PHY_FAST_LINK_DOWN_OFF = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3 = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Fast Link Down detection requires EEE to be disabled!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS = common dso_local global i32 0, align 4
@MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32*)* @m88e1540_set_fld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1540_set_fld(%struct.phy_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ethtool_eee, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ETHTOOL_PHY_FAST_LINK_DOWN_OFF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = load i32, i32* @MII_88E1540_COPPER_CTRL3, align 4
  %16 = load i32, i32* @MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN, align 4
  %17 = call i32 @phy_clear_bits(%struct.phy_device* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = call i32 @phy_ethtool_get_eee(%struct.phy_device* %19, %struct.ethtool_eee* %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = call i32 @phydev_warn(%struct.phy_device* %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %23, %18
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 5
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS, align 4
  store i32 %37, i32* %7, align 4
  br label %54

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 15
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS, align 4
  store i32 %43, i32* %7, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 30
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS, align 4
  store i32 %49, i32* %7, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @FIELD_PREP(i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %59 = load i32, i32* @MII_88E1540_COPPER_CTRL3, align 4
  %60 = load i32, i32* @MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @phy_modify(%struct.phy_device* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %54
  %68 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %69 = load i32, i32* @MII_88E1540_COPPER_CTRL3, align 4
  %70 = load i32, i32* @MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN, align 4
  %71 = call i32 @phy_set_bits(%struct.phy_device* %68, i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %65, %27, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_ethtool_get_eee(%struct.phy_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
