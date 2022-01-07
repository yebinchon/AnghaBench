; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@GM_MC_ADDR_H1 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H2 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H3 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H4 = common dso_local global i32 0, align 4
@GM_RX_CTRL = common dso_local global i32 0, align 4
@GM_RXCR_UCF_ENA = common dso_local global i32 0, align 4
@GM_RXCR_MCF_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @yukon_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_reset(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %8 = call i32 @gm_phy_write(%struct.skge_hw* %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GM_MC_ADDR_H1, align 4
  %12 = call i32 @gma_write16(%struct.skge_hw* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GM_MC_ADDR_H2, align 4
  %16 = call i32 @gma_write16(%struct.skge_hw* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GM_MC_ADDR_H3, align 4
  %20 = call i32 @gma_write16(%struct.skge_hw* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GM_MC_ADDR_H4, align 4
  %24 = call i32 @gma_write16(%struct.skge_hw* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GM_RX_CTRL, align 4
  %28 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GM_RX_CTRL, align 4
  %31 = call i32 @gma_read16(%struct.skge_hw* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @gma_write16(%struct.skge_hw* %25, i32 %26, i32 %27, i32 %35)
  ret void
}

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
