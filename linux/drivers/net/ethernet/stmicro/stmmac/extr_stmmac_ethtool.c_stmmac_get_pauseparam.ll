; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32 }
%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rgmii_adv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @stmmac_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.rgmii_adv, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.stmmac_priv* %8, %struct.stmmac_priv** %5, align 8
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv* %16, i32 %19, %struct.rgmii_adv* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  br label %36

30:                                               ; preds = %15, %2
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %35 = call i32 @phylink_ethtool_get_pauseparam(i32 %33, %struct.ethtool_pauseparam* %34)
  br label %36

36:                                               ; preds = %28, %30, %29
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv*, i32, %struct.rgmii_adv*) #1

declare dso_local i32 @phylink_ethtool_get_pauseparam(i32, %struct.ethtool_pauseparam*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
