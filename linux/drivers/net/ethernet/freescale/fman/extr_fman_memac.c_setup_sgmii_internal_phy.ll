; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_setup_sgmii_internal_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_setup_sgmii_internal_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i32 }
%struct.fixed_phy_status = type { i32, i32 }

@IF_MODE_SGMII_EN = common dso_local global i32 0, align 4
@IF_MODE_USE_SGMII_AN = common dso_local global i32 0, align 4
@IF_MODE_SGMII_SPEED_100M = common dso_local global i32 0, align 4
@IF_MODE_SGMII_SPEED_1G = common dso_local global i32 0, align 4
@IF_MODE_SGMII_DUPLEX_HALF = common dso_local global i32 0, align 4
@MDIO_SGMII_IF_MODE = common dso_local global i32 0, align 4
@MDIO_SGMII_DEV_ABIL_SGMII_MODE = common dso_local global i32 0, align 4
@MDIO_SGMII_DEV_ABIL_SGMII = common dso_local global i32 0, align 4
@MDIO_SGMII_LINK_TMR_H = common dso_local global i32 0, align 4
@LINK_TMR_H = common dso_local global i32 0, align 4
@MDIO_SGMII_LINK_TMR_L = common dso_local global i32 0, align 4
@LINK_TMR_L = common dso_local global i32 0, align 4
@SGMII_CR_DEF_VAL = common dso_local global i32 0, align 4
@SGMII_CR_RESTART_AN = common dso_local global i32 0, align 4
@SGMII_CR_AN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_mac*, %struct.fixed_phy_status*)* @setup_sgmii_internal_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sgmii_internal_phy(%struct.fman_mac* %0, %struct.fixed_phy_status* %1) #0 {
  %3 = alloca %struct.fman_mac*, align 8
  %4 = alloca %struct.fixed_phy_status*, align 8
  %5 = alloca i32, align 4
  store %struct.fman_mac* %0, %struct.fman_mac** %3, align 8
  store %struct.fixed_phy_status* %1, %struct.fixed_phy_status** %4, align 8
  %6 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %7 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %90

15:                                               ; preds = %2
  %16 = load i32, i32* @IF_MODE_SGMII_EN, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %18 = icmp ne %struct.fixed_phy_status* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @IF_MODE_USE_SGMII_AN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %25 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 10, label %27
    i32 100, label %28
    i32 1000, label %32
  ]

27:                                               ; preds = %23
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @IF_MODE_SGMII_SPEED_100M, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %23, %32
  %34 = load i32, i32* @IF_MODE_SGMII_SPEED_1G, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %28, %27
  %38 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %39 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @IF_MODE_SGMII_DUPLEX_HALF, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %49 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MDIO_SGMII_IF_MODE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @phy_write(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @MDIO_SGMII_DEV_ABIL_SGMII_MODE, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %56 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MDIO_SGMII_DEV_ABIL_SGMII, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @phy_write(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %62 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MDIO_SGMII_LINK_TMR_H, align 4
  %65 = load i32, i32* @LINK_TMR_H, align 4
  %66 = call i32 @phy_write(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %68 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MDIO_SGMII_LINK_TMR_L, align 4
  %71 = load i32, i32* @LINK_TMR_L, align 4
  %72 = call i32 @phy_write(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %74 = icmp ne %struct.fixed_phy_status* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %47
  %76 = load i32, i32* @SGMII_CR_DEF_VAL, align 4
  %77 = load i32, i32* @SGMII_CR_RESTART_AN, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %5, align 4
  br label %84

79:                                               ; preds = %47
  %80 = load i32, i32* @SGMII_CR_DEF_VAL, align 4
  %81 = load i32, i32* @SGMII_CR_AN_EN, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %86 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @phy_write(i32 %87, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %84, %14
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @phy_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
