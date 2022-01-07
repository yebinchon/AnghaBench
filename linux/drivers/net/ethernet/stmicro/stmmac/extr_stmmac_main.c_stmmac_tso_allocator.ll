; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tso_allocator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tso_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_2__, %struct.stmmac_tx_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.stmmac_tx_queue = type { i64, %struct.dma_desc*, i32* }
%struct.dma_desc = type { i32 }

@DMA_TX_SIZE = common dso_local global i32 0, align 4
@TSO_MAX_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64, i32, i32, i64)* @stmmac_tso_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_tso_allocator(%struct.stmmac_priv* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.stmmac_tx_queue*, align 8
  %12 = alloca %struct.dma_desc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 1
  %18 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %18, i64 %19
  store %struct.stmmac_tx_queue* %20, %struct.stmmac_tx_queue** %11, align 8
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %90, %5
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %22
  %26 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %27 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @DMA_TX_SIZE, align 4
  %30 = call i64 @STMMAC_GET_ENTRY(i64 %28, i32 %29)
  %31 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %32 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %34 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %37 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %43 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %42, i32 0, i32 1
  %44 = load %struct.dma_desc*, %struct.dma_desc** %43, align 8
  %45 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %11, align 8
  %46 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %44, i64 %47
  store %struct.dma_desc* %48, %struct.dma_desc** %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  store i64 %54, i64* %15, align 8
  %55 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %56 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %58, 32
  br i1 %59, label %60, label %65

60:                                               ; preds = %25
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @cpu_to_le32(i64 %61)
  %63 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %64 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %70

65:                                               ; preds = %25
  %66 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %67 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @stmmac_set_desc_addr(%struct.stmmac_priv* %66, %struct.dma_desc* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @TSO_MAX_BUFF_SIZE, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @TSO_MAX_BUFF_SIZE, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %13, align 8
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %82 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @TSO_MAX_BUFF_SIZE, align 4
  %89 = icmp sle i32 %87, %88
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi i1 [ false, %78 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @stmmac_prepare_tso_tx_desc(%struct.stmmac_priv* %81, %struct.dma_desc* %82, i32 0, i64 %83, i32 0, i32 1, i32 %92, i32 0, i32 0)
  %94 = load i32, i32* @TSO_MAX_BUFF_SIZE, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %22

97:                                               ; preds = %22
  ret void
}

declare dso_local i64 @STMMAC_GET_ENTRY(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @stmmac_set_desc_addr(%struct.stmmac_priv*, %struct.dma_desc*, i64) #1

declare dso_local i32 @stmmac_prepare_tso_tx_desc(%struct.stmmac_priv*, %struct.dma_desc*, i32, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
