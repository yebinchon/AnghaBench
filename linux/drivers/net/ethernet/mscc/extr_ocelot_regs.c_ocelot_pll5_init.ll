; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_regs.c_ocelot_pll5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_regs.c_ocelot_pll5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32* }

@HSIO = common dso_local global i64 0, align 8
@HSIO_PLL5G_CFG4 = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0 = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_ENA_BIAS = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_ENA_VCO_BUF = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_ENA_CP1 = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_DIV4 = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_ENA_CLKTREE = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG0_ENA_LANE = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG2 = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG2_EN_RESET_OVERRUN = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG2_ENA_AMPCTRL = common dso_local global i32 0, align 4
@HSIO_PLL5G_CFG2_PWD_AMPCTRL_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*)* @ocelot_pll5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_pll5_init(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot*, align 8
  store %struct.ocelot* %0, %struct.ocelot** %2, align 8
  %3 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %4 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @HSIO, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HSIO_PLL5G_CFG4, align 4
  %10 = call i32 @HSIO_PLL5G_CFG4_IB_CTRL(i32 30208)
  %11 = call i32 @HSIO_PLL5G_CFG4_IB_BIAS_CTRL(i32 8)
  %12 = or i32 %10, %11
  %13 = call i32 @regmap_write(i32 %8, i32 %9, i32 %12)
  %14 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %15 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @HSIO, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HSIO_PLL5G_CFG0, align 4
  %21 = call i32 @HSIO_PLL5G_CFG0_CORE_CLK_DIV(i32 17)
  %22 = call i32 @HSIO_PLL5G_CFG0_CPU_CLK_DIV(i32 2)
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HSIO_PLL5G_CFG0_ENA_BIAS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HSIO_PLL5G_CFG0_ENA_VCO_BUF, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HSIO_PLL5G_CFG0_ENA_CP1, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @HSIO_PLL5G_CFG0_SELCPI(i32 2)
  %31 = or i32 %29, %30
  %32 = call i32 @HSIO_PLL5G_CFG0_LOOP_BW_RES(i32 14)
  %33 = or i32 %31, %32
  %34 = call i32 @HSIO_PLL5G_CFG0_SELBGV820(i32 4)
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HSIO_PLL5G_CFG0_DIV4, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HSIO_PLL5G_CFG0_ENA_CLKTREE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HSIO_PLL5G_CFG0_ENA_LANE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @regmap_write(i32 %19, i32 %20, i32 %41)
  %43 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %44 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @HSIO, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HSIO_PLL5G_CFG2, align 4
  %50 = load i32, i32* @HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET, align 4
  %51 = load i32, i32* @HSIO_PLL5G_CFG2_EN_RESET_OVERRUN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @HSIO_PLL5G_CFG2_GAIN_TEST(i32 8)
  %54 = or i32 %52, %53
  %55 = load i32, i32* @HSIO_PLL5G_CFG2_ENA_AMPCTRL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @HSIO_PLL5G_CFG2_PWD_AMPCTRL_N, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @HSIO_PLL5G_CFG2_AMPC_SEL(i32 16)
  %60 = or i32 %58, %59
  %61 = call i32 @regmap_write(i32 %48, i32 %49, i32 %60)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG4_IB_CTRL(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG4_IB_BIAS_CTRL(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG0_CORE_CLK_DIV(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG0_CPU_CLK_DIV(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG0_SELCPI(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG0_LOOP_BW_RES(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG0_SELBGV820(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG2_GAIN_TEST(i32) #1

declare dso_local i32 @HSIO_PLL5G_CFG2_AMPC_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
