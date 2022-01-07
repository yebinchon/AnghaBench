; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_setup_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_setup_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i32, i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_CONTROL = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_CONTROL_AUTO_MDIX = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL_FULLDUPLEXCAP = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL_HALFDUPLEXCAP = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_1000BASETCONTROL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32)* @marvell_setup_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_setup_aneg(%struct.mii_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %8 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @SPEED_10, align 4
  %10 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %11 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DUPLEX_HALF, align 4
  %13 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %14 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %16 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %19 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %21 = load i32, i32* @MII_ADVERTISE, align 4
  %22 = call i32 @sungem_phy_read(%struct.mii_phy* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @ADVERTISE_ALL, align 4
  %24 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @ADVERTISE_10HALF, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @ADVERTISE_10FULL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @ADVERTISE_100HALF, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @ADVERTISE_100FULL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ADVERTISED_Pause, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %84 = load i32, i32* @MII_ADVERTISE, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @sungem_phy_write(%struct.mii_phy* %83, i32 %84, i32 %85)
  %87 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %88 = load i32, i32* @MII_M1011_PHY_SPEC_CONTROL, align 4
  %89 = call i32 @sungem_phy_read(%struct.mii_phy* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @MII_M1011_PHY_SPEC_CONTROL_AUTO_MDIX, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @MII_1000BASETCONTROL_FULLDUPLEXCAP, align 4
  %94 = load i32, i32* @MII_1000BASETCONTROL_HALFDUPLEXCAP, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %82
  %104 = load i32, i32* @MII_1000BASETCONTROL_HALFDUPLEXCAP, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %82
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @MII_1000BASETCONTROL_FULLDUPLEXCAP, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %118 = load i32, i32* @MII_1000BASETCONTROL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @sungem_phy_write(%struct.mii_phy* %117, i32 %118, i32 %119)
  %121 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %122 = load i32, i32* @MII_BMCR, align 4
  %123 = call i32 @sungem_phy_read(%struct.mii_phy* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @BMCR_ANENABLE, align 4
  %125 = load i32, i32* @BMCR_ANRESTART, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %130 = load i32, i32* @MII_BMCR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @sungem_phy_write(%struct.mii_phy* %129, i32 %130, i32 %131)
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
