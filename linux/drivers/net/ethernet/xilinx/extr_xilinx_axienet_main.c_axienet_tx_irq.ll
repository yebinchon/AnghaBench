; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.axienet_local = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@XAXIDMA_TX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_IOC_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_DELAY_MASK = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA Tx error 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Current BD is at: 0x%x\0A\00", align 1
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @axienet_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_tx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.axienet_local*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %12)
  store %struct.axienet_local* %13, %struct.axienet_local** %9, align 8
  %14 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %15 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %16 = call i32 @axienet_dma_in32(%struct.axienet_local* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @XAXIDMA_IRQ_IOC_MASK, align 4
  %19 = load i32, i32* @XAXIDMA_IRQ_DELAY_MASK, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %25 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @axienet_dma_out32(%struct.axienet_local* %24, i32 %25, i32 %26)
  %28 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %29 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @axienet_start_xmit_done(i32 %30)
  br label %91

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @XAXIDMA_IRQ_ERROR_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %52 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %55 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %62 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %63 = call i32 @axienet_dma_in32(%struct.axienet_local* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %69 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @axienet_dma_out32(%struct.axienet_local* %68, i32 %69, i32 %70)
  %72 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %73 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %74 = call i32 @axienet_dma_in32(%struct.axienet_local* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %80 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @axienet_dma_out32(%struct.axienet_local* %79, i32 %80, i32 %81)
  %83 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %84 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %83, i32 0, i32 1
  %85 = call i32 @tasklet_schedule(i32* %84)
  %86 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %87 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @axienet_dma_out32(%struct.axienet_local* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %44, %39
  br label %91

91:                                               ; preds = %90, %23
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %37
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @axienet_dma_in32(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_dma_out32(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @axienet_start_xmit_done(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
