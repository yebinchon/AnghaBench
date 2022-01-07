; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_port_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macvlan_port = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.sockaddr = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.macvlan_dev* }

@IFF_MACVLAN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @macvlan_port_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macvlan_port_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macvlan_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.macvlan_dev*, align 8
  %6 = alloca %struct.sockaddr, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.macvlan_port* @macvlan_port_get_rtnl(%struct.net_device* %7)
  store %struct.macvlan_port* %8, %struct.macvlan_port** %3, align 8
  %9 = load i32, i32* @IFF_MACVLAN_PORT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %15)
  %17 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %18 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %17, i32 0, i32 3
  %19 = call i32 @cancel_work_sync(i32* %18)
  br label %20

20:                                               ; preds = %37, %1
  %21 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %22 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %21, i32 0, i32 2
  %23 = call %struct.sk_buff* @__skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.TYPE_4__* @MACVLAN_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.macvlan_dev*, %struct.macvlan_dev** %28, align 8
  store %struct.macvlan_dev* %29, %struct.macvlan_dev** %5, align 8
  %30 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %31 = icmp ne %struct.macvlan_dev* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %34 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_put(i32 %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %42 = call i64 @macvlan_passthru(%struct.macvlan_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %46 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %51 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ether_addr_equal(i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %44
  %56 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %57 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %63 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %64 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %67 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32* %62, i32 %65, i32 %70)
  %72 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %73 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = call i32 @dev_set_mac_address(%struct.TYPE_3__* %74, %struct.sockaddr* %6, i32* null)
  br label %76

76:                                               ; preds = %55, %44, %40
  %77 = load %struct.macvlan_port*, %struct.macvlan_port** %3, align 8
  %78 = call i32 @kfree(%struct.macvlan_port* %77)
  ret void
}

declare dso_local %struct.macvlan_port* @macvlan_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_4__* @MACVLAN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @macvlan_passthru(%struct.macvlan_port*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dev_set_mac_address(%struct.TYPE_3__*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @kfree(%struct.macvlan_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
