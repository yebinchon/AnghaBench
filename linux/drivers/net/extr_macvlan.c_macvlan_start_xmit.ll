; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vlan_pcpu_stats = type { i32, i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macvlan_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlan_pcpu_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.macvlan_dev* %11, %struct.macvlan_dev** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netpoll_tx_running(%struct.net_device* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @macvlan_netpoll_send_skb(%struct.macvlan_dev* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @macvlan_queue_xmit(%struct.sk_buff* %24, %struct.net_device* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NET_XMIT_CN, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ true, %23 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %41 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call %struct.vlan_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__* %42)
  store %struct.vlan_pcpu_stats* %43, %struct.vlan_pcpu_stats** %9, align 8
  %44 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %9, align 8
  %45 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %44, i32 0, i32 1
  %46 = call i32 @u64_stats_update_begin(i32* %45)
  %47 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %9, align 8
  %48 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %9, align 8
  %53 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %9, align 8
  %57 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %56, i32 0, i32 1
  %58 = call i32 @u64_stats_update_end(i32* %57)
  br label %66

59:                                               ; preds = %34
  %60 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %61 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @this_cpu_inc(i32 %64)
  br label %66

66:                                               ; preds = %59, %39
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(%struct.net_device*) #1

declare dso_local i32 @macvlan_netpoll_send_skb(%struct.macvlan_dev*, %struct.sk_buff*) #1

declare dso_local i32 @macvlan_queue_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.vlan_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
