; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4_sge_eth_txq_egress_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4_sge_eth_txq_egress_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_eth_txq = type { i32, %struct.sge_txq }
%struct.sge_txq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_eth_txq_egress_update(%struct.adapter* %0, %struct.sge_eth_txq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_eth_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_eth_txq* %1, %struct.sge_eth_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %11 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %10, i32 0, i32 1
  store %struct.sge_txq* %11, %struct.sge_txq** %8, align 8
  %12 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %13 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %18 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__netif_tx_trylock(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %58

23:                                               ; preds = %16
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %26 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @reclaim_completed_tx(%struct.adapter* %24, %struct.sge_txq* %26, i32 %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %30 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @netif_tx_queue_stopped(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %36 = call i32 @txq_avail(%struct.sge_txq* %35)
  %37 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %38 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %44 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_tx_wake_queue(i32 %45)
  %47 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %48 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %34, %23
  %53 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %6, align 8
  %54 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__netif_tx_unlock(i32 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @__netif_tx_trylock(i32) #1

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.sge_txq*, i32, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(i32) #1

declare dso_local i32 @txq_avail(%struct.sge_txq*) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @__netif_tx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
