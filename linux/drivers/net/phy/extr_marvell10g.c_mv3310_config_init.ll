; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_XAUI = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RXAUI = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_10GKR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_INTERFACE_MODE_XAUI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_INTERFACE_MODE_RXAUI, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PHY_INTERFACE_MODE_10GKR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %27, %21, %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
