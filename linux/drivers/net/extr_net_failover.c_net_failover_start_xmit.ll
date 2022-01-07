; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @net_failover_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_failover_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %8)
  store %struct.net_failover_info* %9, %struct.net_failover_info** %6, align 8
  %10 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %11 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @rcu_dereference_bh(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @net_failover_xmit_ready(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %22 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net_device* @rcu_dereference_bh(i32 %23)
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call i32 @net_failover_xmit_ready(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @net_failover_drop_xmit(%struct.sk_buff* %32, %struct.net_device* %33)
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @dev_queue_xmit(%struct.sk_buff* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %36, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rcu_dereference_bh(i32) #1

declare dso_local i32 @net_failover_xmit_ready(%struct.net_device*) #1

declare dso_local i32 @net_failover_drop_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
