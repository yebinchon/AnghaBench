; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_to_rgmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_to_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@RK3328_GRF_MAC_CON1 = common dso_local global i32 0, align 4
@RK3328_GMAC_PHY_INTF_SEL_RGMII = common dso_local global i32 0, align 4
@RK3328_GMAC_RMII_MODE_CLR = common dso_local global i32 0, align 4
@RK3328_GMAC_RXCLK_DLY_ENABLE = common dso_local global i32 0, align 4
@RK3328_GMAC_TXCLK_DLY_ENABLE = common dso_local global i32 0, align 4
@RK3328_GRF_MAC_CON0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*, i32, i32)* @rk3328_set_to_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3328_set_to_rgmii(%struct.rk_priv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rk_priv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %9 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %13 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %22 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RK3328_GRF_MAC_CON1, align 4
  %25 = load i32, i32* @RK3328_GMAC_PHY_INTF_SEL_RGMII, align 4
  %26 = load i32, i32* @RK3328_GMAC_RMII_MODE_CLR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RK3328_GMAC_RXCLK_DLY_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RK3328_GMAC_TXCLK_DLY_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_write(i32 %23, i32 %24, i32 %31)
  %33 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %34 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RK3328_GRF_MAC_CON0, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @RK3328_GMAC_CLK_RX_DL_CFG(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @RK3328_GMAC_CLK_TX_DL_CFG(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @regmap_write(i32 %35, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %20, %17
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @RK3328_GMAC_CLK_RX_DL_CFG(i32) #1

declare dso_local i32 @RK3328_GMAC_CLK_TX_DL_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
