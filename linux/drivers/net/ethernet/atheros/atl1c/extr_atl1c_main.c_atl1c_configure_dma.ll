; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_hw }
%struct.atl1c_hw = type { i32 }

@DMA_CTRL_RORDER_MODE = common dso_local global i32 0, align 4
@DMA_CTRL_RORDER_MODE_OUT = common dso_local global i32 0, align 4
@DMA_CTRL_RREQ_PRI_DATA = common dso_local global i32 0, align 4
@DMA_CTRL_RREQ_BLEN = common dso_local global i32 0, align 4
@DMA_CTRL_WDLY_CNT = common dso_local global i32 0, align 4
@DMA_CTRL_WDLY_CNT_DEF = common dso_local global i32 0, align 4
@DMA_CTRL_RDLY_CNT = common dso_local global i32 0, align 4
@DMA_CTRL_RDLY_CNT_DEF = common dso_local global i32 0, align 4
@REG_DMA_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_configure_dma(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %5 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %5, i32 0, i32 0
  store %struct.atl1c_hw* %6, %struct.atl1c_hw** %3, align 8
  %7 = load i32, i32* @DMA_CTRL_RORDER_MODE, align 4
  %8 = load i32, i32* @DMA_CTRL_RORDER_MODE_OUT, align 4
  %9 = call i32 @FIELDX(i32 %7, i32 %8)
  %10 = load i32, i32* @DMA_CTRL_RREQ_PRI_DATA, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DMA_CTRL_RREQ_BLEN, align 4
  %13 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %14 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FIELDX(i32 %12, i32 %15)
  %17 = or i32 %11, %16
  %18 = load i32, i32* @DMA_CTRL_WDLY_CNT, align 4
  %19 = load i32, i32* @DMA_CTRL_WDLY_CNT_DEF, align 4
  %20 = call i32 @FIELDX(i32 %18, i32 %19)
  %21 = or i32 %17, %20
  %22 = load i32, i32* @DMA_CTRL_RDLY_CNT, align 4
  %23 = load i32, i32* @DMA_CTRL_RDLY_CNT_DEF, align 4
  %24 = call i32 @FIELDX(i32 %22, i32 %23)
  %25 = or i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %27 = load i32, i32* @REG_DMA_CTRL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @FIELDX(i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
