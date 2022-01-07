; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nixge_priv = type { i64, i32, i32*, i32 }
%struct.net_device = type { i32 }

@XAXIDMA_RX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_IOC_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_DELAY_MASK = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No interrupts asserted in Rx path\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA Rx error 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Current BD is at: 0x%llx\0A\00", align 1
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nixge_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_rx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nixge_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.nixge_priv* @netdev_priv(i8* %11)
  store %struct.nixge_priv* %12, %struct.nixge_priv** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %16 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %17 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XAXIDMA_IRQ_IOC_MASK, align 4
  %20 = load i32, i32* @XAXIDMA_IRQ_DELAY_MASK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %26 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %30 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %31 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @XAXIDMA_IRQ_IOC_MASK, align 4
  %33 = load i32, i32* @XAXIDMA_IRQ_DELAY_MASK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %39 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %38, i32 %39, i32 %40)
  %42 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %43 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %42, i32 0, i32 3
  %44 = call i64 @napi_schedule_prep(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %48 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %47, i32 0, i32 3
  %49 = call i32 @__napi_schedule(i32* %48)
  br label %50

50:                                               ; preds = %46, %24
  br label %112

51:                                               ; preds = %2
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %114

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @XAXIDMA_IRQ_ERROR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %60
  %66 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %67 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %70 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @nixge_hw_dma_bd_get_addr(i32* %72, i64 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %83 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %84 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %90 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %94 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %95 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %101 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %100, i32 %101, i32 %102)
  %104 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %105 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %104, i32 0, i32 1
  %106 = call i32 @tasklet_schedule(i32* %105)
  %107 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %108 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %65, %60
  br label %112

112:                                              ; preds = %111, %50
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %56
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.nixge_priv* @netdev_priv(i8*) #1

declare dso_local i32 @nixge_dma_read_reg(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_dma_write_reg(%struct.nixge_priv*, i32, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @nixge_hw_dma_bd_get_addr(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
