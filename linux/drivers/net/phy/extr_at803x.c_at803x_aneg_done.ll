; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_aneg_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_aneg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@AT803X_REG_CHIP_CONFIG = common dso_local global i32 0, align 4
@AT803X_MODE_CFG_MASK = common dso_local global i32 0, align 4
@AT803X_MODE_CFG_SGMII = common dso_local global i32 0, align 4
@AT803X_BT_BX_REG_SEL = common dso_local global i32 0, align 4
@AT803X_PSSR = common dso_local global i32 0, align 4
@AT803X_PSSR_MR_AN_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"803x_aneg_done: SGMII link is not ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @at803x_aneg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at803x_aneg_done(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @genphy_aneg_done(%struct.phy_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = load i32, i32* @AT803X_REG_CHIP_CONFIG, align 4
  %16 = call i32 @phy_read(%struct.phy_device* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AT803X_MODE_CFG_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @AT803X_MODE_CFG_SGMII, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %13
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @AT803X_REG_CHIP_CONFIG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AT803X_BT_BX_REG_SEL, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @phy_write(%struct.phy_device* %25, i32 %26, i32 %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @AT803X_PSSR, align 4
  %34 = call i32 @phy_read(%struct.phy_device* %32, i32 %33)
  %35 = load i32, i32* @AT803X_PSSR_MR_AN_COMPLETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = call i32 @phydev_warn(%struct.phy_device* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %24
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = load i32, i32* @AT803X_REG_CHIP_CONFIG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AT803X_BT_BX_REG_SEL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @phy_write(%struct.phy_device* %42, i32 %43, i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %22, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @genphy_aneg_done(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
