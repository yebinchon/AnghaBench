; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_pf_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @enetc_pf_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_pf_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.enetc_ndev_priv* %13, %struct.enetc_ndev_priv** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %20 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @enetc_enable_rxvlan(i32* %22, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %18, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %38 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @enetc_enable_txvlan(i32* %40, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @enetc_set_loopback(%struct.net_device* %55, i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @enetc_set_features(%struct.net_device* %65, i32 %66)
  ret i32 %67
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_enable_rxvlan(i32*, i32, i32) #1

declare dso_local i32 @enetc_enable_txvlan(i32*, i32, i32) #1

declare dso_local i32 @enetc_set_loopback(%struct.net_device*, i32) #1

declare dso_local i32 @enetc_set_features(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
