; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_freelQ_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_freelQ_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.freelQ = type { i32, i32, %struct.freelQ_ce*, i32 }
%struct.freelQ_ce = type { i32* }

@dma_addr = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.freelQ*)* @free_freelQ_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_freelQ_buffers(%struct.pci_dev* %0, %struct.freelQ* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.freelQ*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.freelQ_ce*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.freelQ* %1, %struct.freelQ** %4, align 8
  %7 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %8 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %45, %2
  %11 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %12 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %18 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %17, i32 0, i32 2
  %19 = load %struct.freelQ_ce*, %struct.freelQ_ce** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %19, i64 %21
  store %struct.freelQ_ce* %22, %struct.freelQ_ce** %6, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %25 = load i32, i32* @dma_addr, align 4
  %26 = call i32 @dma_unmap_addr(%struct.freelQ_ce* %24, i32 %25)
  %27 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %28 = load i32, i32* @dma_len, align 4
  %29 = call i32 @dma_unmap_len(%struct.freelQ_ce* %27, i32 %28)
  %30 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %31 = call i32 @pci_unmap_single(%struct.pci_dev* %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %33 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb(i32* %34)
  %36 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %37 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %41 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %16
  br label %10

46:                                               ; preds = %10
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.freelQ_ce*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
