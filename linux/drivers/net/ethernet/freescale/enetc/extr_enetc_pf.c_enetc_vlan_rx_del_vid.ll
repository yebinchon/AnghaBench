; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_vlan_rx_del_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_vlan_rx_del_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32 }
%struct.enetc_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @enetc_vlan_rx_del_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_vlan_rx_del_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.enetc_ndev_priv*, align 8
  %8 = alloca %struct.enetc_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.enetc_ndev_priv* %10, %struct.enetc_ndev_priv** %7, align 8
  %11 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %12 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.enetc_pf* @enetc_si_priv(i32 %13)
  store %struct.enetc_pf* %14, %struct.enetc_pf** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %17 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__clear_bit(i32 %15, i32 %18)
  %20 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %21 = call i32 @enetc_sync_vlan_ht_filter(%struct.enetc_pf* %20, i32 1)
  %22 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %23 = call i32 @enetc_vlan_filter_is_on(%struct.enetc_pf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %27 = call i32 @enetc_enable_si_vlan_promisc(%struct.enetc_pf* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %3
  ret i32 0
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @enetc_sync_vlan_ht_filter(%struct.enetc_pf*, i32) #1

declare dso_local i32 @enetc_vlan_filter_is_on(%struct.enetc_pf*) #1

declare dso_local i32 @enetc_enable_si_vlan_promisc(%struct.enetc_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
