; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_set_rings_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_set_rings_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@DMA_TX_SIZE = common dso_local global i64 0, align 8
@DMA_RX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_set_rings_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_set_rings_length(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @DMA_TX_SIZE, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @stmmac_set_tx_ring_len(%struct.stmmac_priv* %21, i32 %24, i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %16

32:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @DMA_RX_SIZE, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @stmmac_set_rx_ring_len(%struct.stmmac_priv* %38, i32 %41, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %33

49:                                               ; preds = %33
  ret void
}

declare dso_local i32 @stmmac_set_tx_ring_len(%struct.stmmac_priv*, i32, i64, i64) #1

declare dso_local i32 @stmmac_set_rx_ring_len(%struct.stmmac_priv*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
