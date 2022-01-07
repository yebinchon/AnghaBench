; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm63xx.c_bcm63xx_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm63xx.c_bcm63xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@MII_BCM63XX_IR = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_GMASK = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_DUPLEX = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_SPEED = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_LINK = common dso_local global i32 0, align 4
@MII_BCM63XX_IR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm63xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @linkmode_set_bit(i32 %6, i32 %9)
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = load i32, i32* @MII_BCM63XX_IR, align 4
  %13 = call i32 @phy_read(%struct.phy_device* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* @MII_BCM63XX_IR_GMASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_BCM63XX_IR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @phy_write(%struct.phy_device* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* @MII_BCM63XX_IR_DUPLEX, align 4
  %32 = load i32, i32* @MII_BCM63XX_IR_SPEED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MII_BCM63XX_IR_LINK, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @MII_BCM63XX_IR_EN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @MII_BCM63XX_IR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @phy_write(%struct.phy_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %28, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
