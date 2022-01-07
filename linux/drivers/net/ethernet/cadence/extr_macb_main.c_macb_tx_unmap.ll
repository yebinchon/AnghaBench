; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.macb_tx_skb = type { i32*, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*, %struct.macb_tx_skb*)* @macb_tx_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_tx_unmap(%struct.macb* %0, %struct.macb_tx_skb* %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_tx_skb*, align 8
  store %struct.macb* %0, %struct.macb** %3, align 8
  store %struct.macb_tx_skb* %1, %struct.macb_tx_skb** %4, align 8
  %5 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %6 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %11 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.macb*, %struct.macb** %3, align 8
  %16 = getelementptr inbounds %struct.macb, %struct.macb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %20 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %23 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @dma_unmap_page(i32* %18, i64 %21, i32 %24, i32 %25)
  br label %40

27:                                               ; preds = %9
  %28 = load %struct.macb*, %struct.macb** %3, align 8
  %29 = getelementptr inbounds %struct.macb, %struct.macb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %33 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %36 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32* %31, i64 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %14
  %41 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %42 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %45 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %50 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dev_kfree_skb_any(i32* %51)
  %53 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %4, align 8
  %54 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
