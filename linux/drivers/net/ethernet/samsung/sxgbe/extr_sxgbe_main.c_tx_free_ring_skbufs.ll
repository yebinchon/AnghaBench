; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_tx_free_ring_skbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_tx_free_ring_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_tx_queue = type { i64*, i32**, %struct.sxgbe_tx_norm_desc*, %struct.sxgbe_priv_data* }
%struct.sxgbe_tx_norm_desc = type { i32 }
%struct.sxgbe_priv_data = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sxgbe_tx_norm_desc*)* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_tx_queue*)* @tx_free_ring_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_free_ring_skbufs(%struct.sxgbe_tx_queue* %0) #0 {
  %2 = alloca %struct.sxgbe_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sxgbe_priv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sxgbe_tx_norm_desc*, align 8
  store %struct.sxgbe_tx_queue* %0, %struct.sxgbe_tx_queue** %2, align 8
  %7 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %7, i32 0, i32 3
  %9 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %8, align 8
  store %struct.sxgbe_priv_data* %9, %struct.sxgbe_priv_data** %4, align 8
  %10 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %11 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %75, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %13
  %18 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %18, i32 0, i32 2
  %20 = load %struct.sxgbe_tx_norm_desc*, %struct.sxgbe_tx_norm_desc** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, %struct.sxgbe_tx_norm_desc* %20, i64 %22
  store %struct.sxgbe_tx_norm_desc* %23, %struct.sxgbe_tx_norm_desc** %6, align 8
  %24 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %17
  %33 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %34 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %44 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.sxgbe_tx_norm_desc*)*, i32 (%struct.sxgbe_tx_norm_desc*)** %48, align 8
  %50 = load %struct.sxgbe_tx_norm_desc*, %struct.sxgbe_tx_norm_desc** %6, align 8
  %51 = call i32 %49(%struct.sxgbe_tx_norm_desc* %50)
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_single(i32 %35, i64 %42, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %32, %17
  %55 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %56 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dev_kfree_skb_any(i32* %61)
  %63 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %64 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* null, i32** %68, align 8
  %69 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %2, align 8
  %70 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %13

78:                                               ; preds = %13
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
