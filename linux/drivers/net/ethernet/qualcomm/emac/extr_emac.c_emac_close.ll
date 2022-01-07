; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.emac_adapter* %5, %struct.emac_adapter** %3, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %10 = call i32 @emac_sgmii_close(%struct.emac_adapter* %9)
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %12 = call i32 @emac_mac_down(%struct.emac_adapter* %11)
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %14 = call i32 @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter* %13)
  %15 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %19, i32 0, i32 1
  %21 = call i32 @free_irq(i32 %18, %struct.TYPE_2__* %20)
  %22 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret i32 0
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @emac_sgmii_close(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_down(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
