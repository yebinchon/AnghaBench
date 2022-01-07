; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_dma_memory_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx_dma_memory_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__*, %struct.tx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.tx_ring = type { i32, i32*, i32, i32*, i32 }

@NUM_DESC_PER_RING_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_tx_dma_memory_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_tx_dma_memory_free(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 1
  store %struct.tx_ring* %6, %struct.tx_ring** %4, align 8
  %7 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32* %19, i32 %20, i32* %23, i32 %26)
  %28 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %11, %1
  %31 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32* %39, i32 4, i32* %42, i32 %45)
  %47 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %48 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %35, %30
  %50 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree(i32 %52)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
