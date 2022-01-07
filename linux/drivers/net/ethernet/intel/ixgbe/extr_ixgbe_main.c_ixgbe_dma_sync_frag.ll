; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_dma_sync_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_dma_sync_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@PAGE_MASK = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.sk_buff*)* @ixgbe_dma_sync_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_dma_sync_frag(%struct.ixgbe_ring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %8 = call i64 @ring_uses_build_skb(%struct.ixgbe_ring* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_sync_single_range_for_cpu(i32 %19, i32 %23, i64 %24, i32 %26, i32 %27)
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %6, align 8
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @skb_frag_off(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @skb_frag_size(i32* %44)
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_sync_single_range_for_cpu(i32 %37, i32 %41, i64 %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %29, %10
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %64 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %63)
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %67 = call i32 @dma_unmap_page_attrs(i32 %58, i32 %62, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %48
  ret void
}

declare dso_local i64 @ring_uses_build_skb(%struct.ixgbe_ring*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
