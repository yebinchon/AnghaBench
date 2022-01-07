; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.net_failover_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @net_failover_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_failover_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %12)
  store %struct.net_failover_info* %13, %struct.net_failover_info** %8, align 8
  %14 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %15 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net_device* @rcu_dereference(i32 %16)
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %22, align 8
  store %struct.net_device_ops* %23, %struct.net_device_ops** %11, align 8
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  %30 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = bitcast %struct.net_device* %32 to %struct.net_device.0*
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = bitcast %struct.net_device* %35 to %struct.net_device.0*
  %37 = call i32 %31(%struct.net_device.0* %33, %struct.sk_buff* %34, %struct.net_device.0* %36)
  store i32 %37, i32* %10, align 4
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @netdev_pick_tx(%struct.net_device* %39, %struct.sk_buff* %40, i32* null)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %90

50:                                               ; preds = %3
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_get_rx_queue(%struct.sk_buff* %55)
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %10, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %81, %74
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %75, label %87

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %42
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
