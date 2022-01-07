; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofld_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ofld_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_uld_txq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_uld_txq*, %struct.sk_buff*)* @ofld_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofld_xmit(%struct.sge_uld_txq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sge_uld_txq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sge_uld_txq* %0, %struct.sge_uld_txq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call i32 @calc_tx_flits_ofld(%struct.sk_buff* %5)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %10 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %14 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %14, %struct.sk_buff* %15)
  %17 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %18 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %24 = call i32 @service_ofldq(%struct.sge_uld_txq* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %3, align 8
  %27 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  ret i32 %30
}

declare dso_local i32 @calc_tx_flits_ofld(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @service_ofldq(%struct.sge_uld_txq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
