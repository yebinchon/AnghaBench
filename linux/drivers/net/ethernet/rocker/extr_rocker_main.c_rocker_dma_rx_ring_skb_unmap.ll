; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rx_ring_skb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_RX_FRAG_ADDR = common dso_local global i64 0, align 8
@ROCKER_TLV_RX_FRAG_MAX_LEN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_tlv**)* @rocker_dma_rx_ring_skb_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_rx_ring_skb_unmap(%struct.rocker* %0, %struct.rocker_tlv** %1) #0 {
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.rocker_tlv**, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  store %struct.rocker_tlv** %1, %struct.rocker_tlv*** %4, align 8
  %8 = load %struct.rocker*, %struct.rocker** %3, align 8
  %9 = getelementptr inbounds %struct.rocker, %struct.rocker* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.rocker_tlv**, %struct.rocker_tlv*** %4, align 8
  %12 = load i64, i64* @ROCKER_TLV_RX_FRAG_ADDR, align 8
  %13 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %11, i64 %12
  %14 = load %struct.rocker_tlv*, %struct.rocker_tlv** %13, align 8
  %15 = icmp ne %struct.rocker_tlv* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.rocker_tlv**, %struct.rocker_tlv*** %4, align 8
  %18 = load i64, i64* @ROCKER_TLV_RX_FRAG_MAX_LEN, align 8
  %19 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %17, i64 %18
  %20 = load %struct.rocker_tlv*, %struct.rocker_tlv** %19, align 8
  %21 = icmp ne %struct.rocker_tlv* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %2
  br label %39

23:                                               ; preds = %16
  %24 = load %struct.rocker_tlv**, %struct.rocker_tlv*** %4, align 8
  %25 = load i64, i64* @ROCKER_TLV_RX_FRAG_ADDR, align 8
  %26 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %25
  %27 = load %struct.rocker_tlv*, %struct.rocker_tlv** %26, align 8
  %28 = call i32 @rocker_tlv_get_u64(%struct.rocker_tlv* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rocker_tlv**, %struct.rocker_tlv*** %4, align 8
  %30 = load i64, i64* @ROCKER_TLV_RX_FRAG_MAX_LEN, align 8
  %31 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %29, i64 %30
  %32 = load %struct.rocker_tlv*, %struct.rocker_tlv** %31, align 8
  %33 = call i64 @rocker_tlv_get_u16(%struct.rocker_tlv* %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %38 = call i32 @pci_unmap_single(%struct.pci_dev* %34, i32 %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @rocker_tlv_get_u64(%struct.rocker_tlv*) #1

declare dso_local i64 @rocker_tlv_get_u16(%struct.rocker_tlv*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
