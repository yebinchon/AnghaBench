; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@MII_M1111_PHY_LED_CONTROL = common dso_local global i32 0, align 4
@MII_M1111_PHY_LED_DIRECT = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @marvell_set_polarity(%struct.phy_device* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_M1111_PHY_LED_CONTROL, align 4
  %19 = load i32, i32* @MII_M1111_PHY_LED_DIRECT, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = call i32 @genphy_config_aneg(%struct.phy_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %25
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AUTONEG_ENABLE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %32
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @genphy_soft_reset(%struct.phy_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %30, %23, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @marvell_set_polarity(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
