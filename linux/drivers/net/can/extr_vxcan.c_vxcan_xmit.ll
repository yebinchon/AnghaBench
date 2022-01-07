; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device*, i32, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.vxcan_priv = type { i32 }
%struct.canfd_frame = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vxcan_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxcan_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vxcan_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.canfd_frame*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.net_device_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.vxcan_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.vxcan_priv* %12, %struct.vxcan_priv** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.canfd_frame*
  store %struct.canfd_frame* %16, %struct.canfd_frame** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  store %struct.net_device_stats* %18, %struct.net_device_stats** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @can_dropped_invalid_skb(%struct.net_device* %19, %struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %2
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.vxcan_priv*, %struct.vxcan_priv** %6, align 8
  %28 = getelementptr inbounds %struct.vxcan_priv, %struct.vxcan_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net_device* @rcu_dereference(i32 %29)
  store %struct.net_device* %30, %struct.net_device** %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = icmp ne %struct.net_device* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %97

45:                                               ; preds = %25
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.sk_buff* @can_create_echo_skb(%struct.sk_buff* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %97

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @PACKET_BROADCAST, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @netif_rx_ni(%struct.sk_buff* %63)
  %65 = load i64, i64* @NET_RX_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %51
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %73 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %76 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store %struct.net_device_stats* %82, %struct.net_device_stats** %9, align 8
  %83 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %84 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %88 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %67, %51
  br label %97

97:                                               ; preds = %96, %50, %37
  %98 = call i32 (...) @rcu_read_unlock()
  %99 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.vxcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @can_create_echo_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
