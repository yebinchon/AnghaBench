; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_enable_rx_tx_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_enable_rx_tx_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, %struct.xlgmac_channel*, %struct.xlgmac_hw_ops }
%struct.xlgmac_channel = type { i64, i64 }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_channel.0*, i32)* }
%struct.xlgmac_channel.0 = type opaque

@XLGMAC_INT_DMA_CH_SR_TI_RI = common dso_local global i32 0, align 4
@XLGMAC_INT_DMA_CH_SR_TI = common dso_local global i32 0, align 4
@XLGMAC_INT_DMA_CH_SR_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_enable_rx_tx_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_enable_rx_tx_ints(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_hw_ops*, align 8
  %4 = alloca %struct.xlgmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 2
  store %struct.xlgmac_hw_ops* %8, %struct.xlgmac_hw_ops** %3, align 8
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 1
  %11 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %10, align 8
  store %struct.xlgmac_channel* %11, %struct.xlgmac_channel** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %20 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %25 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @XLGMAC_INT_DMA_CH_SR_TI_RI, align 4
  store i32 %29, i32* %5, align 4
  br label %47

30:                                               ; preds = %23, %18
  %31 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %32 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @XLGMAC_INT_DMA_CH_SR_TI, align 4
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %39 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @XLGMAC_INT_DMA_CH_SR_RI, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %3, align 8
  %49 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.xlgmac_channel.0*, i32)*, i32 (%struct.xlgmac_channel.0*, i32)** %49, align 8
  %51 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %52 = bitcast %struct.xlgmac_channel* %51 to %struct.xlgmac_channel.0*
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %50(%struct.xlgmac_channel.0* %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %59 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %58, i32 1
  store %struct.xlgmac_channel* %59, %struct.xlgmac_channel** %4, align 8
  br label %12

60:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
