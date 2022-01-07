; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.mtk_mac = type { %struct.mtk_eth* }
%struct.mtk_eth = type { i32, i32, %struct.mtk_tx_ring }
%struct.mtk_tx_ring = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MTK_RESETTING = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Tx Ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"GSO expand head fail.\0A\00", align 1
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mtk_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mtk_mac*, align 8
  %7 = alloca %struct.mtk_eth*, align 8
  %8 = alloca %struct.mtk_tx_ring*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %12)
  store %struct.mtk_mac* %13, %struct.mtk_mac** %6, align 8
  %14 = load %struct.mtk_mac*, %struct.mtk_mac** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %14, i32 0, i32 0
  %16 = load %struct.mtk_eth*, %struct.mtk_eth** %15, align 8
  store %struct.mtk_eth* %16, %struct.mtk_eth** %7, align 8
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %18 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %17, i32 0, i32 2
  store %struct.mtk_tx_ring* %18, %struct.mtk_tx_ring** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store %struct.net_device_stats* %20, %struct.net_device_stats** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* @MTK_RESETTING, align 4
  %25 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %26 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %114

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @mtk_cal_txd_req(%struct.sk_buff* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %8, align 8
  %35 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %34, i32 0, i32 1
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp sle i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %44 = call i32 @mtk_stop_queue(%struct.mtk_eth* %43)
  %45 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %46 = load i32, i32* @tx_queued, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @netif_err(%struct.mtk_eth* %45, i32 %46, %struct.net_device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %50 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %125

53:                                               ; preds = %31
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i64 @skb_is_gso(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i64 @skb_cow_head(%struct.sk_buff* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %63 = load i32, i32* @tx_err, align 4
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netif_warn(%struct.mtk_eth* %62, i32 %63, %struct.net_device* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %114

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %72 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @htons(i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %66
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @mtk_tx_map(%struct.sk_buff* %87, %struct.net_device* %88, i32 %89, %struct.mtk_tx_ring* %90, i32 %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %114

95:                                               ; preds = %86
  %96 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %8, align 8
  %97 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %96, i32 0, i32 1
  %98 = call i32 @atomic_read(i32* %97)
  %99 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %8, align 8
  %100 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sle i32 %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %108 = call i32 @mtk_stop_queue(%struct.mtk_eth* %107)
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %111 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %125

114:                                              ; preds = %94, %61, %30
  %115 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %116 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  %124 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %114, %109, %42
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mtk_cal_txd_req(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mtk_stop_queue(%struct.mtk_eth*) #1

declare dso_local i32 @netif_err(%struct.mtk_eth*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_warn(%struct.mtk_eth*, i32, %struct.net_device*, i8*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @mtk_tx_map(%struct.sk_buff*, %struct.net_device*, i32, %struct.mtk_tx_ring*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
