; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phy_device = type { i32 }
%struct.stmmac_priv = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32, %struct.phy_device*)* @stmmac_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_mac_link_up(%struct.phylink_config* %0, i32 %1, i32 %2, %struct.phy_device* %3) #0 {
  %5 = alloca %struct.phylink_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.stmmac_priv*, align 8
  store %struct.phylink_config* %0, %struct.phylink_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phy_device* %3, %struct.phy_device** %8, align 8
  %10 = load %struct.phylink_config*, %struct.phylink_config** %5, align 8
  %11 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @to_net_dev(i32 %12)
  %14 = call %struct.stmmac_priv* @netdev_priv(i32 %13)
  store %struct.stmmac_priv* %14, %struct.stmmac_priv** %9, align 8
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @stmmac_mac_set(%struct.stmmac_priv* %15, i32 %18, i32 1)
  %20 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %21 = icmp ne %struct.phy_device* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %30 = call i64 @phy_init_eee(%struct.phy_device* %29, i32 1)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %36 = call i32 @stmmac_eee_init(%struct.stmmac_priv* %35)
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @stmmac_set_eee_pls(%struct.stmmac_priv* %39, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %28, %22, %4
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(i32) #1

declare dso_local i32 @stmmac_mac_set(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i64 @phy_init_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @stmmac_eee_init(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_set_eee_pls(%struct.stmmac_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
