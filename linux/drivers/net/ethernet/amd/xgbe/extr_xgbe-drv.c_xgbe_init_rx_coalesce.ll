; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_init_rx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_init_rx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*, i32)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"-->xgbe_init_rx_coalesce\0A\00", align 1
@XGMAC_INIT_DMA_RX_USECS = common dso_local global i32 0, align 4
@XGMAC_INIT_DMA_RX_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"<--xgbe_init_rx_coalesce\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_init_rx_coalesce(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_hw_if*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 3
  store %struct.xgbe_hw_if* %5, %struct.xgbe_hw_if** %3, align 8
  %6 = call i32 @DBGPR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %7, i32 0, i32 1
  %9 = load i32 (%struct.xgbe_prv_data.1*, i32)*, i32 (%struct.xgbe_prv_data.1*, i32)** %8, align 8
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = bitcast %struct.xgbe_prv_data* %10 to %struct.xgbe_prv_data.1*
  %12 = load i32, i32* @XGMAC_INIT_DMA_RX_USECS, align 4
  %13 = call i32 %9(%struct.xgbe_prv_data.1* %11, i32 %12)
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @XGMAC_INIT_DMA_RX_USECS, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @XGMAC_INIT_DMA_RX_FRAMES, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %22, i32 0, i32 0
  %24 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %23, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = bitcast %struct.xgbe_prv_data* %25 to %struct.xgbe_prv_data.0*
  %27 = call i32 %24(%struct.xgbe_prv_data.0* %26)
  %28 = call i32 @DBGPR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
