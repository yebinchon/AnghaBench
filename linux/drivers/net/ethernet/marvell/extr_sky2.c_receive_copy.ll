; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_receive_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_receive_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.sky2_port = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rx_ring_info = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*, %struct.rx_ring_info*, i32)* @receive_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_copy(%struct.sky2_port* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i64 @likely(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %3
  %17 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %23 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %27 = call i32 @pci_dma_sync_single_for_cpu(i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @skb_copy_from_linear_data(%struct.TYPE_8__* %30, i32 %33, i32 %34)
  %36 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %37 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %44 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %52 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @skb_copy_hash(%struct.sk_buff* %50, %struct.TYPE_8__* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %57 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @__vlan_hwaccel_copy_tag(%struct.sk_buff* %55, %struct.TYPE_8__* %58)
  %60 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %61 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %66 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %70 = call i32 @pci_dma_sync_single_for_device(i32 %64, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %72 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @__vlan_hwaccel_clear_tag(%struct.TYPE_8__* %73)
  %75 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %76 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 @skb_clear_hash(%struct.TYPE_8__* %77)
  %79 = load i32, i32* @CHECKSUM_NONE, align 4
  %80 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %81 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @skb_put(%struct.sk_buff* %84, i32 %85)
  br label %87

87:                                               ; preds = %16, %3
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %88
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @skb_copy_hash(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @__vlan_hwaccel_copy_tag(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.TYPE_8__*) #1

declare dso_local i32 @skb_clear_hash(%struct.TYPE_8__*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
