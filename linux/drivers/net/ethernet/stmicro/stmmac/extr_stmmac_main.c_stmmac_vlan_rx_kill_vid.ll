; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @stmmac_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmmac_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.stmmac_priv* %11, %struct.stmmac_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @be16_to_cpu(i32 %21)
  %23 = load i64, i64* @ETH_P_8021AD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clear_bit(i32 %27, i32 %30)
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @stmmac_vlan_update(%struct.stmmac_priv* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @stmmac_vlan_update(%struct.stmmac_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
