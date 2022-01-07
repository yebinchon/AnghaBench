; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_cleanup_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_cleanup_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnad_rx_unmap = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64 }

@dma_addr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bnad_rx_unmap*)* @bnad_rxq_cleanup_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_rxq_cleanup_page(%struct.bnad* %0, %struct.bnad_rx_unmap* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bnad_rx_unmap*, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bnad_rx_unmap* %1, %struct.bnad_rx_unmap** %4, align 8
  %5 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %6 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %16 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %15, i32 0, i32 0
  %17 = load i32, i32* @dma_addr, align 4
  %18 = call i32 @dma_unmap_addr(%struct.TYPE_5__* %16, i32 %17)
  %19 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %20 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_unmap_page(i32* %14, i32 %18, i64 %22, i32 %23)
  %25 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %26 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @put_page(i32* %27)
  %29 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %30 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %32 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %31, i32 0, i32 0
  %33 = load i32, i32* @dma_addr, align 4
  %34 = call i32 @dma_unmap_addr_set(%struct.TYPE_5__* %32, i32 %33, i32 0)
  %35 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %4, align 8
  %36 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
