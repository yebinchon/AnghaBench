; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_pma_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_pma_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL2 = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEEDSEL = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_TYPE = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_10BT = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL1_SPEED100 = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_100BTX = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL1_SPEED1000 = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_1000BT = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEED2_5G = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_2_5GBT = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEED5G = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_5GBT = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEED10G = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL2_10GBT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_pma_setup_forced(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DUPLEX_FULL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %18 = load i32, i32* @MDIO_CTRL1, align 4
  %19 = call i32 @phy_read_mmd(%struct.phy_device* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %111

24:                                               ; preds = %15
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %27 = load i32, i32* @MDIO_CTRL2, align 4
  %28 = call i32 @phy_read_mmd(%struct.phy_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %111

33:                                               ; preds = %24
  %34 = load i32, i32* @MDIO_CTRL1_SPEEDSEL, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @MDIO_PMA_CTRL2_TYPE, align 4
  %39 = or i32 %38, 48
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %85 [
    i32 133, label %46
    i32 132, label %50
    i32 131, label %57
    i32 129, label %64
    i32 128, label %71
    i32 130, label %78
  ]

46:                                               ; preds = %33
  %47 = load i32, i32* @MDIO_PMA_CTRL2_10BT, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %88

50:                                               ; preds = %33
  %51 = load i32, i32* @MDIO_PMA_CTRL1_SPEED100, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @MDIO_PMA_CTRL2_100BTX, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %88

57:                                               ; preds = %33
  %58 = load i32, i32* @MDIO_PMA_CTRL1_SPEED1000, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @MDIO_PMA_CTRL2_1000BT, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %88

64:                                               ; preds = %33
  %65 = load i32, i32* @MDIO_CTRL1_SPEED2_5G, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @MDIO_PMA_CTRL2_2_5GBT, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %88

71:                                               ; preds = %33
  %72 = load i32, i32* @MDIO_CTRL1_SPEED5G, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @MDIO_PMA_CTRL2_5GBT, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %88

78:                                               ; preds = %33
  %79 = load i32, i32* @MDIO_CTRL1_SPEED10G, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @MDIO_PMA_CTRL2_10GBT, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %88

85:                                               ; preds = %33
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %111

88:                                               ; preds = %78, %71, %64, %57, %50, %46
  %89 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %90 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %91 = load i32, i32* @MDIO_CTRL1, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @phy_write_mmd(%struct.phy_device* %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %111

98:                                               ; preds = %88
  %99 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %100 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %101 = load i32, i32* @MDIO_CTRL2, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @phy_write_mmd(%struct.phy_device* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %111

108:                                              ; preds = %98
  %109 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %110 = call i32 @genphy_c45_an_disable_aneg(%struct.phy_device* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %106, %96, %85, %31, %22, %12
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @genphy_c45_an_disable_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
