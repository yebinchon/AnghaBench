; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1111_config_init_hwcfg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1111_config_init_hwcfg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_M1111_HWCFG_FIBER_COPPER_AUTO = common dso_local global i32 0, align 4
@MII_M1111_PHY_EXT_SR = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_MODE_MASK = common dso_local global i32 0, align 4
@MII_M1111_HWCFG_FIBER_COPPER_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @m88e1111_config_init_hwcfg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1111_config_init_hwcfg_mode(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_AUTO, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = load i32, i32* @MII_M1111_PHY_EXT_SR, align 4
  %16 = load i32, i32* @MII_M1111_HWCFG_MODE_MASK, align 4
  %17 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_AUTO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MII_M1111_HWCFG_FIBER_COPPER_RES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @phy_modify(%struct.phy_device* %14, i32 %15, i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
