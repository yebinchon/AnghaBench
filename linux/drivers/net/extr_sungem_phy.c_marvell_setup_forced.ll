; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPD2 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_CONTROL = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_CONTROL_MANUAL_MDIX = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_CONTROL_AUTO_MDIX = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL_FULLDUPLEXCAP = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL_HALFDUPLEXCAP = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32, i32)* @marvell_setup_forced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_setup_forced(%struct.mii_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %10 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %13 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %16 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %18 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %20 = load i32, i32* @MII_BMCR, align 4
  %21 = call i32 @sungem_phy_read(%struct.mii_phy* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @BMCR_FULLDPLX, align 4
  %23 = load i32, i32* @BMCR_SPEED100, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BMCR_SPD2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BMCR_ANENABLE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @BMCR_RESET, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %45 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %41
  ]

36:                                               ; preds = %3
  br label %45

37:                                               ; preds = %3
  %38 = load i32, i32* @BMCR_SPEED100, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @BMCR_SPD2, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %3, %37, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DUPLEX_FULL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @BMCR_FULLDPLX, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %55 = load i32, i32* @MII_M1011_PHY_SPEC_CONTROL, align 4
  %56 = call i32 @sungem_phy_read(%struct.mii_phy* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @MII_M1011_PHY_SPEC_CONTROL_MANUAL_MDIX, align 4
  %58 = load i32, i32* @MII_M1011_PHY_SPEC_CONTROL_AUTO_MDIX, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MII_1000BASETCONTROL_FULLDUPLEXCAP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MII_1000BASETCONTROL_HALFDUPLEXCAP, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %81

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @DUPLEX_FULL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @MII_1000BASETCONTROL_FULLDUPLEXCAP, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @MII_1000BASETCONTROL_HALFDUPLEXCAP, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %53
  %82 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %83 = load i32, i32* @MII_1000BASETCONTROL, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @sungem_phy_write(%struct.mii_phy* %82, i32 %83, i32 %84)
  %86 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %87 = load i32, i32* @MII_BMCR, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @sungem_phy_write(%struct.mii_phy* %86, i32 %87, i32 %88)
  ret i32 0
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
