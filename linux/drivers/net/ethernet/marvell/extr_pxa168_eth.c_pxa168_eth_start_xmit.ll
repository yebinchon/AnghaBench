; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.pxa168_eth_private = type { i32, i32, %struct.TYPE_2__*, %struct.sk_buff**, %struct.tx_desc* }
%struct.TYPE_2__ = type { i32 }
%struct.tx_desc = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BUF_OWNED_BY_DMA = common dso_local global i32 0, align 4
@TX_GEN_CRC = common dso_local global i32 0, align 4
@TX_FIRST_DESC = common dso_local global i32 0, align 4
@TX_ZERO_PADDING = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@TX_EN_INT = common dso_local global i32 0, align 4
@SDMA_CMD = common dso_local global i32 0, align 4
@SDMA_CMD_TXDH = common dso_local global i32 0, align 4
@SDMA_CMD_ERD = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @pxa168_eth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_eth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pxa168_eth_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.pxa168_eth_private* %11, %struct.pxa168_eth_private** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %6, align 8
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %15 = call i32 @eth_alloc_tx_desc_index(%struct.pxa168_eth_private* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %17 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %16, i32 0, i32 4
  %18 = load %struct.tx_desc*, %struct.tx_desc** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %18, i64 %20
  store %struct.tx_desc* %21, %struct.tx_desc** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %27 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %26, i32 0, i32 3
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %28, i64 %30
  store %struct.sk_buff* %25, %struct.sk_buff** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %34 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %36 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_map_single(i32* %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %46 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @skb_tx_timestamp(%struct.sk_buff* %47)
  %49 = call i32 (...) @dma_wmb()
  %50 = load i32, i32* @BUF_OWNED_BY_DMA, align 4
  %51 = load i32, i32* @TX_GEN_CRC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @TX_FIRST_DESC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TX_ZERO_PADDING, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TX_LAST_DESC, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TX_EN_INT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %62 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = call i32 (...) @wmb()
  %64 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %65 = load i32, i32* @SDMA_CMD, align 4
  %66 = load i32, i32* @SDMA_CMD_TXDH, align 4
  %67 = load i32, i32* @SDMA_CMD_ERD, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @wrl(%struct.pxa168_eth_private* %64, i32 %65, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %72 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %76 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @netif_trans_update(%struct.net_device* %79)
  %81 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %82 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %85 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = icmp sle i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %2
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @netif_stop_queue(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %2
  %93 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %93
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_alloc_tx_desc_index(%struct.pxa168_eth_private*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
