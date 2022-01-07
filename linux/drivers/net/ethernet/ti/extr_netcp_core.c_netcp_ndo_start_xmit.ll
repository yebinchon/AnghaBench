; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_ndo_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_ndo_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.netcp_intf = type { i32, i32, i32, %struct.netcp_stats }
%struct.netcp_stats = type { i32 }
%struct.knav_dma_desc = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETCP_MIN_PACKET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"padding failed (%d), packet dropped\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pausing tx, count(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netcp_ndo_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcp_ndo_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netcp_intf*, align 8
  %7 = alloca %struct.netcp_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.knav_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %12)
  store %struct.netcp_intf* %13, %struct.netcp_intf** %6, align 8
  %14 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %15 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %14, i32 0, i32 3
  store %struct.netcp_stats* %15, %struct.netcp_stats** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dev_kfree_skb(%struct.sk_buff* %26)
  %28 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %119

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NETCP_MIN_PACKET_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i64, i64* @NETCP_MIN_PACKET_SIZE, align 8
  %41 = call i32 @skb_padto(%struct.sk_buff* %39, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %46 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.netcp_stats*, %struct.netcp_stats** %7, align 8
  %51 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %3, align 4
  br label %119

55:                                               ; preds = %38
  %56 = load i64, i64* @NETCP_MIN_PACKET_SIZE, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %29
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %62 = call %struct.knav_dma_desc* @netcp_tx_map_skb(%struct.sk_buff* %60, %struct.netcp_intf* %61)
  store %struct.knav_dma_desc* %62, %struct.knav_dma_desc** %9, align 8
  %63 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %9, align 8
  %64 = icmp ne %struct.knav_dma_desc* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @netif_stop_subqueue(%struct.net_device* %70, i32 %71)
  %73 = load i32, i32* @ENOBUFS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %104

75:                                               ; preds = %59
  %76 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %9, align 8
  %79 = call i32 @netcp_tx_submit_skb(%struct.netcp_intf* %76, %struct.sk_buff* %77, %struct.knav_dma_desc* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %104

83:                                               ; preds = %75
  %84 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %85 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @knav_pool_count(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %90 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %95 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @netif_stop_subqueue(%struct.net_device* %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %83
  %103 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %103, i32* %3, align 4
  br label %119

104:                                              ; preds = %82, %69
  %105 = load %struct.netcp_stats*, %struct.netcp_stats** %7, align 8
  %106 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %9, align 8
  %110 = icmp ne %struct.knav_dma_desc* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.netcp_intf*, %struct.netcp_intf** %6, align 8
  %113 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %9, align 8
  %114 = call i32 @netcp_free_tx_desc_chain(%struct.netcp_intf* %112, %struct.knav_dma_desc* %113, i32 4)
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @dev_kfree_skb(%struct.sk_buff* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %102, %44, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_padto(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.knav_dma_desc* @netcp_tx_map_skb(%struct.sk_buff*, %struct.netcp_intf*) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @netcp_tx_submit_skb(%struct.netcp_intf*, %struct.sk_buff*, %struct.knav_dma_desc*) #1

declare dso_local i32 @knav_pool_count(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @netcp_free_tx_desc_chain(%struct.netcp_intf*, %struct.knav_dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
