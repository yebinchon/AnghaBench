; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_adv_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_update_adv_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_MR_LP_NP_AN_ABLE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_LP_ADV1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_LP_ADV1_PAUSE_MASK = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pause_result CL73 0x%x\0A\00", align 1
@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_LINK_PARTNER_ABILITY1 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pause_result CL37 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32)* @bnx2x_update_adv_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_adv_fc(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.link_params*, %struct.link_params** %6, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 0
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_AUTONEG_COMPLETE, align 4
  %18 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_MR_LP_NP_AN_ABLE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_AUTONEG_COMPLETE, align 4
  %22 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_CL73_MR_LP_NP_AN_ABLE, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %28 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %29 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1, align 4
  %30 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %26, %struct.bnx2x_phy* %27, i32 %28, i32 %29, i32* %9)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %33 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %34 = load i32, i32* @MDIO_CL73_IEEEB1_AN_LP_ADV1, align 4
  %35 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %31, %struct.bnx2x_phy* %32, i32 %33, i32 %34, i32* %10)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MDIO_CL73_IEEEB1_AN_LP_ADV1_PAUSE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = ashr i32 %42, 10
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @NETIF_MSG_LINK, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @DP(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %73

49:                                               ; preds = %4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %51 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %52 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %53 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV, align 4
  %54 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %50, %struct.bnx2x_phy* %51, i32 %52, i32 %53, i32* %9)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %56 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %57 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %58 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_LINK_PARTNER_ABILITY1, align 4
  %59 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %55, %struct.bnx2x_phy* %56, i32 %57, i32 %58, i32* %10)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = ashr i32 %62, 5
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = ashr i32 %66, 7
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @NETIF_MSG_LINK, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @DP(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %49, %25
  %74 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %75 = load %struct.link_params*, %struct.link_params** %6, align 8
  %76 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @bnx2x_pause_resolve(%struct.bnx2x_phy* %74, %struct.link_params* %75, %struct.link_vars* %76, i32 %77)
  ret void
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_pause_resolve(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
