; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_restart_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_restart_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__*, %struct.sxgbe_tx_queue** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.sxgbe_tx_queue = type { i64, i64 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_priv_data*, i32)* @sxgbe_restart_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_restart_tx_queue(%struct.sxgbe_priv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sxgbe_tx_queue*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %8 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %7, i32 0, i32 3
  %9 = load %struct.sxgbe_tx_queue**, %struct.sxgbe_tx_queue*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %9, i64 %11
  %13 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %12, align 8
  store %struct.sxgbe_tx_queue* %13, %struct.sxgbe_tx_queue** %5, align 8
  %14 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %15 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_8__* %16, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %6, align 8
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %20 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %19)
  %21 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %22 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %29 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %27(i32 %30, i32 %31)
  %33 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %5, align 8
  %34 = call i32 @tx_free_ring_skbufs(%struct.sxgbe_tx_queue* %33)
  %35 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %5, align 8
  %36 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %5, align 8
  %38 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %40 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %47 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 %45(i32 %48, i32 %49)
  %51 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %52 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %59 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %58)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @tx_free_ring_skbufs(%struct.sxgbe_tx_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
