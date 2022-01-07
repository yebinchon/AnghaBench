; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.stmmac_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, i32)* @stmmac_mac_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_mac_link_down(%struct.phylink_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmmac_priv*, align 8
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %9 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @to_net_dev(i32 %10)
  %12 = call %struct.stmmac_priv* @netdev_priv(i32 %11)
  store %struct.stmmac_priv* %12, %struct.stmmac_priv** %7, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @stmmac_mac_set(%struct.stmmac_priv* %13, i32 %16, i32 0)
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %21 = call i32 @stmmac_eee_init(%struct.stmmac_priv* %20)
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @stmmac_set_eee_pls(%struct.stmmac_priv* %22, i32 %25, i32 0)
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(i32) #1

declare dso_local i32 @stmmac_mac_set(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @stmmac_eee_init(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_set_eee_pls(%struct.stmmac_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
