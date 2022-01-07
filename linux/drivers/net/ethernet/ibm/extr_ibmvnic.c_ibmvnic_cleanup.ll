; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ibmvnic_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.ibmvnic_adapter* %5, %struct.ibmvnic_adapter** %3, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 0, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_tx_disable(%struct.net_device* %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %18 = call i32 @ibmvnic_napi_disable(%struct.ibmvnic_adapter* %17)
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %20 = call i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter* %19)
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %22 = call i32 @clean_rx_pools(%struct.ibmvnic_adapter* %21)
  %23 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %24 = call i32 @clean_tx_pools(%struct.ibmvnic_adapter* %23)
  ret void
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_napi_disable(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @clean_rx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @clean_tx_pools(%struct.ibmvnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
