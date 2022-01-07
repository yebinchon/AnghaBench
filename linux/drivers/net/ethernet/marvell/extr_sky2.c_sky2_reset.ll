; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, i64, i32, i32, i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i32 }

@Y2_HWE_ALL_MASK = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@CPU_WDOG = common dso_local global i64 0, align 8
@HCU_CCSR = common dso_local global i64 0, align 8
@HCU_CCSR_AHB_RST = common dso_local global i32 0, align 4
@HCU_CCSR_CPU_RST_MODE = common dso_local global i32 0, align 4
@HCU_CCSR_UC_STATE_MSK = common dso_local global i32 0, align 4
@HCU_CCSR_CPU_CLK_DIVIDE_MSK = common dso_local global i32 0, align 4
@B28_Y2_ASF_STAT_CMD = common dso_local global i64 0, align 8
@Y2_ASF_RESET = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i64 0, align 8
@Y2_ASF_DISABLE = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@CS_RST_CLR = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i64 0, align 8
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i64 0, align 8
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@CS_MRST_CLR = common dso_local global i32 0, align 4
@Y2_CFG_AER = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@B0_HWE_ISRC = common dso_local global i32 0, align 4
@Y2_IS_PCI_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ignoring stuck error report bit\0A\00", align 1
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_SET = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_BYP_MACSECRX_ON = common dso_local global i32 0, align 4
@GMC_BYP_MACSECTX_ON = common dso_local global i32 0, align 4
@GMC_BYP_RETR_ON = common dso_local global i32 0, align 4
@CHIP_REV_YU_SU_B0 = common dso_local global i64 0, align 8
@PCI_DEV_REG3 = common dso_local global i32 0, align 4
@P_CLK_MACSEC_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_OPT = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_PRM = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_OP_2 = common dso_local global i64 0, align 8
@Y2_PEX_PHY_DATA = common dso_local global i64 0, align 8
@PEX_DB_ACCESS = common dso_local global i32 0, align 4
@PSM_CONFIG_REG4_TIMER_PHY_LINK_DETECT_BASE = common dso_local global i32 0, align 4
@PSM_CONFIG_REG4_RST_PHY_LINK_DETECT = common dso_local global i32 0, align 4
@PSM_CONFIG_REG4 = common dso_local global i64 0, align 8
@PSM_CONFIG_REG3 = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_ASPMC = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@CHIP_REV_YU_PRM_A0 = common dso_local global i64 0, align 8
@GPHY_CTRL = common dso_local global i64 0, align 8
@GPC_INTPOL = common dso_local global i32 0, align 4
@Y2_CFG_SPC = common dso_local global i64 0, align 8
@PCI_LDO_CTRL = common dso_local global i64 0, align 8
@PHY_M_UNDOC1 = common dso_local global i32 0, align 4
@B2_I2C_IRQ = common dso_local global i64 0, align 8
@B2_TI_CTRL = common dso_local global i64 0, align 8
@TIM_STOP = common dso_local global i32 0, align 4
@TIM_CLR_IRQ = common dso_local global i32 0, align 4
@B28_DPT_CTRL = common dso_local global i64 0, align 8
@DPT_STOP = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i64 0, align 8
@GMT_ST_STOP = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_ENA_ARB = common dso_local global i32 0, align 4
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_RST_CLR = common dso_local global i32 0, align 4
@B3_RI_WTO_R1 = common dso_local global i32 0, align 4
@SK_RI_TO_53 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_RTO_R1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA1 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS1 = common dso_local global i32 0, align 4
@B3_RI_WTO_R2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_WTO_XS2 = common dso_local global i32 0, align 4
@B3_RI_RTO_R2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XA2 = common dso_local global i32 0, align 4
@B3_RI_RTO_XS2 = common dso_local global i32 0, align 4
@B0_HWE_IMSK = common dso_local global i64 0, align 8
@STAT_CTRL = common dso_local global i64 0, align 8
@SC_STAT_RST_SET = common dso_local global i32 0, align 4
@SC_STAT_RST_CLR = common dso_local global i32 0, align 4
@STAT_LIST_ADDR_LO = common dso_local global i64 0, align 8
@STAT_LIST_ADDR_HI = common dso_local global i64 0, align 8
@STAT_LAST_IDX = common dso_local global i64 0, align 8
@STAT_TX_IDX_TH = common dso_local global i64 0, align 8
@STAT_FIFO_WM = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@STAT_FIFO_ISR_WM = common dso_local global i64 0, align 8
@STAT_TX_TIMER_INI = common dso_local global i64 0, align 8
@STAT_ISR_TIMER_INI = common dso_local global i64 0, align 8
@STAT_LEV_TIMER_INI = common dso_local global i64 0, align 8
@SC_STAT_OP_ON = common dso_local global i32 0, align 4
@STAT_TX_TIMER_CTRL = common dso_local global i64 0, align 8
@TIM_START = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_CTRL = common dso_local global i64 0, align 8
@STAT_ISR_TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_reset(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* @Y2_HWE_ALL_MASK, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %13 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17, %1
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %25 = load i64, i64* @CPU_WDOG, align 8
  %26 = call i32 @sky2_write32(%struct.sky2_hw* %24, i64 %25, i32 0)
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %28 = load i64, i64* @HCU_CCSR, align 8
  %29 = call i32 @sky2_read16(%struct.sky2_hw* %27, i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @HCU_CCSR_AHB_RST, align 4
  %31 = load i32, i32* @HCU_CCSR_CPU_RST_MODE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HCU_CCSR_UC_STATE_MSK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @HCU_CCSR_CPU_CLK_DIVIDE_MSK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %43 = load i64, i64* @HCU_CCSR, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @sky2_write16(%struct.sky2_hw* %42, i64 %43, i32 %44)
  %46 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %47 = load i64, i64* @CPU_WDOG, align 8
  %48 = call i32 @sky2_write32(%struct.sky2_hw* %46, i64 %47, i32 0)
  br label %54

49:                                               ; preds = %17
  %50 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %51 = load i64, i64* @B28_Y2_ASF_STAT_CMD, align 8
  %52 = load i32, i32* @Y2_ASF_RESET, align 4
  %53 = call i32 @sky2_write8(%struct.sky2_hw* %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %23
  %55 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %56 = load i64, i64* @B0_CTST, align 8
  %57 = load i32, i32* @Y2_ASF_DISABLE, align 4
  %58 = call i32 @sky2_write16(%struct.sky2_hw* %55, i64 %56, i32 %57)
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %60 = load i64, i64* @B0_CTST, align 8
  %61 = load i32, i32* @CS_RST_SET, align 4
  %62 = call i32 @sky2_write8(%struct.sky2_hw* %59, i64 %60, i32 %61)
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %64 = load i64, i64* @B0_CTST, align 8
  %65 = load i32, i32* @CS_RST_CLR, align 4
  %66 = call i32 @sky2_write8(%struct.sky2_hw* %63, i64 %64, i32 %65)
  %67 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %68 = load i64, i64* @B2_TST_CTRL1, align 8
  %69 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %70 = call i32 @sky2_write8(%struct.sky2_hw* %67, i64 %68, i32 %69)
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %72 = load i64, i64* @PCI_STATUS, align 8
  %73 = call i32 @sky2_pci_read16(%struct.sky2_hw* %71, i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %78 = load i64, i64* @PCI_STATUS, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @sky2_pci_write16(%struct.sky2_hw* %77, i64 %78, i32 %79)
  %81 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %82 = load i64, i64* @B0_CTST, align 8
  %83 = load i32, i32* @CS_MRST_CLR, align 4
  %84 = call i32 @sky2_write8(%struct.sky2_hw* %81, i64 %82, i32 %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = call i64 @pci_is_pcie(%struct.pci_dev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %54
  %89 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %90 = load i64, i64* @Y2_CFG_AER, align 8
  %91 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @sky2_write32(%struct.sky2_hw* %89, i64 %92, i32 -1)
  %94 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %95 = load i32, i32* @B0_HWE_ISRC, align 4
  %96 = call i32 @sky2_read32(%struct.sky2_hw* %94, i32 %95)
  %97 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 1
  %103 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %108

104:                                              ; preds = %88
  %105 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %54
  %110 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %111 = call i32 @sky2_power_on(%struct.sky2_hw* %110)
  %112 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %113 = load i64, i64* @B2_TST_CTRL1, align 8
  %114 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %115 = call i32 @sky2_write8(%struct.sky2_hw* %112, i64 %113, i32 %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %158, %109
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %119 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %116
  %123 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %126 = call i64 @SK_REG(i32 %124, i32 %125)
  %127 = load i32, i32* @GMLC_RST_SET, align 4
  %128 = call i32 @sky2_write8(%struct.sky2_hw* %123, i64 %126, i32 %127)
  %129 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %132 = call i64 @SK_REG(i32 %130, i32 %131)
  %133 = load i32, i32* @GMLC_RST_CLR, align 4
  %134 = call i32 @sky2_write8(%struct.sky2_hw* %129, i64 %132, i32 %133)
  %135 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %136 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %122
  %141 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %142 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140, %122
  %147 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @GMAC_CTRL, align 4
  %150 = call i64 @SK_REG(i32 %148, i32 %149)
  %151 = load i32, i32* @GMC_BYP_MACSECRX_ON, align 4
  %152 = load i32, i32* @GMC_BYP_MACSECTX_ON, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @GMC_BYP_RETR_ON, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @sky2_write16(%struct.sky2_hw* %147, i64 %150, i32 %155)
  br label %157

157:                                              ; preds = %146, %140
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %116

161:                                              ; preds = %116
  %162 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %163 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %161
  %168 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %169 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CHIP_REV_YU_SU_B0, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %175 = load i32, i32* @PCI_DEV_REG3, align 4
  %176 = load i32, i32* @P_CLK_MACSEC_DIS, align 4
  %177 = call i32 @sky2_pci_write32(%struct.sky2_hw* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %167, %161
  %179 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %180 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @CHIP_ID_YUKON_OPT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %196, label %184

184:                                              ; preds = %178
  %185 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %186 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CHIP_ID_YUKON_PRM, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %192 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CHIP_ID_YUKON_OP_2, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %297

196:                                              ; preds = %190, %184, %178
  %197 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %198 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CHIP_ID_YUKON_OPT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %196
  %203 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %204 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %202
  %208 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %209 = load i64, i64* @Y2_PEX_PHY_DATA, align 8
  %210 = call i32 @sky2_write32(%struct.sky2_hw* %208, i64 %209, i32 8388736)
  store i32 10, i32* %7, align 4
  %211 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %212 = load i64, i64* @Y2_PEX_PHY_DATA, align 8
  %213 = load i32, i32* @PEX_DB_ACCESS, align 4
  %214 = sext i32 %213 to i64
  %215 = or i64 %214, 524288
  %216 = trunc i64 %215 to i32
  %217 = call i32 @sky2_write32(%struct.sky2_hw* %211, i64 %212, i32 %216)
  br label %219

218:                                              ; preds = %202, %196
  store i32 3, i32* %7, align 4
  br label %219

219:                                              ; preds = %218, %207
  %220 = load i32, i32* @PSM_CONFIG_REG4_TIMER_PHY_LINK_DETECT_BASE, align 4
  %221 = load i32, i32* %7, align 4
  %222 = shl i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* @PSM_CONFIG_REG4_RST_PHY_LINK_DETECT, align 4
  %224 = load i32, i32* %7, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %7, align 4
  %226 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %227 = load i64, i64* @B2_TST_CTRL1, align 8
  %228 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %229 = call i32 @sky2_write8(%struct.sky2_hw* %226, i64 %227, i32 %228)
  %230 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %231 = load i64, i64* @PSM_CONFIG_REG4, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @sky2_pci_write16(%struct.sky2_hw* %230, i64 %231, i32 %232)
  %234 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %235 = load i64, i64* @PSM_CONFIG_REG3, align 8
  %236 = call i32 @sky2_pci_read16(%struct.sky2_hw* %234, i64 %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %219
  %242 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %243 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %244 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %247 = add nsw i64 %245, %246
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @sky2_pci_write16(%struct.sky2_hw* %242, i64 %247, i32 %248)
  br label %250

250:                                              ; preds = %241, %219
  %251 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %252 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @CHIP_ID_YUKON_PRM, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %285

256:                                              ; preds = %250
  %257 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %258 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CHIP_REV_YU_PRM_A0, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %285

262:                                              ; preds = %256
  %263 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %264 = load i64, i64* @GPHY_CTRL, align 8
  %265 = call i32 @sky2_read16(%struct.sky2_hw* %263, i64 %264)
  store i32 %265, i32* %7, align 4
  %266 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %267 = load i64, i64* @GPHY_CTRL, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @GPC_INTPOL, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @sky2_write16(%struct.sky2_hw* %266, i64 %267, i32 %270)
  %272 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %273 = load i64, i64* @Y2_CFG_SPC, align 8
  %274 = load i64, i64* @PCI_LDO_CTRL, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @sky2_read16(%struct.sky2_hw* %272, i64 %275)
  store i32 %276, i32* %7, align 4
  %277 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %278 = load i64, i64* @Y2_CFG_SPC, align 8
  %279 = load i64, i64* @PCI_LDO_CTRL, align 8
  %280 = add nsw i64 %278, %279
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @PHY_M_UNDOC1, align 4
  %283 = or i32 %281, %282
  %284 = call i32 @sky2_write16(%struct.sky2_hw* %277, i64 %280, i32 %283)
  br label %285

285:                                              ; preds = %262, %256, %250
  %286 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %287 = load i64, i64* @B2_TST_CTRL1, align 8
  %288 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %289 = call i32 @sky2_write8(%struct.sky2_hw* %286, i64 %287, i32 %288)
  %290 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %291 = load i64, i64* @Y2_PEX_PHY_DATA, align 8
  %292 = load i32, i32* @PEX_DB_ACCESS, align 4
  %293 = sext i32 %292 to i64
  %294 = or i64 %293, 524288
  %295 = trunc i64 %294 to i32
  %296 = call i32 @sky2_write32(%struct.sky2_hw* %290, i64 %291, i32 %295)
  br label %297

297:                                              ; preds = %285, %190
  %298 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %299 = load i64, i64* @B2_I2C_IRQ, align 8
  %300 = call i32 @sky2_write32(%struct.sky2_hw* %298, i64 %299, i32 1)
  %301 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %302 = load i64, i64* @B2_TI_CTRL, align 8
  %303 = load i32, i32* @TIM_STOP, align 4
  %304 = call i32 @sky2_write8(%struct.sky2_hw* %301, i64 %302, i32 %303)
  %305 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %306 = load i64, i64* @B2_TI_CTRL, align 8
  %307 = load i32, i32* @TIM_CLR_IRQ, align 4
  %308 = call i32 @sky2_write8(%struct.sky2_hw* %305, i64 %306, i32 %307)
  %309 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %310 = load i64, i64* @B28_DPT_CTRL, align 8
  %311 = load i32, i32* @DPT_STOP, align 4
  %312 = call i32 @sky2_write32(%struct.sky2_hw* %309, i64 %310, i32 %311)
  %313 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %314 = load i64, i64* @GMAC_TI_ST_CTRL, align 8
  %315 = load i32, i32* @GMT_ST_STOP, align 4
  %316 = call i32 @sky2_write8(%struct.sky2_hw* %313, i64 %314, i32 %315)
  %317 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %318 = load i64, i64* @GMAC_TI_ST_CTRL, align 8
  %319 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %320 = call i32 @sky2_write8(%struct.sky2_hw* %317, i64 %318, i32 %319)
  store i32 0, i32* %5, align 4
  br label %321

321:                                              ; preds = %334, %297
  %322 = load i32, i32* %5, align 4
  %323 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %324 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %329 = load i32, i32* %5, align 4
  %330 = load i32, i32* @TXA_CTRL, align 4
  %331 = call i64 @SK_REG(i32 %329, i32 %330)
  %332 = load i32, i32* @TXA_ENA_ARB, align 4
  %333 = call i32 @sky2_write8(%struct.sky2_hw* %328, i64 %331, i32 %332)
  br label %334

334:                                              ; preds = %327
  %335 = load i32, i32* %5, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %5, align 4
  br label %321

337:                                              ; preds = %321
  store i32 0, i32* %5, align 4
  br label %338

338:                                              ; preds = %423, %337
  %339 = load i32, i32* %5, align 4
  %340 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %341 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %426

344:                                              ; preds = %338
  %345 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %346 = load i32, i32* %5, align 4
  %347 = load i32, i32* @B3_RI_CTRL, align 4
  %348 = call i64 @RAM_BUFFER(i32 %346, i32 %347)
  %349 = load i32, i32* @RI_RST_CLR, align 4
  %350 = call i32 @sky2_write8(%struct.sky2_hw* %345, i64 %348, i32 %349)
  %351 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* @B3_RI_WTO_R1, align 4
  %354 = call i64 @RAM_BUFFER(i32 %352, i32 %353)
  %355 = load i32, i32* @SK_RI_TO_53, align 4
  %356 = call i32 @sky2_write8(%struct.sky2_hw* %351, i64 %354, i32 %355)
  %357 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %358 = load i32, i32* %5, align 4
  %359 = load i32, i32* @B3_RI_WTO_XA1, align 4
  %360 = call i64 @RAM_BUFFER(i32 %358, i32 %359)
  %361 = load i32, i32* @SK_RI_TO_53, align 4
  %362 = call i32 @sky2_write8(%struct.sky2_hw* %357, i64 %360, i32 %361)
  %363 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %364 = load i32, i32* %5, align 4
  %365 = load i32, i32* @B3_RI_WTO_XS1, align 4
  %366 = call i64 @RAM_BUFFER(i32 %364, i32 %365)
  %367 = load i32, i32* @SK_RI_TO_53, align 4
  %368 = call i32 @sky2_write8(%struct.sky2_hw* %363, i64 %366, i32 %367)
  %369 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* @B3_RI_RTO_R1, align 4
  %372 = call i64 @RAM_BUFFER(i32 %370, i32 %371)
  %373 = load i32, i32* @SK_RI_TO_53, align 4
  %374 = call i32 @sky2_write8(%struct.sky2_hw* %369, i64 %372, i32 %373)
  %375 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %376 = load i32, i32* %5, align 4
  %377 = load i32, i32* @B3_RI_RTO_XA1, align 4
  %378 = call i64 @RAM_BUFFER(i32 %376, i32 %377)
  %379 = load i32, i32* @SK_RI_TO_53, align 4
  %380 = call i32 @sky2_write8(%struct.sky2_hw* %375, i64 %378, i32 %379)
  %381 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %382 = load i32, i32* %5, align 4
  %383 = load i32, i32* @B3_RI_RTO_XS1, align 4
  %384 = call i64 @RAM_BUFFER(i32 %382, i32 %383)
  %385 = load i32, i32* @SK_RI_TO_53, align 4
  %386 = call i32 @sky2_write8(%struct.sky2_hw* %381, i64 %384, i32 %385)
  %387 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %388 = load i32, i32* %5, align 4
  %389 = load i32, i32* @B3_RI_WTO_R2, align 4
  %390 = call i64 @RAM_BUFFER(i32 %388, i32 %389)
  %391 = load i32, i32* @SK_RI_TO_53, align 4
  %392 = call i32 @sky2_write8(%struct.sky2_hw* %387, i64 %390, i32 %391)
  %393 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %394 = load i32, i32* %5, align 4
  %395 = load i32, i32* @B3_RI_WTO_XA2, align 4
  %396 = call i64 @RAM_BUFFER(i32 %394, i32 %395)
  %397 = load i32, i32* @SK_RI_TO_53, align 4
  %398 = call i32 @sky2_write8(%struct.sky2_hw* %393, i64 %396, i32 %397)
  %399 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %400 = load i32, i32* %5, align 4
  %401 = load i32, i32* @B3_RI_WTO_XS2, align 4
  %402 = call i64 @RAM_BUFFER(i32 %400, i32 %401)
  %403 = load i32, i32* @SK_RI_TO_53, align 4
  %404 = call i32 @sky2_write8(%struct.sky2_hw* %399, i64 %402, i32 %403)
  %405 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* @B3_RI_RTO_R2, align 4
  %408 = call i64 @RAM_BUFFER(i32 %406, i32 %407)
  %409 = load i32, i32* @SK_RI_TO_53, align 4
  %410 = call i32 @sky2_write8(%struct.sky2_hw* %405, i64 %408, i32 %409)
  %411 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* @B3_RI_RTO_XA2, align 4
  %414 = call i64 @RAM_BUFFER(i32 %412, i32 %413)
  %415 = load i32, i32* @SK_RI_TO_53, align 4
  %416 = call i32 @sky2_write8(%struct.sky2_hw* %411, i64 %414, i32 %415)
  %417 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %418 = load i32, i32* %5, align 4
  %419 = load i32, i32* @B3_RI_RTO_XS2, align 4
  %420 = call i64 @RAM_BUFFER(i32 %418, i32 %419)
  %421 = load i32, i32* @SK_RI_TO_53, align 4
  %422 = call i32 @sky2_write8(%struct.sky2_hw* %417, i64 %420, i32 %421)
  br label %423

423:                                              ; preds = %344
  %424 = load i32, i32* %5, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %5, align 4
  br label %338

426:                                              ; preds = %338
  %427 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %428 = load i64, i64* @B0_HWE_IMSK, align 8
  %429 = load i32, i32* %6, align 4
  %430 = call i32 @sky2_write32(%struct.sky2_hw* %427, i64 %428, i32 %429)
  store i32 0, i32* %5, align 4
  br label %431

431:                                              ; preds = %441, %426
  %432 = load i32, i32* %5, align 4
  %433 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %434 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = icmp slt i32 %432, %435
  br i1 %436, label %437, label %444

437:                                              ; preds = %431
  %438 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %439 = load i32, i32* %5, align 4
  %440 = call i32 @sky2_gmac_reset(%struct.sky2_hw* %438, i32 %439)
  br label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %5, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %5, align 4
  br label %431

444:                                              ; preds = %431
  %445 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %446 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %449 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = mul i64 %451, 4
  %453 = trunc i64 %452 to i32
  %454 = call i32 @memset(i32 %447, i32 0, i32 %453)
  %455 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %456 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %455, i32 0, i32 5
  store i64 0, i64* %456, align 8
  %457 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %458 = load i64, i64* @STAT_CTRL, align 8
  %459 = load i32, i32* @SC_STAT_RST_SET, align 4
  %460 = call i32 @sky2_write32(%struct.sky2_hw* %457, i64 %458, i32 %459)
  %461 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %462 = load i64, i64* @STAT_CTRL, align 8
  %463 = load i32, i32* @SC_STAT_RST_CLR, align 4
  %464 = call i32 @sky2_write32(%struct.sky2_hw* %461, i64 %462, i32 %463)
  %465 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %466 = load i64, i64* @STAT_LIST_ADDR_LO, align 8
  %467 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %468 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @sky2_write32(%struct.sky2_hw* %465, i64 %466, i32 %469)
  %471 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %472 = load i64, i64* @STAT_LIST_ADDR_HI, align 8
  %473 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %474 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 4
  %476 = ashr i32 %475, 32
  %477 = call i32 @sky2_write32(%struct.sky2_hw* %471, i64 %472, i32 %476)
  %478 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %479 = load i64, i64* @STAT_LAST_IDX, align 8
  %480 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %481 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = sub nsw i32 %482, 1
  %484 = call i32 @sky2_write16(%struct.sky2_hw* %478, i64 %479, i32 %483)
  %485 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %486 = load i64, i64* @STAT_TX_IDX_TH, align 8
  %487 = call i32 @sky2_write16(%struct.sky2_hw* %485, i64 %486, i32 10)
  %488 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %489 = load i64, i64* @STAT_FIFO_WM, align 8
  %490 = call i32 @sky2_write8(%struct.sky2_hw* %488, i64 %489, i32 16)
  %491 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %492 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %505

496:                                              ; preds = %444
  %497 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %498 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %497, i32 0, i32 2
  %499 = load i64, i64* %498, align 8
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %496
  %502 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %503 = load i64, i64* @STAT_FIFO_ISR_WM, align 8
  %504 = call i32 @sky2_write8(%struct.sky2_hw* %502, i64 %503, i32 4)
  br label %509

505:                                              ; preds = %496, %444
  %506 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %507 = load i64, i64* @STAT_FIFO_ISR_WM, align 8
  %508 = call i32 @sky2_write8(%struct.sky2_hw* %506, i64 %507, i32 16)
  br label %509

509:                                              ; preds = %505, %501
  %510 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %511 = load i64, i64* @STAT_TX_TIMER_INI, align 8
  %512 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %513 = call i32 @sky2_us2clk(%struct.sky2_hw* %512, i32 1000)
  %514 = call i32 @sky2_write32(%struct.sky2_hw* %510, i64 %511, i32 %513)
  %515 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %516 = load i64, i64* @STAT_ISR_TIMER_INI, align 8
  %517 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %518 = call i32 @sky2_us2clk(%struct.sky2_hw* %517, i32 20)
  %519 = call i32 @sky2_write32(%struct.sky2_hw* %515, i64 %516, i32 %518)
  %520 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %521 = load i64, i64* @STAT_LEV_TIMER_INI, align 8
  %522 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %523 = call i32 @sky2_us2clk(%struct.sky2_hw* %522, i32 100)
  %524 = call i32 @sky2_write32(%struct.sky2_hw* %520, i64 %521, i32 %523)
  %525 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %526 = load i64, i64* @STAT_CTRL, align 8
  %527 = load i32, i32* @SC_STAT_OP_ON, align 4
  %528 = call i32 @sky2_write32(%struct.sky2_hw* %525, i64 %526, i32 %527)
  %529 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %530 = load i64, i64* @STAT_TX_TIMER_CTRL, align 8
  %531 = load i32, i32* @TIM_START, align 4
  %532 = call i32 @sky2_write8(%struct.sky2_hw* %529, i64 %530, i32 %531)
  %533 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %534 = load i64, i64* @STAT_LEV_TIMER_CTRL, align 8
  %535 = load i32, i32* @TIM_START, align 4
  %536 = call i32 @sky2_write8(%struct.sky2_hw* %533, i64 %534, i32 %535)
  %537 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %538 = load i64, i64* @STAT_ISR_TIMER_CTRL, align 8
  %539 = load i32, i32* @TIM_START, align 4
  %540 = call i32 @sky2_write8(%struct.sky2_hw* %537, i64 %538, i32 %539)
  ret void
}

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_read16(%struct.sky2_hw*, i64) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_pci_read16(%struct.sky2_hw*, i64) #1

declare dso_local i32 @sky2_pci_write16(%struct.sky2_hw*, i64, i32) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @sky2_power_on(%struct.sky2_hw*) #1

declare dso_local i64 @SK_REG(i32, i32) #1

declare dso_local i32 @sky2_pci_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i64 @RAM_BUFFER(i32, i32) #1

declare dso_local i32 @sky2_gmac_reset(%struct.sky2_hw*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sky2_us2clk(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
