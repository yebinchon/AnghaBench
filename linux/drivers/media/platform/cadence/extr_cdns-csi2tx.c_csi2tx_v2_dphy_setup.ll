; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_v2_dphy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_v2_dphy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2tx_priv = type { i64 }

@CSI2TX_V2_DPHY_CFG_RESET = common dso_local global i32 0, align 4
@CSI2TX_V2_DPHY_CFG_MODE_LPDT = common dso_local global i32 0, align 4
@CSI2TX_V2_DPHY_CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi2tx_priv*)* @csi2tx_v2_dphy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2tx_v2_dphy_setup(%struct.csi2tx_priv* %0) #0 {
  %2 = alloca %struct.csi2tx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.csi2tx_priv* %0, %struct.csi2tx_priv** %2, align 8
  %4 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %5 = call i32 @csi2tx_dphy_set_wakeup(%struct.csi2tx_priv* %4)
  %6 = load i32, i32* @CSI2TX_V2_DPHY_CFG_RESET, align 4
  %7 = load i32, i32* @CSI2TX_V2_DPHY_CFG_MODE_LPDT, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %11 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CSI2TX_V2_DPHY_CFG_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  %16 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @csi2tx_dphy_init_finish(%struct.csi2tx_priv* %16, i32 %17)
  ret void
}

declare dso_local i32 @csi2tx_dphy_set_wakeup(%struct.csi2tx_priv*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @csi2tx_dphy_init_finish(%struct.csi2tx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
