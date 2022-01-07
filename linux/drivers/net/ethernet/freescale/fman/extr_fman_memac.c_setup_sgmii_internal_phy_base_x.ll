; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_setup_sgmii_internal_phy_base_x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_setup_sgmii_internal_phy_base_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i32 }

@MDIO_SGMII_DEV_ABIL_BASEX_MODE = common dso_local global i32 0, align 4
@MDIO_SGMII_DEV_ABIL_SGMII = common dso_local global i32 0, align 4
@MDIO_SGMII_LINK_TMR_H = common dso_local global i32 0, align 4
@LINK_TMR_H_BASEX = common dso_local global i32 0, align 4
@MDIO_SGMII_LINK_TMR_L = common dso_local global i32 0, align 4
@LINK_TMR_L_BASEX = common dso_local global i32 0, align 4
@SGMII_CR_DEF_VAL = common dso_local global i32 0, align 4
@SGMII_CR_RESTART_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_mac*)* @setup_sgmii_internal_phy_base_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sgmii_internal_phy_base_x(%struct.fman_mac* %0) #0 {
  %2 = alloca %struct.fman_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.fman_mac* %0, %struct.fman_mac** %2, align 8
  %4 = load i32, i32* @MDIO_SGMII_DEV_ABIL_BASEX_MODE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %6 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MDIO_SGMII_DEV_ABIL_SGMII, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @phy_write(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %12 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MDIO_SGMII_LINK_TMR_H, align 4
  %15 = load i32, i32* @LINK_TMR_H_BASEX, align 4
  %16 = call i32 @phy_write(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %18 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MDIO_SGMII_LINK_TMR_L, align 4
  %21 = load i32, i32* @LINK_TMR_L_BASEX, align 4
  %22 = call i32 @phy_write(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @SGMII_CR_DEF_VAL, align 4
  %24 = load i32, i32* @SGMII_CR_RESTART_AN, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %27 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @phy_write(i32 %28, i32 0, i32 %29)
  ret void
}

declare dso_local i32 @phy_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
