; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_stop_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_stop_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_queue = type { i32 }
%struct.sge_qset = type { i32 }
%struct.sge_txq = type { i32 }

@TXQ_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev_queue*, %struct.sge_qset*, %struct.sge_txq*)* @t3_stop_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_stop_tx_queue(%struct.netdev_queue* %0, %struct.sge_qset* %1, %struct.sge_txq* %2) #0 {
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  store %struct.netdev_queue* %0, %struct.netdev_queue** %4, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %5, align 8
  store %struct.sge_txq* %2, %struct.sge_txq** %6, align 8
  %7 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %8 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %7)
  %9 = load i32, i32* @TXQ_ETH, align 4
  %10 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
