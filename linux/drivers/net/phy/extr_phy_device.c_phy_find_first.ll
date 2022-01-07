; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_find_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_find_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.mii_bus = type { i32 }

@PHY_MAX_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @phy_find_first(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PHY_MAX_ADDR, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus* %11, i32 %12)
  store %struct.phy_device* %13, %struct.phy_device** %4, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = icmp ne %struct.phy_device* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  store %struct.phy_device* %17, %struct.phy_device** %2, align 8
  br label %23

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %6
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  ret %struct.phy_device* %24
}

declare dso_local %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
