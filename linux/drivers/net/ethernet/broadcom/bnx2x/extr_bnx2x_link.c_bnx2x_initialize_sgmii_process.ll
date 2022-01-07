; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_initialize_sgmii_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_initialize_sgmii_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@MDIO_REG_BANK_SERDES_DIGITAL = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1 = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_INVERT_SIGNAL_DETECT = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_FIBER_MODE = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_AUTODET = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_MSTR_MODE = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i32 0, align 4
@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_MII_CONTROL = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_MASK = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_FULL_DUPLEX = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_100 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_1000 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid line_speed 0x%x\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_initialize_sgmii_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_initialize_sgmii_process(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %10 = load %struct.link_params*, %struct.link_params** %5, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 0
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %7, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %16 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1, align 4
  %17 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %13, %struct.bnx2x_phy* %14, i32 %15, i32 %16, i32* %8)
  %18 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_INVERT_SIGNAL_DETECT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_FIBER_MODE, align 4
  %22 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_AUTODET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_MSTR_MODE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %30 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %31 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %32 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %29, %struct.bnx2x_phy* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPEED_AUTO_NEG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %89, label %40

40:                                               ; preds = %3
  %41 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %43 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %44 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %45 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %41, %struct.bnx2x_phy* %42, i32 %43, i32 %44, i32* %9)
  %46 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_AN_EN, align 4
  %47 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_FULL_DUPLEX, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %55 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %66 [
    i32 129, label %57
    i32 128, label %61
    i32 130, label %65
  ]

57:                                               ; preds = %40
  %58 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_100, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %72

61:                                               ; preds = %40
  %62 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_MAN_SGMII_SP_1000, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %72

65:                                               ; preds = %40
  br label %72

66:                                               ; preds = %40
  %67 = load i32, i32* @NETIF_MSG_LINK, align 4
  %68 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %69 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DP(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %65, %61, %57
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DUPLEX_FULL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_FULL_DUPLEX, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %84 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %85 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %86 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %83, %struct.bnx2x_phy* %84, i32 %85, i32 %86, i32 %87)
  br label %93

89:                                               ; preds = %3
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %91 = load %struct.link_params*, %struct.link_params** %5, align 8
  %92 = call i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy* %90, %struct.link_params* %91, i32 0)
  br label %93

93:                                               ; preds = %89, %82
  ret void
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
