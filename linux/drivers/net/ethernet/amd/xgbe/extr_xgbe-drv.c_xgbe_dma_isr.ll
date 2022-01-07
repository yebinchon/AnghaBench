; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dma_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_dma_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, i32, %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { i64 }

@DMA_CH_SR = common dso_local global i32 0, align 4
@TI = common dso_local global i32 0, align 4
@RI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xgbe_dma_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_dma_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xgbe_channel*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.xgbe_channel*
  store %struct.xgbe_channel* %9, %struct.xgbe_channel** %5, align 8
  %10 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %11 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %10, i32 0, i32 2
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %11, align 8
  store %struct.xgbe_prv_data* %12, %struct.xgbe_prv_data** %6, align 8
  %13 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %14 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %13, i32 0, i32 0
  %15 = call i64 @napi_schedule_prep(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %24 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %25 = call i32 @xgbe_disable_rx_tx_int(%struct.xgbe_prv_data* %23, %struct.xgbe_channel* %24)
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %28 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @disable_irq_nosync(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %33 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %32, i32 0, i32 0
  %34 = call i32 @__napi_schedule_irqoff(i32* %33)
  br label %35

35:                                               ; preds = %31, %2
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DMA_CH_SR, align 4
  %38 = load i32, i32* @TI, align 4
  %39 = call i32 @XGMAC_SET_BITS(i32 %36, i32 %37, i32 %38, i32 1)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DMA_CH_SR, align 4
  %42 = load i32, i32* @RI, align 4
  %43 = call i32 @XGMAC_SET_BITS(i32 %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %45 = load i32, i32* @DMA_CH_SR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @xgbe_disable_rx_tx_int(%struct.xgbe_prv_data*, %struct.xgbe_channel*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @__napi_schedule_irqoff(i32*) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
