; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_unmap_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_unmap_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32 }
%struct.myri10ge_tx_buf = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@bus = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*, %struct.myri10ge_tx_buf*, i32)* @myri10ge_unmap_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_unmap_tx_dma(%struct.myri10ge_priv* %0, %struct.myri10ge_tx_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca %struct.myri10ge_tx_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store %struct.myri10ge_tx_buf* %1, %struct.myri10ge_tx_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %12 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %16 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %19 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %96, %3
  %23 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %24 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dma_unmap_len(%struct.TYPE_4__* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %22
  %34 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %35 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %45 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %48 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = load i32, i32* @bus, align 4
  %54 = call i32 @dma_unmap_addr(%struct.TYPE_4__* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %57 = call i32 @pci_unmap_single(i32 %46, i32 %54, i32 %55, i32 %56)
  br label %73

58:                                               ; preds = %33
  %59 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %60 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %63 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = load i32, i32* @bus, align 4
  %69 = call i32 @dma_unmap_addr(%struct.TYPE_4__* %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %72 = call i32 @pci_unmap_page(i32 %61, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %58, %43
  %74 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %75 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dma_unmap_len_set(%struct.TYPE_4__* %79, i32 %80, i32 0)
  %82 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %83 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %73, %22
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %93 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %91, %94
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %22, label %100

100:                                              ; preds = %96
  ret void
}

declare dso_local i32 @dma_unmap_len(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
