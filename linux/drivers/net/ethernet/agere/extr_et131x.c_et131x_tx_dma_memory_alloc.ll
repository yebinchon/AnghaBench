; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_dma_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_dma_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__*, %struct.tx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.tx_ring = type { i8*, i32, i8*, i32, i32 }

@NUM_TCB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_DESC_PER_RING_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot alloc memory for Tx Ring\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot alloc memory for Tx status block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_tx_dma_memory_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_tx_dma_memory_alloc(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %6, i32 0, i32 1
  store %struct.tx_ring* %7, %struct.tx_ring** %5, align 8
  %8 = load i32, i32* @NUM_TCB, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @kcalloc(i32 %8, i32 4, i32 %11)
  %13 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %16 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %32, i32 0, i32 3
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_alloc_coherent(i32* %30, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %22
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %74

50:                                               ; preds = %22
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %56 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %55, i32 0, i32 1
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @dma_alloc_coherent(i32* %54, i32 4, i32* %56, i32 %57)
  %59 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %60 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %62 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %50
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %65, %42, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
