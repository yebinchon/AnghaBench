; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_ring = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vring_rx_desc }
%struct.vring_rx_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.device = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_DMA_D0_CMD_DMA_RT = common dso_local global i32 0, align 4
@RX_DMA_D0_CMD_DMA_IT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil_ring*, i64, i32)* @wil_vring_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_vring_alloc_skb(%struct.wil6210_priv* %0, %struct.wil_ring* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vring_rx_desc, align 8
  %13 = alloca %struct.vring_rx_desc*, align 8
  %14 = alloca %struct.vring_rx_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store %struct.wil_ring* %1, %struct.wil_ring** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %18 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %17)
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_HLEN, align 4
  %23 = add i32 %21, %22
  %24 = call i32 (...) @wil_rx_snaplen()
  %25 = add i32 %23, %24
  store i32 %25, i32* %11, align 4
  store %struct.vring_rx_desc* %12, %struct.vring_rx_desc** %13, align 8
  %26 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %27 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.vring_rx_desc* %32, %struct.vring_rx_desc** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %33, %34
  %36 = call %struct.sk_buff* @dev_alloc_skb(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %16, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %106

46:                                               ; preds = %4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @skb_put(%struct.sk_buff* %50, i32 %51)
  %53 = load i32, i32* @CHECKSUM_NONE, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_map_single(%struct.device* %56, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @dma_mapping_error(%struct.device* %65, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %106

75:                                               ; preds = %46
  %76 = load i32, i32* @RX_DMA_D0_CMD_DMA_RT, align 4
  %77 = load i32, i32* @RX_DMA_D0_CMD_DMA_IT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %13, align 8
  %80 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %13, align 8
  %83 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @wil_desc_addr_set(i32* %84, i32 %85)
  %87 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %13, align 8
  %88 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @cpu_to_le16(i32 %90)
  %92 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %13, align 8
  %93 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %14, align 8
  %96 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %13, align 8
  %97 = bitcast %struct.vring_rx_desc* %95 to i8*
  %98 = bitcast %struct.vring_rx_desc* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 true)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %100 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %101 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store %struct.sk_buff* %99, %struct.sk_buff** %105, align 8
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %75, %70, %43
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_rx_snaplen(...) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wil_desc_addr_set(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
