; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i64, i32, %struct.macvlan_port* }
%struct.macvlan_port = type { i32 }
%struct.ethhdr = type { i32 }

@MACVLAN_MODE_BRIDGE = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macvlan_queue_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_queue_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca %struct.macvlan_port*, align 8
  %8 = alloca %struct.macvlan_dev*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.macvlan_dev* %11, %struct.macvlan_dev** %6, align 8
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %13 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %12, i32 0, i32 2
  %14 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  store %struct.macvlan_port* %14, %struct.macvlan_port** %7, align 8
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %16 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ethhdr*
  store %struct.ethhdr* %25, %struct.ethhdr** %9, align 8
  %26 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_multicast_ether_addr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.macvlan_port*, %struct.macvlan_port** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %36 = call i32 @macvlan_broadcast(%struct.sk_buff* %32, %struct.macvlan_port* %33, %struct.net_device* %34, i64 %35)
  br label %60

37:                                               ; preds = %20
  %38 = load %struct.macvlan_port*, %struct.macvlan_port** %7, align 8
  %39 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %40 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.macvlan_dev* @macvlan_hash_lookup(%struct.macvlan_port* %38, i32 %41)
  store %struct.macvlan_dev* %42, %struct.macvlan_dev** %8, align 8
  %43 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %44 = icmp ne %struct.macvlan_dev* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %47 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %53 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @dev_forward_skb(i32 %54, %struct.sk_buff* %55)
  %57 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %45, %37
  br label %59

59:                                               ; preds = %58, %2
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %62 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i64 @netdev_get_sb_channel(%struct.net_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi %struct.net_device* [ %71, %70 ], [ null, %72 ]
  %75 = call i32 @dev_queue_xmit_accel(%struct.sk_buff* %66, %struct.net_device* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %51
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @macvlan_broadcast(%struct.sk_buff*, %struct.macvlan_port*, %struct.net_device*, i64) #1

declare dso_local %struct.macvlan_dev* @macvlan_hash_lookup(%struct.macvlan_port*, i32) #1

declare dso_local i32 @dev_forward_skb(i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit_accel(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @netdev_get_sb_channel(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
