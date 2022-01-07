; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ftmac100_rxdes = type { i32 }
%struct.sk_buff = type { i32, i64, i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"rx skb alloc failed\0A\00", align 1
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*, i32*)* @ftmac100_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_rx_packet(%struct.ftmac100* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftmac100*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ftmac100_rxdes*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %14 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %17 = call %struct.ftmac100_rxdes* @ftmac100_rx_locate_first_segment(%struct.ftmac100* %16)
  store %struct.ftmac100_rxdes* %17, %struct.ftmac100_rxdes** %7, align 8
  %18 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %19 = icmp ne %struct.ftmac100_rxdes* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %23 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %24 = call i32 @ftmac100_rx_packet_error(%struct.ftmac100* %22, %struct.ftmac100_rxdes* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %29 = call i32 @ftmac100_rx_drop_packet(%struct.ftmac100* %28)
  store i32 1, i32* %3, align 4
  br label %144

30:                                               ; preds = %21
  %31 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %32 = call i32 @ftmac100_rxdes_last_segment(%struct.ftmac100_rxdes* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %38, i32 128)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %30
  %47 = call i64 (...) @net_ratelimit()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %54 = call i32 @ftmac100_rx_drop_packet(%struct.ftmac100* %53)
  store i32 1, i32* %3, align 4
  br label %144

55:                                               ; preds = %30
  %56 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %57 = call i32 @ftmac100_rxdes_multicast(%struct.ftmac100_rxdes* %56)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %68 = call i32 @ftmac100_rxdes_get_dma_addr(%struct.ftmac100_rxdes* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %70 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @RX_BUF_SIZE, align 4
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 @dma_unmap_page(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %77 = call i32 @ftmac100_rxdes_frame_length(%struct.ftmac100_rxdes* %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %79 = call %struct.page* @ftmac100_rxdes_get_page(%struct.ftmac100_rxdes* %78)
  store %struct.page* %79, %struct.page** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @skb_fill_page_desc(%struct.sk_buff* %80, i32 0, %struct.page* %81, i32 0, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 128
  br i1 %96, label %97, label %108

97:                                               ; preds = %66
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load i32, i32* @ETH_HLEN, align 4
  %107 = call i32 @__pskb_pull_tail(%struct.sk_buff* %105, i32 %106)
  br label %112

108:                                              ; preds = %66
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @__pskb_pull_tail(%struct.sk_buff* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %114 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %7, align 8
  %115 = load i32, i32* @GFP_ATOMIC, align 4
  %116 = call i32 @ftmac100_alloc_rx_page(%struct.ftmac100* %113, %struct.ftmac100_rxdes* %114, i32 %115)
  %117 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %118 = call i32 @ftmac100_rx_pointer_advance(%struct.ftmac100* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = call i32 @eth_type_trans(%struct.sk_buff* %119, %struct.net_device* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %131
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @netif_receive_skb(%struct.sk_buff* %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %112, %52, %27, %20
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ftmac100_rxdes* @ftmac100_rx_locate_first_segment(%struct.ftmac100*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ftmac100_rx_packet_error(%struct.ftmac100*, %struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rx_drop_packet(%struct.ftmac100*) #1

declare dso_local i32 @ftmac100_rxdes_last_segment(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ftmac100_rxdes_multicast(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_get_dma_addr(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @ftmac100_rxdes_frame_length(%struct.ftmac100_rxdes*) #1

declare dso_local %struct.page* @ftmac100_rxdes_get_page(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i32 @ftmac100_alloc_rx_page(%struct.ftmac100*, %struct.ftmac100_rxdes*, i32) #1

declare dso_local i32 @ftmac100_rx_pointer_advance(%struct.ftmac100*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
