; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_port_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipvl_port = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@IPVLAN_MODE_L3S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipvlan_port_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipvlan_port_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipvl_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipvl_port* @ipvlan_port_get_rtnl(%struct.net_device* %5)
  store %struct.ipvl_port* %6, %struct.ipvl_port** %3, align 8
  %7 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %8 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPVLAN_MODE_L3S, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %14 = call i32 @ipvlan_l3s_unregister(%struct.ipvl_port* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %16)
  %18 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %19 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %18, i32 0, i32 3
  %20 = call i32 @cancel_work_sync(i32* %19)
  br label %21

21:                                               ; preds = %36, %15
  %22 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %23 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %22, i32 0, i32 2
  %24 = call %struct.sk_buff* @__skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_put(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %41 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %40, i32 0, i32 1
  %42 = call i32 @ida_destroy(i32* %41)
  %43 = load %struct.ipvl_port*, %struct.ipvl_port** %3, align 8
  %44 = call i32 @kfree(%struct.ipvl_port* %43)
  ret void
}

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @ipvlan_l3s_unregister(%struct.ipvl_port*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.ipvl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
