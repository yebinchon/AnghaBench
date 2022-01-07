; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i64, i64, i64* }

@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@BMU_STOP = common dso_local global i32 0, align 4
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i32 0, align 4
@RB_DIS_OP_MD = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@GMC_RST_SET = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_CNT = common dso_local global i32 0, align 4
@STAT_TX_TIMER_CNT = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_CNT = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_hw_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_hw_down(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %6 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %7 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %6, i32 0, i32 3
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  store %struct.sky2_hw* %8, %struct.sky2_hw** %3, align 8
  %9 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GMAC_CTRL, align 4
  %15 = call i32 @SK_REG(i32 %13, i32 %14)
  %16 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %17 = call i32 @sky2_write8(%struct.sky2_hw* %12, i32 %15, i32 %16)
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %19 = load i32*, i32** @txqaddr, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Q_CSR, align 4
  %25 = call i32 @Q_ADDR(i32 %23, i32 %24)
  %26 = load i32, i32* @BMU_STOP, align 4
  %27 = call i32 @sky2_write32(%struct.sky2_hw* %18, i32 %25, i32 %26)
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %29 = load i32*, i32** @txqaddr, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Q_CSR, align 4
  %35 = call i32 @Q_ADDR(i32 %33, i32 %34)
  %36 = call i32 @sky2_read32(%struct.sky2_hw* %28, i32 %35)
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %38 = load i32*, i32** @txqaddr, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RB_CTRL, align 4
  %44 = call i32 @RB_ADDR(i32 %42, i32 %43)
  %45 = load i32, i32* @RB_RST_SET, align 4
  %46 = load i32, i32* @RB_DIS_OP_MD, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sky2_write32(%struct.sky2_hw* %37, i32 %44, i32 %47)
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @GM_GP_CTRL, align 4
  %52 = call i32 @gma_read16(%struct.sky2_hw* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %54 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @GM_GP_CTRL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @gma_write16(%struct.sky2_hw* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @GPHY_CTRL, align 4
  %67 = call i32 @SK_REG(i32 %65, i32 %66)
  %68 = load i32, i32* @GPC_RST_SET, align 4
  %69 = call i32 @sky2_write8(%struct.sky2_hw* %64, i32 %67, i32 %68)
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %71 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %1
  %76 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %77 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %85 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %92 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @netif_running(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %90, %83, %80, %75, %1
  %99 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @GMAC_CTRL, align 4
  %102 = call i32 @SK_REG(i32 %100, i32 %101)
  %103 = load i32, i32* @GMC_RST_SET, align 4
  %104 = call i32 @sky2_write8(%struct.sky2_hw* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %109 = call i32 @SK_REG(i32 %107, i32 %108)
  %110 = load i32, i32* @GMF_RST_SET, align 4
  %111 = call i32 @sky2_write8(%struct.sky2_hw* %106, i32 %109, i32 %110)
  %112 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %113 = load i32, i32* @STAT_LEV_TIMER_CNT, align 4
  %114 = call i32 @sky2_write32(%struct.sky2_hw* %112, i32 %113, i32 0)
  %115 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %116 = load i32, i32* @STAT_TX_TIMER_CNT, align 4
  %117 = call i32 @sky2_write32(%struct.sky2_hw* %115, i32 %116, i32 0)
  %118 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %119 = load i32, i32* @STAT_ISR_TIMER_CNT, align 4
  %120 = call i32 @sky2_write32(%struct.sky2_hw* %118, i32 %119, i32 0)
  %121 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %122 = load i32, i32* @STAT_ISR_TIMER_CTRL, align 4
  %123 = call i32 @sky2_read8(%struct.sky2_hw* %121, i32 %122)
  %124 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %125 = call i32 @sky2_rx_stop(%struct.sky2_port* %124)
  %126 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %127 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %126, i32 0, i32 2
  %128 = call i32 @spin_lock_bh(i32* %127)
  %129 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @sky2_phy_power_down(%struct.sky2_hw* %129, i32 %130)
  %132 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %133 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %132, i32 0, i32 2
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @sky2_tx_reset(%struct.sky2_hw* %135, i32 %136)
  %138 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %139 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %140 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @sky2_tx_complete(%struct.sky2_port* %138, i32 %141)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i64 @netif_running(i64) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_rx_stop(%struct.sky2_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sky2_phy_power_down(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sky2_tx_reset(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_tx_complete(%struct.sky2_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
