; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_LPADV_10000FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_5000baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_LPADV_5000FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_2500baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_LPADV_2500FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @rtl8125_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8125_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AUTONEG_ENABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @phy_read_paged(%struct.phy_device* %11, i32 2653, i32 19)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %10
  %18 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseT_Full_BIT, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RTL_LPADV_10000FULL, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @linkmode_mod_bit(i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* @ETHTOOL_LINK_MODE_5000baseT_Full_BIT, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RTL_LPADV_5000FULL, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @linkmode_mod_bit(i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* @ETHTOOL_LINK_MODE_2500baseT_Full_BIT, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RTL_LPADV_2500FULL, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @linkmode_mod_bit(i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %17, %1
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = call i32 @genphy_read_status(%struct.phy_device* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @phy_read_paged(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
