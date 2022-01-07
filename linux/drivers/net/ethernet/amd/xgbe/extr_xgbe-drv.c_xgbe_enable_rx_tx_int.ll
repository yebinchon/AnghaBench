; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_enable_rx_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_enable_rx_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_channel*, i32)* }
%struct.xgbe_channel = type opaque
%struct.xgbe_channel.0 = type { i64, i64 }

@XGMAC_INT_DMA_CH_SR_TI_RI = common dso_local global i32 0, align 4
@XGMAC_INT_DMA_CH_SR_TI = common dso_local global i32 0, align 4
@XGMAC_INT_DMA_CH_SR_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_channel.0*)* @xgbe_enable_rx_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_rx_tx_int(%struct.xgbe_prv_data* %0, %struct.xgbe_channel.0* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel.0*, align 8
  %5 = alloca %struct.xgbe_hw_if*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_channel.0* %1, %struct.xgbe_channel.0** %4, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  store %struct.xgbe_hw_if* %8, %struct.xgbe_hw_if** %5, align 8
  %9 = load %struct.xgbe_channel.0*, %struct.xgbe_channel.0** %4, align 8
  %10 = getelementptr inbounds %struct.xgbe_channel.0, %struct.xgbe_channel.0* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.xgbe_channel.0*, %struct.xgbe_channel.0** %4, align 8
  %15 = getelementptr inbounds %struct.xgbe_channel.0, %struct.xgbe_channel.0* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @XGMAC_INT_DMA_CH_SR_TI_RI, align 4
  store i32 %19, i32* %6, align 4
  br label %37

20:                                               ; preds = %13, %2
  %21 = load %struct.xgbe_channel.0*, %struct.xgbe_channel.0** %4, align 8
  %22 = getelementptr inbounds %struct.xgbe_channel.0, %struct.xgbe_channel.0* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @XGMAC_INT_DMA_CH_SR_TI, align 4
  store i32 %26, i32* %6, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load %struct.xgbe_channel.0*, %struct.xgbe_channel.0** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_channel.0, %struct.xgbe_channel.0* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @XGMAC_INT_DMA_CH_SR_RI, align 4
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %38, i32 0, i32 0
  %40 = load i32 (%struct.xgbe_channel*, i32)*, i32 (%struct.xgbe_channel*, i32)** %39, align 8
  %41 = load %struct.xgbe_channel.0*, %struct.xgbe_channel.0** %4, align 8
  %42 = bitcast %struct.xgbe_channel.0* %41 to %struct.xgbe_channel*
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %40(%struct.xgbe_channel* %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
