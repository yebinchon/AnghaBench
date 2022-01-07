; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_tx_queue = type { i64, i64, i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*)* @mvneta_txq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_done(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_tx_queue*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %4, align 8
  %7 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %11 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %9, i32 %12)
  store %struct.netdev_queue* %13, %struct.netdev_queue** %5, align 8
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %15 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %16 = call i32 @mvneta_txq_sent_desc_proc(%struct.mvneta_port* %14, %struct.mvneta_tx_queue* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %22 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %25 = call i32 @mvneta_txq_bufs_free(%struct.mvneta_port* %21, %struct.mvneta_tx_queue* %22, i32 %23, %struct.netdev_queue* %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %33 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %20
  %36 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %45 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %44)
  br label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %19, %46, %20
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @mvneta_txq_sent_desc_proc(%struct.mvneta_port*, %struct.mvneta_tx_queue*) #1

declare dso_local i32 @mvneta_txq_bufs_free(%struct.mvneta_port*, %struct.mvneta_tx_queue*, i32, %struct.netdev_queue*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
