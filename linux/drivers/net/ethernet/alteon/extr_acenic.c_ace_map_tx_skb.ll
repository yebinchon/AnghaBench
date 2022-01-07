; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.tx_ring_info* }
%struct.tx_ring_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ace_private*, %struct.sk_buff*, %struct.sk_buff*, i32)* @ace_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_map_tx_skb(%struct.ace_private* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.ace_private*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tx_ring_info*, align 8
  store %struct.ace_private* %0, %struct.ace_private** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %12 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @virt_to_page(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @offset_in_page(i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %26 = call i32 @pci_map_page(i32 %13, i32 %17, i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %28 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.tx_ring_info*, %struct.tx_ring_info** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %31, i64 %33
  store %struct.tx_ring_info* %34, %struct.tx_ring_info** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %37 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %36, i32 0, i32 0
  store %struct.sk_buff* %35, %struct.sk_buff** %37, align 8
  %38 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dma_unmap_addr_set(%struct.tx_ring_info* %38, i32 %39, i32 %40)
  %42 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %43 = load i32, i32* @maplen, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_unmap_len_set(%struct.tx_ring_info* %42, i32 %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.tx_ring_info*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.tx_ring_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
