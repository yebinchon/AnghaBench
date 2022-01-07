; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_check_and_restart_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_check_and_restart_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_check_and_restart_aneg(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = load i32, i32* @MDIO_MMD_AN, align 4
  %12 = load i32, i32* @MDIO_CTRL1, align 4
  %13 = call i32 @phy_read_mmd(%struct.phy_device* %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MDIO_AN_CTRL1_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = call i32 @genphy_c45_restart_aneg(%struct.phy_device* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @genphy_c45_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
