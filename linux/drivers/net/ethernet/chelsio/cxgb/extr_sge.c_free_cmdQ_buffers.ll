; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_cmdQ_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_free_cmdQ_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.cmdQ = type { i32, i32, i32, i32, %struct.cmdQ_ce* }
%struct.cmdQ_ce = type { i64 }

@dma_len = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.cmdQ*, i32)* @free_cmdQ_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cmdQ_buffers(%struct.sge* %0, %struct.cmdQ* %1, i32 %2) #0 {
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.cmdQ*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmdQ_ce*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %4, align 8
  store %struct.cmdQ* %1, %struct.cmdQ** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sge*, %struct.sge** %4, align 8
  %11 = getelementptr inbounds %struct.sge, %struct.sge* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %16 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %20 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %24 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %23, i32 0, i32 4
  %25 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %25, i64 %27
  store %struct.cmdQ_ce* %28, %struct.cmdQ_ce** %7, align 8
  br label %29

29:                                               ; preds = %82, %3
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %35 = load i32, i32* @dma_len, align 4
  %36 = call i32 @dma_unmap_len(%struct.cmdQ_ce* %34, i32 %35)
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %42 = load i32, i32* @dma_addr, align 4
  %43 = call i32 @dma_unmap_addr(%struct.cmdQ_ce* %41, i32 %42)
  %44 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %45 = load i32, i32* @dma_len, align 4
  %46 = call i32 @dma_unmap_len(%struct.cmdQ_ce* %44, i32 %45)
  %47 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %48 = call i32 @pci_unmap_single(%struct.pci_dev* %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %50 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %55 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %39
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %59 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %64 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dev_kfree_skb_any(i64 %65)
  %67 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %68 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %7, align 8
  %71 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %70, i32 1
  store %struct.cmdQ_ce* %71, %struct.cmdQ_ce** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %75 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  %79 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %80 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %79, i32 0, i32 4
  %81 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %80, align 8
  store %struct.cmdQ_ce* %81, %struct.cmdQ_ce** %7, align 8
  br label %82

82:                                               ; preds = %78, %69
  br label %29

83:                                               ; preds = %29
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %86 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_unmap_len(%struct.cmdQ_ce*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.cmdQ_ce*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
