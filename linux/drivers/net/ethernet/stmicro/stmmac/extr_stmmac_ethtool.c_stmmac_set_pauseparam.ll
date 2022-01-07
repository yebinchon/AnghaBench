; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32 }
%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rgmii_adv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @stmmac_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca %struct.rgmii_adv, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv* %17, i32 %20, %struct.rgmii_adv* %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.rgmii_adv, %struct.rgmii_adv* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

33:                                               ; preds = %16, %2
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %38 = call i32 @phylink_ethtool_set_pauseparam(i32 %36, %struct.ethtool_pauseparam* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %32, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_pcs_get_adv_lp(%struct.stmmac_priv*, i32, %struct.rgmii_adv*) #1

declare dso_local i32 @phylink_ethtool_set_pauseparam(i32, %struct.ethtool_pauseparam*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
