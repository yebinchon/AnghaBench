; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_update_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_update_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_10GKR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @mv3310_update_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv3310_update_interface(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PHY_INTERFACE_MODE_10GKR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14, %8, %1
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %41 [
    i32 129, label %29
    i32 128, label %33
    i32 130, label %37
    i32 131, label %37
    i32 132, label %37
  ]

29:                                               ; preds = %25
  %30 = load i64, i64* @PHY_INTERFACE_MODE_10GKR, align 8
  %31 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %42

33:                                               ; preds = %25
  %34 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %42

37:                                               ; preds = %25, %25, %25
  %38 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %42

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %37, %33, %29
  br label %43

43:                                               ; preds = %42, %20, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
