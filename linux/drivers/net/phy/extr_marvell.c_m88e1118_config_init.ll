; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1118_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1118_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_MARVELL_MSCR_PAGE = common dso_local global i32 0, align 4
@MII_MARVELL_LED_PAGE = common dso_local global i32 0, align 4
@MARVELL_PHY_M1118_DNS323_LEDS = common dso_local global i32 0, align 4
@MII_MARVELL_COPPER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1118_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1118_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_MARVELL_MSCR_PAGE, align 4
  %7 = call i32 @marvell_set_page(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @phy_write(%struct.phy_device* %13, i32 21, i32 4208)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @MII_MARVELL_LED_PAGE, align 4
  %22 = call i32 @marvell_set_page(%struct.phy_device* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MARVELL_PHY_M1118_DNS323_LEDS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = call i32 @phy_write(%struct.phy_device* %35, i32 16, i32 4352)
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = call i32 @phy_write(%struct.phy_device* %38, i32 16, i32 542)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %40
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = call i32 @marvell_of_reg_init(%struct.phy_device* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %63

52:                                               ; preds = %45
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %55 = call i32 @marvell_set_page(%struct.phy_device* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = call i32 @genphy_soft_reset(%struct.phy_device* %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %58, %50, %43, %25, %17, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @marvell_set_page(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @marvell_of_reg_init(%struct.phy_device*) #1

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
