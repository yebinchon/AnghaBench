; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meth_private = type { i32, i32, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

@TX_RING_ENTRIES = common dso_local global i32 0, align 4
@TX_RING_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meth_private*)* @meth_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_free_tx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca %struct.meth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.meth_private* %0, %struct.meth_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TX_RING_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @dev_kfree_skb(i32* %15)
  %17 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %18 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  %27 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %28 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* @TX_RING_BUFFER_SIZE, align 4
  %32 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %33 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %36 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(i32* %30, i32 %31, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
