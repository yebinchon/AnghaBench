; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_multicast_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_multicast_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_port = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ETH_P_PAUSE = common dso_local global i32 0, align 4
@IPVLAN_QBACKLOG_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipvl_port*, %struct.sk_buff*, i32)* @ipvlan_multicast_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipvlan_multicast_enqueue(%struct.ipvl_port* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ipvl_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.ipvl_port* %0, %struct.ipvl_port** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @ETH_P_PAUSE, align 4
  %11 = call i64 @htons(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  br label %64

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_7__* @IPVL_SKB_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %22 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %26 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %25, i32 0, i32 0
  %27 = call i64 @skb_queue_len(%struct.TYPE_5__* %26)
  %28 = load i64, i64* @IPVLAN_QBACKLOG_LIMIT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %16
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @dev_hold(%struct.TYPE_6__* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %42 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @__skb_queue_tail(%struct.TYPE_5__* %42, %struct.sk_buff* %43)
  %45 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %46 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %50 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %49, i32 0, i32 1
  %51 = call i32 @schedule_work(i32* %50)
  br label %64

52:                                               ; preds = %16
  %53 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %54 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @atomic_long_inc(i32* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %13, %52, %40
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @IPVL_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_hold(%struct.TYPE_6__*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
