; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_netif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_netif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32, i32 }

@bcm_sysport_dim_work = common dso_local global i32 0, align 4
@INTRL2_0_RDMA_MBDONE = common dso_local global i32 0, align 4
@INTRL2_0_TX_RING_FULL = common dso_local global i32 0, align 4
@INTRL2_0_TDMA_MBDONE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_sysport_netif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_netif_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.bcm_sysport_priv* %5, %struct.bcm_sysport_priv** %3, align 8
  %6 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %7 = load i32, i32* @bcm_sysport_dim_work, align 4
  %8 = call i32 @bcm_sysport_init_dim(%struct.bcm_sysport_priv* %6, i32 %7)
  %9 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %10 = call i32 @bcm_sysport_init_rx_coalesce(%struct.bcm_sysport_priv* %9)
  %11 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %11, i32 0, i32 1
  %13 = call i32 @napi_enable(i32* %12)
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %15 = load i32, i32* @INTRL2_0_RDMA_MBDONE, align 4
  %16 = load i32, i32* @INTRL2_0_TX_RING_FULL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @intrl2_0_mask_clear(%struct.bcm_sysport_priv* %14, i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @phy_start(i32 %21)
  %23 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %29 = call i32 @intrl2_1_mask_clear(%struct.bcm_sysport_priv* %28, i32 -1)
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %32 = load i32, i32* @INTRL2_0_TDMA_MBDONE_MASK, align 4
  %33 = call i32 @intrl2_0_mask_clear(%struct.bcm_sysport_priv* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_init_dim(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_init_rx_coalesce(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @intrl2_0_mask_clear(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @intrl2_1_mask_clear(%struct.bcm_sysport_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
