; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_link_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_link_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.emac_sgmii }
%struct.emac_sgmii = type { i64 }

@EMAC_SGMII_PHY_AUTONEG_CFG2 = common dso_local global i64 0, align 8
@FORCE_AN_RX_CFG = common dso_local global i32 0, align 4
@FORCE_AN_TX_CFG = common dso_local global i32 0, align 4
@AN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_sgmii_link_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_sgmii_link_init(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.emac_sgmii*, align 8
  %4 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 0
  store %struct.emac_sgmii* %6, %struct.emac_sgmii** %3, align 8
  %7 = load %struct.emac_sgmii*, %struct.emac_sgmii** %3, align 8
  %8 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_SGMII_PHY_AUTONEG_CFG2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @FORCE_AN_RX_CFG, align 4
  %14 = load i32, i32* @FORCE_AN_TX_CFG, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @AN_ENABLE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.emac_sgmii*, %struct.emac_sgmii** %3, align 8
  %24 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EMAC_SGMII_PHY_AUTONEG_CFG2, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
