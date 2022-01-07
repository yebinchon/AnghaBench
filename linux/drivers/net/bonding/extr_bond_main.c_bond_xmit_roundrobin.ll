; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_xmit_roundrobin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_xmit_roundrobin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32, i32 }
%struct.slave = type { i32 }
%struct.iphdr = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bond_xmit_roundrobin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_xmit_roundrobin(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca %struct.slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bonding* @netdev_priv(%struct.net_device* %12)
  store %struct.bonding* %13, %struct.bonding** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_IP, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_network_offset(%struct.sk_buff* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @pskb_may_pull(%struct.sk_buff* %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %65

35:                                               ; preds = %20
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %36)
  store %struct.iphdr* %37, %struct.iphdr** %11, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPPROTO_IGMP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load %struct.bonding*, %struct.bonding** %6, align 8
  %45 = getelementptr inbounds %struct.bonding, %struct.bonding* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.slave* @rcu_dereference(i32 %46)
  store %struct.slave* %47, %struct.slave** %7, align 8
  %48 = load %struct.slave*, %struct.slave** %7, align 8
  %49 = icmp ne %struct.slave* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.bonding*, %struct.bonding** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.slave*, %struct.slave** %7, align 8
  %54 = getelementptr inbounds %struct.slave, %struct.slave* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bond_dev_queue_xmit(%struct.bonding* %51, %struct.sk_buff* %52, i32 %55)
  br label %61

57:                                               ; preds = %43
  %58 = load %struct.bonding*, %struct.bonding** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @bond_xmit_slave_id(%struct.bonding* %58, %struct.sk_buff* %59, i32 0)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %2
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.bonding*, %struct.bonding** %6, align 8
  %67 = getelementptr inbounds %struct.bonding, %struct.bonding* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @READ_ONCE(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @likely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.bonding*, %struct.bonding** %6, align 8
  %75 = call i32 @bond_rr_gen_slave_id(%struct.bonding* %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.bonding*, %struct.bonding** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %78, %79
  %81 = call i32 @bond_xmit_slave_id(%struct.bonding* %76, %struct.sk_buff* %77, i32 %80)
  br label %86

82:                                               ; preds = %65
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @bond_tx_drop(%struct.net_device* %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %61
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.slave* @rcu_dereference(i32) #1

declare dso_local i32 @bond_dev_queue_xmit(%struct.bonding*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bond_xmit_slave_id(%struct.bonding*, %struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bond_rr_gen_slave_id(%struct.bonding*) #1

declare dso_local i32 @bond_tx_drop(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
