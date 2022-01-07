; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nixge_priv = type { i64, i32, i32*, i32 }
%struct.net_device = type { i32 }

@XAXIDMA_TX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_IOC_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_DELAY_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No interrupts asserted in Tx path\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA Tx error 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Current BD is at: 0x%llx\0A\00", align 1
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nixge_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_tx_irq(i32 %0, i8* %1) #0 {
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
  %16 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %17 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XAXIDMA_IRQ_IOC_MASK, align 4
  %20 = load i32, i32* @XAXIDMA_IRQ_DELAY_MASK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %26 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %30 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @nixge_start_xmit_done(i32 %31)
  br label %94

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %96

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @XAXIDMA_IRQ_ERROR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %42
  %48 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %49 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %52 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @nixge_hw_dma_bd_get_addr(i32* %54, i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %65 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %66 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %72 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %71, i32 %72, i32 %73)
  %75 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %76 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %77 = call i32 @nixge_dma_read_reg(%struct.nixge_priv* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %83 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %82, i32 %83, i32 %84)
  %86 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %87 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %86, i32 0, i32 1
  %88 = call i32 @tasklet_schedule(i32* %87)
  %89 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %90 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @nixge_dma_write_reg(%struct.nixge_priv* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %47, %42
  br label %94

94:                                               ; preds = %93, %24
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %38
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.nixge_priv* @netdev_priv(i8*) #1

declare dso_local i32 @nixge_dma_read_reg(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_dma_write_reg(%struct.nixge_priv*, i32, i32) #1

declare dso_local i32 @nixge_start_xmit_done(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @nixge_hw_dma_bd_get_addr(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
