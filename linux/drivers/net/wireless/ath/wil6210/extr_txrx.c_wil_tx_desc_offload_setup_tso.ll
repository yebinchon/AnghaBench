; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_desc_offload_setup_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_desc_offload_setup_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_L4_TYPE_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_L4_LENGTH_MSK = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_TCP_SEG_EN_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_IPV4_CHECKSUM_EN_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_TCP_UDP_CHECKSUM_EN_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_PSEUDO_HEADER_CALC_EN_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_tx_desc*, %struct.sk_buff*, i32, i32, i32, i32)* @wil_tx_desc_offload_setup_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_tx_desc_offload_setup_tso(%struct.vring_tx_desc* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vring_tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vring_tx_desc* %0, %struct.vring_tx_desc** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %15 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @DMA_CFG_DESC_TX_OFFLOAD_CFG_L3T_IPV4_POS, align 4
  %19 = shl i32 %17, %18
  %20 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %21 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @DMA_CFG_DESC_TX_0_L4_TYPE_POS, align 4
  %26 = shl i32 2, %25
  %27 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %28 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @DMA_CFG_DESC_TX_0_L4_LENGTH_MSK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %36 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @DMA_CFG_DESC_TX_0_TCP_SEG_EN_POS, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @DMA_CFG_DESC_TX_0_SEGMENT_BUF_DETAILS_POS, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %47 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DMA_CFG_DESC_TX_0_IPV4_CHECKSUM_EN_POS, align 4
  %53 = shl i32 %51, %52
  %54 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %55 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %61 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @DMA_CFG_DESC_TX_0_TCP_UDP_CHECKSUM_EN_POS, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %66 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @DMA_CFG_DESC_TX_0_PSEUDO_HEADER_CALC_EN_POS, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %7, align 8
  %73 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
