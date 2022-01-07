; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_DP83867_MICR = common dso_local global i32 0, align 4
@MII_DP83867_MICR_AN_ERR_INT_EN = common dso_local global i32 0, align 4
@MII_DP83867_MICR_SPEED_CHNG_INT_EN = common dso_local global i32 0, align 4
@MII_DP83867_MICR_AUTONEG_COMP_INT_EN = common dso_local global i32 0, align 4
@MII_DP83867_MICR_LINK_STS_CHNG_INT_EN = common dso_local global i32 0, align 4
@MII_DP83867_MICR_DUP_MODE_CHNG_INT_EN = common dso_local global i32 0, align 4
@MII_DP83867_MICR_SLEEP_MODE_CHNG_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83867_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83867_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = load i32, i32* @MII_DP83867_MICR, align 4
  %13 = call i32 @phy_read(%struct.phy_device* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %10
  %19 = load i32, i32* @MII_DP83867_MICR_AN_ERR_INT_EN, align 4
  %20 = load i32, i32* @MII_DP83867_MICR_SPEED_CHNG_INT_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MII_DP83867_MICR_AUTONEG_COMP_INT_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MII_DP83867_MICR_LINK_STS_CHNG_INT_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MII_DP83867_MICR_DUP_MODE_CHNG_INT_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MII_DP83867_MICR_SLEEP_MODE_CHNG_INT_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @MII_DP83867_MICR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_DP83867_MICR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %18, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
