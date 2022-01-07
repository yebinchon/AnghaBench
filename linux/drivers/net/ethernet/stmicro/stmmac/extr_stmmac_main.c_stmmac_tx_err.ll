; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_6__*, i32, i64, %struct.stmmac_tx_queue* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.stmmac_tx_queue = type { i64, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64)* @stmmac_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_tx_err(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_tx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 3
  %9 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %9, i64 %10
  store %struct.stmmac_tx_queue* %11, %struct.stmmac_tx_queue** %5, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @netdev_get_tx_queue(%struct.TYPE_6__* %14, i64 %15)
  %17 = call i32 @netif_tx_stop_queue(i32 %16)
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @stmmac_stop_tx_dma(%struct.stmmac_priv* %18, i64 %19)
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @dma_free_tx_skbufs(%struct.stmmac_priv* %21, i64 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %69, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DMA_TX_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %35 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %36 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DMA_TX_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @stmmac_init_tx_desc(%struct.stmmac_priv* %34, i32* %41, i32 %44, i32 %49)
  br label %68

51:                                               ; preds = %28
  %52 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %53 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %54 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %60 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @DMA_TX_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @stmmac_init_tx_desc(%struct.stmmac_priv* %52, i32* %58, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %51, %33
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %24

72:                                               ; preds = %24
  %73 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %74 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %76 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %78 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %80 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @netdev_get_tx_queue(%struct.TYPE_6__* %81, i64 %82)
  %84 = call i32 @netdev_tx_reset_queue(i32 %83)
  %85 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @stmmac_start_tx_dma(%struct.stmmac_priv* %85, i64 %86)
  %88 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %89 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %96 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @netdev_get_tx_queue(%struct.TYPE_6__* %97, i64 %98)
  %100 = call i32 @netif_tx_wake_queue(i32 %99)
  ret void
}

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @stmmac_stop_tx_dma(%struct.stmmac_priv*, i64) #1

declare dso_local i32 @dma_free_tx_skbufs(%struct.stmmac_priv*, i64) #1

declare dso_local i32 @stmmac_init_tx_desc(%struct.stmmac_priv*, i32*, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @stmmac_start_tx_dma(%struct.stmmac_priv*, i64) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
