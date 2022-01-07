; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_tx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_tx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, %struct.TYPE_3__*, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { %struct.bnx2_sw_tx_bd* }
%struct.bnx2_sw_tx_bd = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32* }

@BNX2_TX_DESC_CNT = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_free_tx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_tx_skbs(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca %struct.bnx2_tx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2_sw_tx_bd*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %113, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %11
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 3
  %20 = load %struct.bnx2_napi*, %struct.bnx2_napi** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %20, i64 %22
  store %struct.bnx2_napi* %23, %struct.bnx2_napi** %4, align 8
  %24 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %24, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %25, %struct.bnx2_tx_ring_info** %5, align 8
  %26 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %26, i32 0, i32 0
  %28 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %27, align 8
  %29 = icmp ne %struct.bnx2_sw_tx_bd* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %113

31:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %103, %48, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BNX2_TX_DESC_CNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %106

36:                                               ; preds = %32
  %37 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %37, i32 0, i32 0
  %39 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %39, i64 %41
  store %struct.bnx2_sw_tx_bd* %42, %struct.bnx2_sw_tx_bd** %7, align 8
  %43 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %7, align 8
  %44 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @BNX2_NEXT_TX_BD(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %32

51:                                               ; preds = %36
  %52 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %7, align 8
  %57 = load i32, i32* @mapping, align 4
  %58 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i32 @skb_headlen(%struct.sk_buff* %59)
  %61 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %62 = call i32 @dma_unmap_single(i32* %55, i32 %58, i32 %60, i32 %61)
  %63 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %7, align 8
  %64 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %63, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %64, align 8
  %65 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %7, align 8
  %66 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @BNX2_NEXT_TX_BD(i32 %68)
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %98, %51
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %75, i32 0, i32 0
  %77 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @BNX2_TX_RING_IDX(i32 %78)
  %80 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %77, i64 %79
  store %struct.bnx2_sw_tx_bd* %80, %struct.bnx2_sw_tx_bd** %7, align 8
  %81 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %7, align 8
  %86 = load i32, i32* @mapping, align 4
  %87 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %85, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @skb_frag_size(i32* %94)
  %96 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %97 = call i32 @dma_unmap_page(i32* %84, i32 %87, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %74
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @BNX2_NEXT_TX_BD(i32 %101)
  store i32 %102, i32* %6, align 4
  br label %70

103:                                              ; preds = %70
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = call i32 @dev_kfree_skb(%struct.sk_buff* %104)
  br label %32

106:                                              ; preds = %32
  %107 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %108 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @netdev_get_tx_queue(i32 %109, i32 %110)
  %112 = call i32 @netdev_tx_reset_queue(i32 %111)
  br label %113

113:                                              ; preds = %106, %30
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %11

116:                                              ; preds = %11
  ret void
}

declare dso_local i32 @BNX2_NEXT_TX_BD(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_TX_RING_IDX(i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
