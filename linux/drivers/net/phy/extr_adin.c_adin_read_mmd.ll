; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_read_mmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_read_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@ADIN1300_MII_EXT_REG_PTR = common dso_local global i32 0, align 4
@ADIN1300_MII_EXT_REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @adin_read_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_read_mmd(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %8, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @adin_cl45_to_adin_reg(%struct.phy_device* %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %3
  %29 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ADIN1300_MII_EXT_REG_PTR, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @__mdiobus_write(%struct.mii_bus* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ADIN1300_MII_EXT_REG_DATA, align 4
  %42 = call i32 @__mdiobus_read(%struct.mii_bus* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %36, %26
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @adin_cl45_to_adin_reg(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @__mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @__mdiobus_read(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
