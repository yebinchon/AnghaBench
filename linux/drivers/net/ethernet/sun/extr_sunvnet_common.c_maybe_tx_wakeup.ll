; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_maybe_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_maybe_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnet_port*)* @maybe_tx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_tx_wakeup(%struct.vnet_port* %0) #0 {
  %2 = alloca %struct.vnet_port*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %2, align 8
  %4 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %5 = call i32 @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %4)
  %6 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %7 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %5, i32 %8)
  store %struct.netdev_queue* %9, %struct.netdev_queue** %3, align 8
  %10 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i32 @__netif_tx_lock(%struct.netdev_queue* %10, i32 %11)
  %13 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %14 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %13)
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %19 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %22 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %21)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
