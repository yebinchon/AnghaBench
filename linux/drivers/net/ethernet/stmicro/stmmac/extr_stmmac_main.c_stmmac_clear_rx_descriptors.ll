; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clear_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clear_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i32, i64, %struct.stmmac_rx_queue* }
%struct.stmmac_rx_queue = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64)* @stmmac_clear_rx_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_clear_rx_descriptors(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_rx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 4
  %9 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %9, i64 %10
  store %struct.stmmac_rx_queue* %11, %struct.stmmac_rx_queue** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DMA_RX_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %23 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %24 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DMA_RX_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @stmmac_init_rx_desc(%struct.stmmac_priv* %22, i32* %29, i32 %32, i32 %35, i32 %40, i32 %43)
  br label %68

45:                                               ; preds = %16
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %47 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %5, align 8
  %48 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %57 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DMA_RX_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @stmmac_init_rx_desc(%struct.stmmac_priv* %46, i32* %52, i32 %55, i32 %58, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %45, %21
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %12

72:                                               ; preds = %12
  ret void
}

declare dso_local i32 @stmmac_init_rx_desc(%struct.stmmac_priv*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
