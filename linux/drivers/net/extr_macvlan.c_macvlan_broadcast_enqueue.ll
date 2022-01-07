; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_broadcast_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_broadcast_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvlan_port = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.sk_buff = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.macvlan_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MACVLAN_BC_QUEUE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macvlan_port*, %struct.macvlan_dev*, %struct.sk_buff*)* @macvlan_broadcast_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvlan_broadcast_enqueue(%struct.macvlan_port* %0, %struct.macvlan_dev* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.macvlan_port*, align 8
  %5 = alloca %struct.macvlan_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.macvlan_port* %0, %struct.macvlan_port** %4, align 8
  store %struct.macvlan_dev* %1, %struct.macvlan_dev** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.TYPE_7__* @MACVLAN_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.macvlan_dev* %18, %struct.macvlan_dev** %21, align 8
  %22 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %23 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %27 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %26, i32 0, i32 1
  %28 = call i64 @skb_queue_len(%struct.TYPE_6__* %27)
  %29 = load i64, i64* @MACVLAN_BC_QUEUE_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %17
  %32 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %33 = icmp ne %struct.macvlan_dev* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %36 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_hold(i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %41 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %41, %struct.sk_buff* %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %46 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  %53 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %54 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %53, i32 0, i32 0
  %55 = call i32 @schedule_work(i32* %54)
  br label %65

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %16
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @atomic_long_inc(i32* %63)
  br label %65

65:                                               ; preds = %59, %52
  ret void
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @MACVLAN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
