; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_rx_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_rx_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, i32 }
%struct.rx = type { %struct.TYPE_7__*, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.rfd = type { i32 }

@RFD_BUF_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, %struct.rx*)* @e100_rx_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_rx_alloc_skb(%struct.nic* %0, %struct.rx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nic*, align 8
  %5 = alloca %struct.rx*, align 8
  %6 = alloca %struct.rfd*, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store %struct.rx* %1, %struct.rx** %5, align 8
  %7 = load %struct.nic*, %struct.nic** %4, align 8
  %8 = getelementptr inbounds %struct.nic, %struct.nic* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RFD_BUF_LEN, align 4
  %11 = call %struct.TYPE_8__* @netdev_alloc_skb_ip_align(i32 %9, i32 %10)
  %12 = load %struct.rx*, %struct.rx** %5, align 8
  %13 = getelementptr inbounds %struct.rx, %struct.rx* %12, i32 0, i32 2
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %13, align 8
  %14 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.rx*, %struct.rx** %5, align 8
  %20 = getelementptr inbounds %struct.rx, %struct.rx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.nic*, %struct.nic** %4, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 1
  %24 = call i32 @skb_copy_to_linear_data(%struct.TYPE_8__* %21, i32* %23, i32 4)
  %25 = load %struct.nic*, %struct.nic** %4, align 8
  %26 = getelementptr inbounds %struct.nic, %struct.nic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rx*, %struct.rx** %5, align 8
  %29 = getelementptr inbounds %struct.rx, %struct.rx* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RFD_BUF_LEN, align 4
  %34 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %35 = call i64 @pci_map_single(i32 %27, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rx*, %struct.rx** %5, align 8
  %37 = getelementptr inbounds %struct.rx, %struct.rx* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.nic*, %struct.nic** %4, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rx*, %struct.rx** %5, align 8
  %42 = getelementptr inbounds %struct.rx, %struct.rx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @pci_dma_mapping_error(i32 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %18
  %47 = load %struct.rx*, %struct.rx** %5, align 8
  %48 = getelementptr inbounds %struct.rx, %struct.rx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @dev_kfree_skb_any(%struct.TYPE_8__* %49)
  %51 = load %struct.rx*, %struct.rx** %5, align 8
  %52 = getelementptr inbounds %struct.rx, %struct.rx* %51, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.rx*, %struct.rx** %5, align 8
  %54 = getelementptr inbounds %struct.rx, %struct.rx* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %90

57:                                               ; preds = %18
  %58 = load %struct.rx*, %struct.rx** %5, align 8
  %59 = getelementptr inbounds %struct.rx, %struct.rx* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.rx*, %struct.rx** %5, align 8
  %66 = getelementptr inbounds %struct.rx, %struct.rx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.rfd*
  store %struct.rfd* %72, %struct.rfd** %6, align 8
  %73 = load %struct.rx*, %struct.rx** %5, align 8
  %74 = getelementptr inbounds %struct.rx, %struct.rx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rfd*, %struct.rfd** %6, align 8
  %77 = getelementptr inbounds %struct.rfd, %struct.rfd* %76, i32 0, i32 0
  %78 = call i32 @put_unaligned_le32(i64 %75, i32* %77)
  %79 = load %struct.nic*, %struct.nic** %4, align 8
  %80 = getelementptr inbounds %struct.nic, %struct.nic* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rx*, %struct.rx** %5, align 8
  %83 = getelementptr inbounds %struct.rx, %struct.rx* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %88 = call i32 @pci_dma_sync_single_for_device(i32 %81, i32 %86, i32 4, i32 %87)
  br label %89

89:                                               ; preds = %64, %57
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %46, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_8__* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_8__*) #1

declare dso_local i32 @put_unaligned_le32(i64, i32*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
