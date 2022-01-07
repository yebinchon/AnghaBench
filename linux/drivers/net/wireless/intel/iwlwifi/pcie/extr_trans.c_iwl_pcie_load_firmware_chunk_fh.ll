; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk_fh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@FH_SRVC_CHNL = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE = common dso_local global i32 0, align 4
@FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK = common dso_local global i32 0, align 4
@FH_MEM_TFDIB_REG1_ADDR_BITSHIFT = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32, i32, i32)* @iwl_pcie_load_firmware_chunk_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_load_firmware_chunk_fh(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %10 = load i32, i32* @FH_SRVC_CHNL, align 4
  %11 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %10)
  %12 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE, align 4
  %13 = call i32 @iwl_write32(%struct.iwl_trans* %9, i32 %11, i32 %12)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %15 = load i32, i32* @FH_SRVC_CHNL, align 4
  %16 = call i32 @FH_SRVC_CHNL_SRAM_ADDR_REG(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @iwl_write32(%struct.iwl_trans* %14, i32 %16, i32 %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %20 = load i32, i32* @FH_SRVC_CHNL, align 4
  %21 = call i32 @FH_TFDIB_CTRL0_REG(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @iwl_write32(%struct.iwl_trans* %19, i32 %21, i32 %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %27 = load i32, i32* @FH_SRVC_CHNL, align 4
  %28 = call i32 @FH_TFDIB_CTRL1_REG(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @iwl_get_dma_hi_addr(i32 %29)
  %31 = load i32, i32* @FH_MEM_TFDIB_REG1_ADDR_BITSHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @iwl_write32(%struct.iwl_trans* %26, i32 %28, i32 %34)
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %37 = load i32, i32* @FH_SRVC_CHNL, align 4
  %38 = call i32 @FH_TCSR_CHNL_TX_BUF_STS_REG(i32 %37)
  %39 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @iwl_write32(%struct.iwl_trans* %36, i32 %38, i32 %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %48 = load i32, i32* @FH_SRVC_CHNL, align 4
  %49 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %48)
  %50 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 4
  %51 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @iwl_write32(%struct.iwl_trans* %47, i32 %49, i32 %54)
  ret void
}

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @FH_SRVC_CHNL_SRAM_ADDR_REG(i32) #1

declare dso_local i32 @FH_TFDIB_CTRL0_REG(i32) #1

declare dso_local i32 @FH_TFDIB_CTRL1_REG(i32) #1

declare dso_local i32 @iwl_get_dma_hi_addr(i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_BUF_STS_REG(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
