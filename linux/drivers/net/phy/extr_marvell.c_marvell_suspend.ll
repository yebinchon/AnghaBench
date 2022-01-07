; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@ETHTOOL_LINK_MODE_FIBRE_BIT = common dso_local global i32 0, align 4
@MII_MARVELL_FIBER_PAGE = common dso_local global i32 0, align 4
@MII_MARVELL_COPPER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_suspend(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load i32, i32* @ETHTOOL_LINK_MODE_FIBRE_BIT, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @linkmode_test_bit(i32 %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @MII_MARVELL_FIBER_PAGE, align 4
  %14 = call i32 @marvell_set_page(%struct.phy_device* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %35

18:                                               ; preds = %11
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = call i32 @genphy_suspend(%struct.phy_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %27 = call i32 @marvell_set_page(%struct.phy_device* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = call i32 @genphy_suspend(%struct.phy_device* %33)
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %30, %23, %17
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %38 = call i32 @marvell_set_page(%struct.phy_device* %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @linkmode_test_bit(i32, i32) #1

declare dso_local i32 @marvell_set_page(%struct.phy_device*, i32) #1

declare dso_local i32 @genphy_suspend(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
