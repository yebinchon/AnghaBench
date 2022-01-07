; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meth_private = type { i32*, i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RX_RING_ENTRIES = common dso_local global i32 0, align 4
@METH_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meth_private*)* @meth_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_free_rx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca %struct.meth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.meth_private* %0, %struct.meth_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RX_RING_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %14 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @METH_RX_BUFF_SIZE, align 4
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i32 @dma_unmap_single(i32* %12, i64 %19, i32 %20, i32 %21)
  %23 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %24 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %30 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %36 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kfree_skb(i32 %41)
  br label %43

43:                                               ; preds = %8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
