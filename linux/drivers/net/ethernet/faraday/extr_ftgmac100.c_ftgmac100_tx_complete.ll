; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@TX_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_tx_complete(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %5 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %6 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  br label %8

8:                                                ; preds = %18, %1
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %10 = call i64 @ftgmac100_tx_buf_cleanable(%struct.ftgmac100* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %14 = call i64 @ftgmac100_tx_complete_packet(%struct.ftgmac100* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %8

19:                                               ; preds = %16
  %20 = call i32 (...) @smp_mb()
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @netif_queue_stopped(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %26 = call i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100* %25)
  %27 = load i64, i64* @TX_THRESHOLD, align 8
  %28 = icmp sge i64 %26, %27
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %35, i32 0)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %4, align 8
  %37 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %38 = call i32 (...) @smp_processor_id()
  %39 = call i32 @__netif_tx_lock(%struct.netdev_queue* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i64 @netif_queue_stopped(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %45 = call i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100* %44)
  %46 = load i64, i64* @TX_THRESHOLD, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @netif_wake_queue(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %48, %43, %34
  %52 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %53 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %52)
  br label %54

54:                                               ; preds = %51, %29
  ret void
}

declare dso_local i64 @ftgmac100_tx_buf_cleanable(%struct.ftgmac100*) #1

declare dso_local i64 @ftgmac100_tx_complete_packet(%struct.ftgmac100*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
