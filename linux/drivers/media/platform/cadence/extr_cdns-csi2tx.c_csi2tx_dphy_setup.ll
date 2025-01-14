; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_dphy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_dphy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2tx_priv = type { i32, i64, i64* }

@CSI2TX_DPHY_CFG_CLK_RESET = common dso_local global i32 0, align 4
@CSI2TX_DPHY_CFG_MODE_LPDT = common dso_local global i32 0, align 4
@CSI2TX_DPHY_CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi2tx_priv*)* @csi2tx_dphy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2tx_dphy_setup(%struct.csi2tx_priv* %0) #0 {
  %2 = alloca %struct.csi2tx_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.csi2tx_priv* %0, %struct.csi2tx_priv** %2, align 8
  %5 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %6 = call i32 @csi2tx_dphy_set_wakeup(%struct.csi2tx_priv* %5)
  %7 = load i32, i32* @CSI2TX_DPHY_CFG_CLK_RESET, align 4
  %8 = load i32, i32* @CSI2TX_DPHY_CFG_MODE_LPDT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %18 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @CSI2TX_DPHY_CFG_LANE_RESET(i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %34 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CSI2TX_DPHY_CFG_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @csi2tx_dphy_init_finish(%struct.csi2tx_priv* %39, i32 %40)
  ret void
}

declare dso_local i32 @csi2tx_dphy_set_wakeup(%struct.csi2tx_priv*) #1

declare dso_local i32 @CSI2TX_DPHY_CFG_LANE_RESET(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @csi2tx_dphy_init_finish(%struct.csi2tx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
