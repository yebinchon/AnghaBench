; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_restart_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_restart_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bnx2x_restart_autoneg\0A\00", align 1
@MDIO_REG_BANK_CL73_IEEEB0 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_MII_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"bnx2x_restart_autoneg mii_control before = 0x%x\0A\00", align 1
@MDIO_COMBO_IEEO_MII_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i64)* @bnx2x_restart_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_restart_autoneg(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load i32, i32* @NETIF_MSG_LINK, align 4
  %13 = call i32 (i32, i8*, ...) @DP(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %19 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB0, align 4
  %20 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %21 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i32 %20, i32* %8)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %24 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB0, align 4
  %25 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %22, %struct.bnx2x_phy* %23, i32 %24, i32 %25, i32 %30)
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %36 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %37 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32* %8)
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32, i8*, ...) @DP(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %43 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %44 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_AN_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %41, %struct.bnx2x_phy* %42, i32 %43, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
