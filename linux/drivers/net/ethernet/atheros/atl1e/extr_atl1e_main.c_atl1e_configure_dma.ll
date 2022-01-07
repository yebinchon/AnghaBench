; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { %struct.atl1e_hw }
%struct.atl1e_hw = type { i64, i64, i64, i64 }

@DMA_CTRL_RXCMB_EN = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_BURST_LEN_MASK = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@DMA_CTRL_DMAW_BURST_LEN_MASK = common dso_local global i32 0, align 4
@DMA_CTRL_DMAW_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_REQ_PRI = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_OUT_ORDER = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_DLY_CNT_MASK = common dso_local global i32 0, align 4
@DMA_CTRL_DMAR_DLY_CNT_SHIFT = common dso_local global i32 0, align 4
@DMA_CTRL_DMAW_DLY_CNT_MASK = common dso_local global i32 0, align 4
@DMA_CTRL_DMAW_DLY_CNT_SHIFT = common dso_local global i32 0, align 4
@REG_DMA_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_configure_dma(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %5 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %5, i32 0, i32 0
  store %struct.atl1e_hw* %6, %struct.atl1e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @DMA_CTRL_RXCMB_EN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %9 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @DMA_CTRL_DMAR_BURST_LEN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @DMA_CTRL_DMAR_BURST_LEN_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %19 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @DMA_CTRL_DMAW_BURST_LEN_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @DMA_CTRL_DMAW_BURST_LEN_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @DMA_CTRL_DMAR_REQ_PRI, align 4
  %29 = load i32, i32* @DMA_CTRL_DMAR_OUT_ORDER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %34 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @DMA_CTRL_DMAR_DLY_CNT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @DMA_CTRL_DMAR_DLY_CNT_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %44 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @DMA_CTRL_DMAW_DLY_CNT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @DMA_CTRL_DMAW_DLY_CNT_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %54 = load i32, i32* @REG_DMA_CTRL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
