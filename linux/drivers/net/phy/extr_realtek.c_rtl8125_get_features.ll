; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@ETHTOOL_LINK_MODE_2500baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_SUPPORTS_2500FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_5000baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_SUPPORTS_5000FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_SUPPORTS_10000FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @rtl8125_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8125_get_features(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @phy_read_paged(%struct.phy_device* %5, i32 2657, i32 19)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @ETHTOOL_LINK_MODE_2500baseT_Full_BIT, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RTL_SUPPORTS_2500FULL, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @linkmode_mod_bit(i32 %12, i32 %15, i32 %18)
  %20 = load i32, i32* @ETHTOOL_LINK_MODE_5000baseT_Full_BIT, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RTL_SUPPORTS_5000FULL, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @linkmode_mod_bit(i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseT_Full_BIT, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @RTL_SUPPORTS_10000FULL, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @linkmode_mod_bit(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = call i32 @genphy_read_abilities(%struct.phy_device* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %11, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @phy_read_paged(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

declare dso_local i32 @genphy_read_abilities(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
