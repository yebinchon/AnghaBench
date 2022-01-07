; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_set_pause_cl37.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_set_pause_cl37.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }
%struct.link_vars = type { i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LD = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Ext phy AN advertize cl37 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.bnx2x_phy*, %struct.link_vars*)* @bnx2x_8073_set_pause_cl37 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8073_set_pause_cl37(%struct.link_params* %0, %struct.bnx2x_phy* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %14 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %15 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %16 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %12, %struct.bnx2x_phy* %13, i32 %14, i32 %15, i32* %7)
  %17 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %22 = load %struct.link_params*, %struct.link_params** %4, align 8
  %23 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %24 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %23, i32 0, i32 0
  %25 = call i32 @bnx2x_calc_ieee_aneg_adv(%struct.bnx2x_phy* %21, %struct.link_params* %22, i32* %24)
  %26 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %27 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_SYMMETRIC, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %39 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %51 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i32, i32* @NETIF_MSG_LINK, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @DP(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %66 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %67 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %68 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %65, %struct.bnx2x_phy* %66, i32 %67, i32 %68, i32 %69)
  %71 = call i32 @msleep(i32 500)
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_calc_ieee_aneg_adv(%struct.bnx2x_phy*, %struct.link_params*, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
