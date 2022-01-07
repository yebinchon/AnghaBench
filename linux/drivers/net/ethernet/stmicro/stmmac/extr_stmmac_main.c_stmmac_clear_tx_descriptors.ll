; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clear_tx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clear_tx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i64, %struct.stmmac_tx_queue* }
%struct.stmmac_tx_queue = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64)* @stmmac_clear_tx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_clear_tx_descriptors(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_tx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 2
  %9 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %9, i64 %10
  store %struct.stmmac_tx_queue* %11, %struct.stmmac_tx_queue** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DMA_TX_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %23 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %24 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMA_TX_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @stmmac_init_tx_desc(%struct.stmmac_priv* %22, i32* %29, i32 %32, i32 %37)
  br label %56

39:                                               ; preds = %16
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %41 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %42 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %48 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DMA_TX_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @stmmac_init_tx_desc(%struct.stmmac_priv* %40, i32* %46, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %39, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %12

60:                                               ; preds = %12
  ret void
}

declare dso_local i32 @stmmac_init_tx_desc(%struct.stmmac_priv*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
