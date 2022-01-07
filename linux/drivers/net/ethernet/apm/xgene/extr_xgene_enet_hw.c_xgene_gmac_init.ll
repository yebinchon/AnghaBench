; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, i32 }

@MII_MGMT_CONFIG_ADDR = common dso_local global i32 0, align 4
@RSIF_CONFIG_REG_ADDR = common dso_local global i32 0, align 4
@CFG_RSIF_FPBUFF_TIMEOUT_EN = common dso_local global i32 0, align 4
@RSIF_RAM_DBG_REG0_ADDR = common dso_local global i32 0, align 4
@CSR_MULTI_DPF0_ADDR = common dso_local global i32 0, align 4
@DEF_QUANTA = common dso_local global i32 0, align 4
@RXBUF_PAUSE_THRESH = common dso_local global i32 0, align 4
@DEF_PAUSE_THRES = common dso_local global i32 0, align 4
@RXBUF_PAUSE_OFF_THRESH = common dso_local global i32 0, align 4
@DEF_PAUSE_OFF_THRES = common dso_local global i32 0, align 4
@CFG_LINK_AGGR_RESUME_0_ADDR = common dso_local global i32 0, align 4
@TX_PORT0 = common dso_local global i32 0, align 4
@RX_DV_GATE_REG_0_ADDR = common dso_local global i32 0, align 4
@TX_DV_GATE_EN0 = common dso_local global i32 0, align 4
@RX_DV_GATE_EN0 = common dso_local global i32 0, align 4
@RESUME_RX0 = common dso_local global i32 0, align 4
@CFG_BYPASS_ADDR = common dso_local global i32 0, align 4
@RESUME_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_gmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_gmac_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %10 = call i32 @xgene_gmac_reset(%struct.xgene_enet_pdata* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %13 = call i32 @xgene_gmac_set_speed(%struct.xgene_enet_pdata* %12)
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = call i32 @xgene_gmac_set_mac_addr(%struct.xgene_enet_pdata* %14)
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %17 = load i32, i32* @MII_MGMT_CONFIG_ADDR, align 4
  %18 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = call i32 @MGMT_CLOCK_SEL_SET(i32* %3, i32 7)
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %21 = load i32, i32* @MII_MGMT_CONFIG_ADDR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %20, i32 %21, i32 %22)
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %25 = load i32, i32* @RSIF_CONFIG_REG_ADDR, align 4
  %26 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %24, i32 %25, i32* %3)
  %27 = load i32, i32* @CFG_RSIF_FPBUFF_TIMEOUT_EN, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %31 = load i32, i32* @RSIF_CONFIG_REG_ADDR, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %30, i32 %31, i32 %32)
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %35 = load i32, i32* @RSIF_RAM_DBG_REG0_ADDR, align 4
  %36 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %34, i32 %35, i32 0)
  %37 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %38 = load i32, i32* @CSR_MULTI_DPF0_ADDR, align 4
  %39 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %37, i32 %38, i32* %3)
  %40 = load i32, i32* @DEF_QUANTA, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 65535
  %44 = or i32 %41, %43
  store i32 %44, i32* %3, align 4
  %45 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %46 = load i32, i32* @CSR_MULTI_DPF0_ADDR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %45, i32 %46, i32 %47)
  %49 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %50 = load i32, i32* @RXBUF_PAUSE_THRESH, align 4
  %51 = load i32, i32* @DEF_PAUSE_THRES, align 4
  %52 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %49, i32 %50, i32 %51)
  %53 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %54 = load i32, i32* @RXBUF_PAUSE_OFF_THRESH, align 4
  %55 = load i32, i32* @DEF_PAUSE_OFF_THRES, align 4
  %56 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %53, i32 %54, i32 %55)
  %57 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %58 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %59 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @xgene_gmac_flowctl_tx(%struct.xgene_enet_pdata* %57, i32 %60)
  %62 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %63 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %64 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xgene_gmac_flowctl_rx(%struct.xgene_enet_pdata* %62, i32 %65)
  %67 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %68 = load i32, i32* @CFG_LINK_AGGR_RESUME_0_ADDR, align 4
  %69 = load i32, i32* @TX_PORT0, align 4
  %70 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %67, i32 %68, i32 %69)
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %72 = load i32, i32* @RX_DV_GATE_REG_0_ADDR, align 4
  %73 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %71, i32 %72, i32* %3)
  %74 = load i32, i32* @TX_DV_GATE_EN0, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @RX_DV_GATE_EN0, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @RESUME_RX0, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %86 = load i32, i32* @RX_DV_GATE_REG_0_ADDR, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %85, i32 %86, i32 %87)
  %89 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %90 = load i32, i32* @CFG_BYPASS_ADDR, align 4
  %91 = load i32, i32* @RESUME_TX, align 4
  %92 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @xgene_gmac_reset(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_gmac_set_speed(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_gmac_set_mac_addr(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @MGMT_CLOCK_SEL_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_gmac_flowctl_tx(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_gmac_flowctl_rx(%struct.xgene_enet_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
