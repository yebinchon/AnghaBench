; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_clean_desc3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_clean_desc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.TYPE_2__*, %struct.stmmac_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.stmmac_priv = type { i64, i32 }

@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dma_desc*)* @clean_desc3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_desc3(i8* %0, %struct.dma_desc* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dma_desc*, align 8
  %5 = alloca %struct.stmmac_tx_queue*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.dma_desc* %1, %struct.dma_desc** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.stmmac_tx_queue*
  store %struct.stmmac_tx_queue* %9, %struct.stmmac_tx_queue** %5, align 8
  %10 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %11 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %10, i32 0, i32 3
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  store %struct.stmmac_priv* %12, %struct.stmmac_priv** %6, align 8
  %13 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %17 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %40 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %41, 1
  %43 = load i32, i32* @DMA_TX_SIZE, align 4
  %44 = urem i32 %42, %43
  %45 = add i32 %38, %44
  %46 = zext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.dma_desc*, %struct.dma_desc** %4, align 8
  %51 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %35, %30, %25, %2
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
