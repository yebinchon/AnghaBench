; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32 }
%struct.ipvl_port = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ipvlan_queue_xmit() called for mode = [%hx]\0A\00", align 1
@NET_XMIT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipvlan_queue_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipvl_dev*, align 8
  %7 = alloca %struct.ipvl_port*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.ipvl_dev* %9, %struct.ipvl_dev** %6, align 8
  %10 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %11 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ipvl_port* @ipvlan_port_get_rcu_bh(i32 %12)
  store %struct.ipvl_port* %13, %struct.ipvl_port** %7, align 8
  %14 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %15 = icmp ne %struct.ipvl_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @pskb_may_pull(%struct.sk_buff* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %43

26:                                               ; preds = %17
  %27 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %28 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %38 [
    i32 130, label %30
    i32 129, label %34
  ]

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @ipvlan_xmit_mode_l2(%struct.sk_buff* %31, %struct.net_device* %32)
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @ipvlan_xmit_mode_l3(%struct.sk_buff* %35, %struct.net_device* %36)
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %40 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %25, %16
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %34, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rcu_bh(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipvlan_xmit_mode_l2(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @ipvlan_xmit_mode_l3(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
