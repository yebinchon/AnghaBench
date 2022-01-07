; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_maybe_wake_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_maybe_wake_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_queue*)* @xennet_maybe_wake_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_maybe_wake_tx(%struct.netfront_queue* %0) #0 {
  %2 = alloca %struct.netfront_queue*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %2, align 8
  %5 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %6 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %12 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %10, i32 %13)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %4, align 8
  %15 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %16 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %21 = call i64 @netfront_tx_slot_available(%struct.netfront_queue* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %31 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %29, i32 %32)
  %34 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %33)
  br label %35

35:                                               ; preds = %28, %23, %19, %1
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @netfront_tx_slot_available(%struct.netfront_queue*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
