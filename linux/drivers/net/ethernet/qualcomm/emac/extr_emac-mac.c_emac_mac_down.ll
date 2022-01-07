; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.net_device*, i32, %struct.TYPE_3__, i64, %struct.TYPE_4__ }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DIS_INT = common dso_local global i32 0, align 4
@EMAC_INT_STATUS = common dso_local global i64 0, align 8
@EMAC_INT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_down(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %4, i32 0, i32 0
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @napi_disable(i32* %11)
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @phy_stop(i32 %15)
  %17 = load i32, i32* @DIS_INT, align 4
  %18 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMAC_INT_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EMAC_INT_MASK, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 0, i64 %28)
  %30 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @phy_disconnect(i32 %37)
  %39 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %40 = call i32 @emac_mac_reset(%struct.emac_adapter* %39)
  %41 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %42 = call i32 @emac_tx_q_descs_free(%struct.emac_adapter* %41)
  %43 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = call i32 @netdev_reset_queue(%struct.net_device* %45)
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %48 = call i32 @emac_rx_q_free_descs(%struct.emac_adapter* %47)
  ret void
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @emac_mac_reset(%struct.emac_adapter*) #1

declare dso_local i32 @emac_tx_q_descs_free(%struct.emac_adapter*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @emac_rx_q_free_descs(%struct.emac_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
