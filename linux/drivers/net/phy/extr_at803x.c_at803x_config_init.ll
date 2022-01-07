; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @at803x_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at803x_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %1
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @at803x_enable_rx_delay(%struct.phy_device* %17)
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %10
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @at803x_disable_rx_delay(%struct.phy_device* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %22
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = call i32 @at803x_enable_tx_delay(%struct.phy_device* %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = call i32 @at803x_disable_tx_delay(%struct.phy_device* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @at803x_enable_rx_delay(%struct.phy_device*) #1

declare dso_local i32 @at803x_disable_rx_delay(%struct.phy_device*) #1

declare dso_local i32 @at803x_enable_tx_delay(%struct.phy_device*) #1

declare dso_local i32 @at803x_disable_tx_delay(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
