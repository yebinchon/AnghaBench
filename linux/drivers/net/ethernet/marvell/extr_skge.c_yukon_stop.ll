; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @yukon_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_stop(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %5 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %6 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %5, i32 0, i32 1
  %7 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  store %struct.skge_hw* %7, %struct.skge_hw** %3, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %14 = call i32 @SK_REG(i32 %12, i32 %13)
  %15 = call i32 @skge_write8(%struct.skge_hw* %11, i32 %14, i32 0)
  %16 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @yukon_reset(%struct.skge_hw* %16, i32 %17)
  %19 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GM_GP_CTRL, align 4
  %22 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GM_GP_CTRL, align 4
  %25 = call i32 @gma_read16(%struct.skge_hw* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %27 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = call i32 @gma_write16(%struct.skge_hw* %19, i32 %20, i32 %21, i32 %30)
  %32 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GM_GP_CTRL, align 4
  %35 = call i32 @gma_read16(%struct.skge_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @yukon_suspend(%struct.skge_hw* %36, i32 %37)
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @GPHY_CTRL, align 4
  %42 = call i32 @SK_REG(i32 %40, i32 %41)
  %43 = load i32, i32* @GPC_RST_SET, align 4
  %44 = call i32 @skge_write8(%struct.skge_hw* %39, i32 %42, i32 %43)
  %45 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @GMAC_CTRL, align 4
  %48 = call i32 @SK_REG(i32 %46, i32 %47)
  %49 = load i32, i32* @GMC_RST_SET, align 4
  %50 = call i32 @skge_write8(%struct.skge_hw* %45, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @yukon_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @yukon_suspend(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
