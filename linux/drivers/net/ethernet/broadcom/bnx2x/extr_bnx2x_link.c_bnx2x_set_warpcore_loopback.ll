; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_warpcore_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_warpcore_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i32, i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Setting Warpcore loopback type %x, speed %d\0A\00", align 1
@SPEED_10000 = common dso_local global i64 0, align 8
@SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK0_XGXSCONTROL = common dso_local global i32 0, align 4
@MDIO_WC_REG_XGXSBLK1_LANECTRL2 = common dso_local global i32 0, align 4
@FLAGS_WC_DUAL_MODE = common dso_local global i32 0, align 4
@MDIO_WC_REG_COMBO_IEEE0_MIICTRL = common dso_local global i32 0, align 4
@MDIO_WC_REG_IEEE0BLK_MIICNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_set_warpcore_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_warpcore_loopback(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load i32, i32* @NETIF_MSG_LINK, align 4
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @DP(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17)
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPEED_10000, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SUPPORTED_20000baseKR2_Full, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %24, %2
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %34 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %35 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %36 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %39 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %40 = load i32, i32* @MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, align 4
  %41 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32 16)
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %43 = load %struct.link_params*, %struct.link_params** %4, align 8
  %44 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %42, %struct.link_params* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %47 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %48 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL2, align 4
  %49 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %45, %struct.bnx2x_phy* %46, i32 %47, i32 %48, i32* %6)
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FLAGS_WC_DUAL_MODE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %31
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 2, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %31
  %66 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %67 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %68 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %69 = load i32, i32* @MDIO_WC_REG_XGXSBLK1_LANECTRL2, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %66, %struct.bnx2x_phy* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.link_params*, %struct.link_params** %4, align 8
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %74 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %72, %struct.bnx2x_phy* %73)
  br label %86

75:                                               ; preds = %24
  %76 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %77 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %78 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %79 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %80 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %76, %struct.bnx2x_phy* %77, i32 %78, i32 %79, i32 16384)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %82 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %83 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %84 = load i32, i32* @MDIO_WC_REG_IEEE0BLK_MIICNTL, align 4
  %85 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %81, %struct.bnx2x_phy* %82, i32 %83, i32 %84, i32 1)
  br label %86

86:                                               ; preds = %75, %65
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, i64) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
