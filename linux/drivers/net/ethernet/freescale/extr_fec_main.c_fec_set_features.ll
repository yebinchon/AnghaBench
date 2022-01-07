; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fec_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 0
  %25 = call i32 @napi_disable(i32* %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netif_tx_lock_bh(%struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @fec_stop(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @fec_enet_set_netdev_features(%struct.net_device* %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @fec_restart(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_tx_unlock_bh(%struct.net_device* %37)
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 0
  %41 = call i32 @napi_enable(i32* %40)
  br label %46

42:                                               ; preds = %17, %2
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @fec_enet_set_netdev_features(%struct.net_device* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %22
  ret i32 0
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @fec_stop(%struct.net_device*) #1

declare dso_local i32 @fec_enet_set_netdev_features(%struct.net_device*, i32) #1

declare dso_local i32 @fec_restart(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
