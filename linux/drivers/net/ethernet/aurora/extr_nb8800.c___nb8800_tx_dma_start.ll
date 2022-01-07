; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c___nb8800_tx_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c___nb8800_tx_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { i64, %struct.nb8800_tx_buf* }
%struct.nb8800_tx_buf = type { i32, i32, i32 }

@NB8800_TXC_CR = common dso_local global i32 0, align 4
@TCR_EN = common dso_local global i32 0, align 4
@NB8800_TX_DESC_ADDR = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__nb8800_tx_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nb8800_tx_dma_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca %struct.nb8800_tx_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nb8800_priv* %7, %struct.nb8800_priv** %3, align 8
  %8 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %8, i32 0, i32 1
  %10 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %11 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %10, i64 %13
  store %struct.nb8800_tx_buf* %14, %struct.nb8800_tx_buf** %4, align 8
  %15 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %4, align 8
  %16 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %22 = load i32, i32* @NB8800_TXC_CR, align 4
  %23 = call i32 @nb8800_readl(%struct.nb8800_priv* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TCR_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %56

29:                                               ; preds = %20
  %30 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %31 = load i32, i32* @NB8800_TX_DESC_ADDR, align 4
  %32 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %4, align 8
  %33 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nb8800_writel(%struct.nb8800_priv* %30, i32 %31, i32 %34)
  %36 = call i32 (...) @wmb()
  %37 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %38 = load i32, i32* @NB8800_TXC_CR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TCR_EN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @nb8800_writel(%struct.nb8800_priv* %37, i32 %38, i32 %41)
  %43 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %44 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %4, align 8
  %47 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  %51 = load i32, i32* @TX_DESC_COUNT, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %55 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %29, %28, %19
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_readl(%struct.nb8800_priv*, i32) #1

declare dso_local i32 @nb8800_writel(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
