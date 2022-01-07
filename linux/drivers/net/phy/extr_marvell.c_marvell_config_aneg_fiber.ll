; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_config_aneg_fiber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_config_aneg_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_FIBER_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_FIBER_1000FULL = common dso_local global i32 0, align 4
@LPA_PAUSE_FIBER = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_config_aneg_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_config_aneg_fiber(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = call i32 @genphy_setup_forced(%struct.phy_device* %15)
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @linkmode_and(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load i32, i32* @MII_ADVERTISE, align 4
  %30 = call i32 @phy_read(%struct.phy_device* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @ADVERTISE_FIBER_1000HALF, align 4
  %38 = load i32, i32* @ADVERTISE_FIBER_1000FULL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LPA_PAUSE_FIBER, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @linkmode_adv_to_fiber_adv_t(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %35
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = load i32, i32* @MII_ADVERTISE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @phy_write(%struct.phy_device* %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %95

63:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = load i32, i32* @MII_BMCR, align 4
  %70 = call i32 @phy_read(%struct.phy_device* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BMCR_ANENABLE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @BMCR_ISOLATE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = call i32 @genphy_restart_aneg(%struct.phy_device* %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %73, %61, %33, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @genphy_setup_forced(%struct.phy_device*) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_adv_to_fiber_adv_t(i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @genphy_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
