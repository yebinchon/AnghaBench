; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.rocker* }
%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_desc_info = type { i64 }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_RX_FRAG_ADDR = common dso_local global i32 0, align 4
@ROCKER_TLV_RX_FRAG_MAX_LEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, %struct.sk_buff*, i64)* @rocker_dma_rx_ring_skb_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_rx_ring_skb_map(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_port*, align 8
  %7 = alloca %struct.rocker_desc_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rocker*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %6, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %14 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %13, i32 0, i32 0
  %15 = load %struct.rocker*, %struct.rocker** %14, align 8
  store %struct.rocker* %15, %struct.rocker** %10, align 8
  %16 = load %struct.rocker*, %struct.rocker** %10, align 8
  %17 = getelementptr inbounds %struct.rocker, %struct.rocker* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %11, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %25 = call i32 @pci_map_single(%struct.pci_dev* %19, i32 %22, i64 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %4
  %34 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %35 = load i32, i32* @ROCKER_TLV_RX_FRAG_ADDR, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @rocker_tlv_put_u64(%struct.rocker_desc_info* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33
  %41 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %42 = load i32, i32* @ROCKER_TLV_RX_FRAG_MAX_LEN, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %41, i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %58

48:                                               ; preds = %46, %39
  %49 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_unmap_single(%struct.pci_dev* %49, i32 %50, i64 %51, i32 %52)
  %54 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %55 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %48, %47, %30
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i64 @rocker_tlv_put_u64(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
