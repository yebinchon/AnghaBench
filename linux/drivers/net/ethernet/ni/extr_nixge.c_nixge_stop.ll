; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.nixge_priv = type { i32, i32, i32, i32 }

@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_CR_RUNSTOP_MASK = common dso_local global i32 0, align 4
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nixge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nixge_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nixge_priv* %6, %struct.nixge_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %10 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %9, i32 0, i32 3
  %11 = call i32 @napi_disable(i32* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @phy_stop(i64 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @phy_disconnect(i64 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %27 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %28 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %30 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %29, i32 %30, i32 %34)
  %36 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %37 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %38 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %40 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %39, i32 %40, i32 %44)
  %46 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %47 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %46, i32 0, i32 2
  %48 = call i32 @tasklet_kill(i32* %47)
  %49 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %50 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @free_irq(i32 %51, %struct.net_device* %52)
  %54 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %55 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @free_irq(i32 %56, %struct.net_device* %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @nixge_hw_dma_bd_release(%struct.net_device* %59)
  ret i32 0
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @nixge_dma_read_reg(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_dma_write_reg(%struct.nixge_priv*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @nixge_hw_dma_bd_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
