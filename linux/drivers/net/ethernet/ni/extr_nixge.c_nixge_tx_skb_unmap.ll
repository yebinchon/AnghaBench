; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_tx_skb_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_tx_skb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nixge_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nixge_tx_skb = type { i32*, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nixge_priv*, %struct.nixge_tx_skb*)* @nixge_tx_skb_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nixge_tx_skb_unmap(%struct.nixge_priv* %0, %struct.nixge_tx_skb* %1) #0 {
  %3 = alloca %struct.nixge_priv*, align 8
  %4 = alloca %struct.nixge_tx_skb*, align 8
  store %struct.nixge_priv* %0, %struct.nixge_priv** %3, align 8
  store %struct.nixge_tx_skb* %1, %struct.nixge_tx_skb** %4, align 8
  %5 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %6 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %11 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %16 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %22 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %25 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_page(i32 %20, i64 %23, i32 %26, i32 %27)
  br label %44

29:                                               ; preds = %9
  %30 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %31 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %37 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %40 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %35, i64 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %29, %14
  %45 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %46 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %49 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %54 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dev_kfree_skb_any(i32* %55)
  %57 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %4, align 8
  %58 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
