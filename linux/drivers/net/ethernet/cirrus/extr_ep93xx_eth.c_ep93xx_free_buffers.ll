; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_priv = type { %struct.TYPE_10__*, i32, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }

@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@PKT_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_priv*)* @ep93xx_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_free_buffers(%struct.ep93xx_priv* %0) #0 {
  %2 = alloca %struct.ep93xx_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ep93xx_priv* %0, %struct.ep93xx_priv** %2, align 8
  %7 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %7, i32 0, i32 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %101

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @PKT_BUF_SIZE, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(%struct.device* %37, i64 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %44 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %87, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %61 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @PKT_BUF_SIZE, align 4
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @dma_unmap_single(%struct.device* %73, i64 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %80 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @kfree(i32 %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %55

90:                                               ; preds = %55
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %93 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %96 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_free_coherent(%struct.device* %91, i32 4, %struct.TYPE_10__* %94, i32 %97)
  %99 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %100 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %99, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %100, align 8
  br label %101

101:                                              ; preds = %90, %17
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
