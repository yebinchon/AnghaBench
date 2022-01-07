; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_xgmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_xgmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32, i32 }

@AXGMAC_CONFIG_1 = common dso_local global i32 0, align 4
@HSTPPEN = common dso_local global i32 0, align 4
@HSTLENCHK = common dso_local global i32 0, align 4
@XG_RSIF_CONFIG_REG_ADDR = common dso_local global i32 0, align 4
@CFG_RSIF_FPBUFF_TIMEOUT_EN = common dso_local global i32 0, align 4
@XG_RSIF_CLE_BUFF_THRESH = common dso_local global i32 0, align 4
@XG_RSIF_CONFIG1_REG_ADDR = common dso_local global i32 0, align 4
@XG_RSIF_PLC_CLE_BUFF_THRESH = common dso_local global i32 0, align 4
@XG_ENET_SPARE_CFG_REG_ADDR = common dso_local global i32 0, align 4
@XG_ENET_SPARE_CFG_REG_1_ADDR = common dso_local global i32 0, align 4
@XGENET_RX_DV_GATE_REG_0_ADDR = common dso_local global i32 0, align 4
@XG_CFG_BYPASS_ADDR = common dso_local global i32 0, align 4
@RESUME_TX = common dso_local global i32 0, align 4
@XGENET_CSR_MULTI_DPF0_ADDR = common dso_local global i32 0, align 4
@DEF_QUANTA = common dso_local global i32 0, align 4
@XGENE_ENET1 = common dso_local global i64 0, align 8
@XGENET_CSR_MULTI_DPF1_ADDR = common dso_local global i32 0, align 4
@NORM_PAUSE_OPCODE = common dso_local global i32 0, align 4
@XG_DEF_PAUSE_OFF_THRES = common dso_local global i32 0, align 4
@XG_DEF_PAUSE_THRES = common dso_local global i32 0, align 4
@XG_RXBUF_PAUSE_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_xgmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_xgmac_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %5 = call i32 @xgene_xgmac_reset(%struct.xgene_enet_pdata* %4)
  %6 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %7 = load i32, i32* @AXGMAC_CONFIG_1, align 4
  %8 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HSTPPEN, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @HSTLENCHK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %17 = load i32, i32* @AXGMAC_CONFIG_1, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %16, i32 %17, i32 %18)
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %21 = call i32 @xgene_xgmac_set_mac_addr(%struct.xgene_enet_pdata* %20)
  %22 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %23 = load i32, i32* @XG_RSIF_CONFIG_REG_ADDR, align 4
  %24 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %22, i32 %23, i32* %3)
  %25 = load i32, i32* @CFG_RSIF_FPBUFF_TIMEOUT_EN, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @XG_RSIF_CLE_BUFF_THRESH, align 4
  %29 = call i32 @RSIF_CLE_BUFF_THRESH_SET(i32* %3, i32 %28)
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %31 = load i32, i32* @XG_RSIF_CONFIG_REG_ADDR, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %30, i32 %31, i32 %32)
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %35 = load i32, i32* @XG_RSIF_CONFIG1_REG_ADDR, align 4
  %36 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %34, i32 %35, i32* %3)
  %37 = load i32, i32* @XG_RSIF_PLC_CLE_BUFF_THRESH, align 4
  %38 = call i32 @RSIF_PLC_CLE_BUFF_THRESH_SET(i32* %3, i32 %37)
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %40 = load i32, i32* @XG_RSIF_CONFIG1_REG_ADDR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %39, i32 %40, i32 %41)
  %43 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %44 = load i32, i32* @XG_ENET_SPARE_CFG_REG_ADDR, align 4
  %45 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %43, i32 %44, i32* %3)
  %46 = call i32 @BIT(i32 12)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %50 = load i32, i32* @XG_ENET_SPARE_CFG_REG_ADDR, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %49, i32 %50, i32 %51)
  %53 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %54 = load i32, i32* @XG_ENET_SPARE_CFG_REG_1_ADDR, align 4
  %55 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %53, i32 %54, i32 130)
  %56 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %57 = load i32, i32* @XGENET_RX_DV_GATE_REG_0_ADDR, align 4
  %58 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %56, i32 %57, i32 0)
  %59 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %60 = load i32, i32* @XG_CFG_BYPASS_ADDR, align 4
  %61 = load i32, i32* @RESUME_TX, align 4
  %62 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %59, i32 %60, i32 %61)
  %63 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %64 = load i32, i32* @XGENET_CSR_MULTI_DPF0_ADDR, align 4
  %65 = call i32 @xgene_enet_rd_axg_csr(%struct.xgene_enet_pdata* %63, i32 %64, i32* %3)
  %66 = load i32, i32* @DEF_QUANTA, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 65535
  %70 = or i32 %67, %69
  store i32 %70, i32* %3, align 4
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %72 = load i32, i32* @XGENET_CSR_MULTI_DPF0_ADDR, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @xgene_enet_wr_axg_csr(%struct.xgene_enet_pdata* %71, i32 %72, i32 %73)
  %75 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %76 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XGENE_ENET1, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %1
  %81 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %82 = load i32, i32* @XGENET_CSR_MULTI_DPF1_ADDR, align 4
  %83 = call i32 @xgene_enet_rd_axg_csr(%struct.xgene_enet_pdata* %81, i32 %82, i32* %3)
  %84 = load i32, i32* @NORM_PAUSE_OPCODE, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 65535
  %88 = or i32 %85, %87
  store i32 %88, i32* %3, align 4
  %89 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %90 = load i32, i32* @XGENET_CSR_MULTI_DPF1_ADDR, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @xgene_enet_wr_axg_csr(%struct.xgene_enet_pdata* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %80, %1
  %94 = load i32, i32* @XG_DEF_PAUSE_OFF_THRES, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* @XG_DEF_PAUSE_THRES, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %3, align 4
  %98 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %99 = load i32, i32* @XG_RXBUF_PAUSE_THRESH, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %98, i32 %99, i32 %100)
  %102 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %103 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %104 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @xgene_xgmac_flowctl_tx(%struct.xgene_enet_pdata* %102, i32 %105)
  %107 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %108 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %109 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @xgene_xgmac_flowctl_rx(%struct.xgene_enet_pdata* %107, i32 %110)
  ret void
}

declare dso_local i32 @xgene_xgmac_reset(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_xgmac_set_mac_addr(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @RSIF_CLE_BUFF_THRESH_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @RSIF_PLC_CLE_BUFF_THRESH_SET(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xgene_enet_rd_axg_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @xgene_enet_wr_axg_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_xgmac_flowctl_tx(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_xgmac_flowctl_rx(%struct.xgene_enet_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
