; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_make_new_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_make_new_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i64 }
%struct.jme_ring = type { %struct.jme_buffer_info* }
%struct.jme_buffer_info = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_EXTRA_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32)* @jme_make_new_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_make_new_rx_buf(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jme_ring*, align 8
  %7 = alloca %struct.jme_buffer_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 2
  %12 = load %struct.jme_ring*, %struct.jme_ring** %11, align 8
  %13 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %12, i64 0
  store %struct.jme_ring* %13, %struct.jme_ring** %6, align 8
  %14 = load %struct.jme_ring*, %struct.jme_ring** %6, align 8
  %15 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %14, i32 0, i32 0
  %16 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %16, i64 %18
  store %struct.jme_buffer_info* %19, %struct.jme_buffer_info** %7, align 8
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RX_EXTRA_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_2__* %22, i64 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %2
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @virt_to_page(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @offset_in_page(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @skb_tailroom(%struct.sk_buff* %52)
  %54 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %55 = call i32 @pci_map_page(i32 %43, i32 %47, i32 %51, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @pci_dma_mapping_error(i32 %58, i32 %59)
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %40
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call i32 @dev_kfree_skb(%struct.sk_buff* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %97

68:                                               ; preds = %40
  %69 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %70 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %79 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %82 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %85 = call i32 @pci_unmap_page(i32 %77, i32 %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %74, %68
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %89 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %88, i32 0, i32 2
  store %struct.sk_buff* %87, %struct.sk_buff** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i32 @skb_tailroom(%struct.sk_buff* %90)
  %92 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %93 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %96 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %86, %63, %37
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
