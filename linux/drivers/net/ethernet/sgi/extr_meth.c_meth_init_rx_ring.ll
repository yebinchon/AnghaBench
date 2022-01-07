; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.meth_private = type { i64, i32*, i32**, %struct.TYPE_6__*, %struct.TYPE_8__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@RX_RING_ENTRIES = common dso_local global i32 0, align 4
@METH_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@METH_RX_HEAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meth_private*)* @meth_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_init_rx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca %struct.meth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.meth_private* %0, %struct.meth_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %72, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RX_RING_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %75

8:                                                ; preds = %4
  %9 = load i32, i32* @METH_RX_BUFF_SIZE, align 4
  %10 = call %struct.TYPE_8__* @alloc_skb(i32 %9, i32 0)
  %11 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %12 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 %15
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %16, align 8
  %17 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %18 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* @METH_RX_HEAD, align 4
  %25 = call i32 @skb_reserve(%struct.TYPE_8__* %23, i32 %24)
  %26 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %27 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %37 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* %35, i32** %41, align 8
  %42 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %43 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %47 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @METH_RX_BUFF_SIZE, align 4
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_map_single(i32* %45, i32* %52, i32 %53, i32 %54)
  %56 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %57 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %63 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mace, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %4

75:                                               ; preds = %4
  %76 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %77 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
