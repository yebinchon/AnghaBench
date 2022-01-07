; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_netif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_netif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_sysport_netif_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_netif_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.bcm_sysport_priv* %5, %struct.bcm_sysport_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_tx_disable(%struct.net_device* %6)
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %8, i32 0, i32 1
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @phy_stop(i32 %18)
  %20 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %21 = call i32 @bcm_sysport_mask_all_intrs(%struct.bcm_sysport_priv* %20)
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @bcm_sysport_mask_all_intrs(%struct.bcm_sysport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
