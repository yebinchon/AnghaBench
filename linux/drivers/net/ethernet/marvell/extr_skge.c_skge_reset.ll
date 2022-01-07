; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i32, i32, i32, i8, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@CS_RST_CLR = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@B2_TST_CTRL2 = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_ERROR_BITS = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@CS_MRST_CLR = common dso_local global i32 0, align 4
@CS_CLK_RUN_HOT = common dso_local global i32 0, align 4
@CS_CLK_RUN_RST = common dso_local global i32 0, align 4
@CS_CLK_RUN_ENA = common dso_local global i32 0, align 4
@B2_CHIP_ID = common dso_local global i32 0, align 4
@B2_E_1 = common dso_local global i32 0, align 4
@B2_PMD_TYP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Genesis chip detected but not configured\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SK_PHY_MARV_COPPER = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported chip type 0x%x\0A\00", align 1
@B2_MAC_CFG = common dso_local global i32 0, align 4
@CFG_SNG_MAC = common dso_local global i8 0, align 1
@CFG_CHIP_R_MSK = common dso_local global i8 0, align 1
@B2_E_0 = common dso_local global i32 0, align 4
@IS_HW_ERR = common dso_local global i32 0, align 4
@IS_EXT_REG = common dso_local global i32 0, align 4
@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_OFF = common dso_local global i32 0, align 4
@PC_VCC_ON = common dso_local global i32 0, align 4
@B0_ISRC = common dso_local global i32 0, align 4
@B0_HWE_ISRC = common dso_local global i32 0, align 4
@IS_IRQ_SENSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"stuck hardware sensor bit\0A\00", align 1
@PCI_DEV_REG1 = common dso_local global i32 0, align 4
@PCI_PHY_COMA = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_SET = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@B2_TI_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i32 0, align 4
@TIM_CLR_IRQ = common dso_local global i32 0, align 4
@B0_LED = common dso_local global i32 0, align 4
@LED_STAT_ON = common dso_local global i32 0, align 4
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
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@IS_ERR_MSK = common dso_local global i32 0, align 4
@B2_IRQM_MSK = common dso_local global i32 0, align 4
@IS_XA1_F = common dso_local global i32 0, align 4
@IS_XA2_F = common dso_local global i32 0, align 4
@B2_IRQM_INI = common dso_local global i32 0, align 4
@B2_IRQM_CTRL = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@PHY_ADDR_BCOM = common dso_local global i32 0, align 4
@PHY_ADDR_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @skge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_reset(%struct.skge_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = load i32, i32* @B0_CTST, align 4
  %13 = call i32 @skge_read16(%struct.skge_hw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %15 = load i32, i32* @B0_CTST, align 4
  %16 = load i32, i32* @CS_RST_SET, align 4
  %17 = call i32 @skge_write8(%struct.skge_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = load i32, i32* @B0_CTST, align 4
  %20 = load i32, i32* @CS_RST_CLR, align 4
  %21 = call i32 @skge_write8(%struct.skge_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %23 = load i32, i32* @B2_TST_CTRL1, align 4
  %24 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %25 = call i32 @skge_write8(%struct.skge_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %27 = load i32, i32* @B2_TST_CTRL2, align 4
  %28 = call i32 @skge_write8(%struct.skge_hw* %26, i32 %27, i32 0)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %29, i32 0, i32 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* @PCI_STATUS, align 4
  %33 = call i32 @pci_read_config_word(%struct.TYPE_5__* %31, i32 %32, i32* %6)
  %34 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %35 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %34, i32 0, i32 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* @PCI_STATUS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PCI_STATUS_ERROR_BITS, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @pci_write_config_word(%struct.TYPE_5__* %36, i32 %37, i32 %40)
  %42 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %43 = load i32, i32* @B2_TST_CTRL1, align 4
  %44 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %45 = call i32 @skge_write8(%struct.skge_hw* %42, i32 %43, i32 %44)
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* @B0_CTST, align 4
  %48 = load i32, i32* @CS_MRST_CLR, align 4
  %49 = call i32 @skge_write8(%struct.skge_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %51 = load i32, i32* @B0_CTST, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @CS_CLK_RUN_HOT, align 4
  %54 = load i32, i32* @CS_CLK_RUN_RST, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CS_CLK_RUN_ENA, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = call i32 @skge_write16(%struct.skge_hw* %50, i32 %51, i32 %58)
  %60 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %61 = load i32, i32* @B2_CHIP_ID, align 4
  %62 = call i32 @skge_read8(%struct.skge_hw* %60, i32 %61)
  %63 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %64 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %66 = load i32, i32* @B2_E_1, align 4
  %67 = call i32 @skge_read8(%struct.skge_hw* %65, i32 %66)
  %68 = and i32 %67, 15
  %69 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %70 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %72 = load i32, i32* @B2_PMD_TYP, align 4
  %73 = call i32 @skge_read8(%struct.skge_hw* %71, i32 %72)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 84
  br i1 %77, label %82, label %78

78:                                               ; preds = %1
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 49
  br label %82

82:                                               ; preds = %78, %1
  %83 = phi i1 [ true, %1 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %86 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %88 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %115 [
    i32 133, label %90
    i32 132, label %98
    i32 131, label %98
    i32 130, label %98
  ]

90:                                               ; preds = %82
  %91 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %92 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %91, i32 0, i32 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %422

98:                                               ; preds = %82, %82, %82
  %99 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %100 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SK_PHY_MARV_COPPER, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i8, i8* %9, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 83
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %110 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %104, %98
  %112 = load i32, i32* @PHY_ADDR_MARV, align 4
  %113 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %114 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 8
  br label %126

115:                                              ; preds = %82
  %116 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %117 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %116, i32 0, i32 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %121 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %422

126:                                              ; preds = %111
  %127 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %128 = load i32, i32* @B2_MAC_CFG, align 4
  %129 = call i32 @skge_read8(%struct.skge_hw* %127, i32 %128)
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %8, align 1
  %131 = load i8, i8* %8, align 1
  %132 = sext i8 %131 to i32
  %133 = load i8, i8* @CFG_SNG_MAC, align 1
  %134 = sext i8 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 2
  %139 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %140 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i8, i8* %8, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* @CFG_CHIP_R_MSK, align 1
  %144 = sext i8 %143 to i32
  %145 = and i32 %142, %144
  %146 = ashr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %149 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %148, i32 0, i32 4
  store i8 %147, i8* %149, align 8
  %150 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %151 = load i32, i32* @B2_E_0, align 4
  %152 = call i32 @skge_read8(%struct.skge_hw* %150, i32 %151)
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %7, align 1
  %154 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %155 = call i64 @is_genesis(%struct.skge_hw* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %126
  %158 = load i8, i8* %7, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %163 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %162, i32 0, i32 5
  store i32 1048576, i32* %163, align 4
  %164 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %165 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %164, i32 0, i32 6
  store i32 524288, i32* %165, align 8
  br label %172

166:                                              ; preds = %157
  %167 = load i8, i8* %7, align 1
  %168 = sext i8 %167 to i32
  %169 = mul nsw i32 %168, 512
  %170 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %171 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %161
  br label %187

173:                                              ; preds = %126
  %174 = load i8, i8* %7, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %179 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %178, i32 0, i32 5
  store i32 131072, i32* %179, align 4
  br label %186

180:                                              ; preds = %173
  %181 = load i8, i8* %7, align 1
  %182 = sext i8 %181 to i32
  %183 = mul nsw i32 %182, 4096
  %184 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %185 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %177
  br label %187

187:                                              ; preds = %186, %172
  %188 = load i32, i32* @IS_HW_ERR, align 4
  %189 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %190 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %192 = call i64 @is_genesis(%struct.skge_hw* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %196 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %205, label %199

199:                                              ; preds = %194, %187
  %200 = load i32, i32* @IS_EXT_REG, align 4
  %201 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %202 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %194
  %206 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %207 = call i64 @is_genesis(%struct.skge_hw* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %211 = call i32 @genesis_init(%struct.skge_hw* %210)
  br label %295

212:                                              ; preds = %205
  %213 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %214 = load i32, i32* @B0_POWER_CTRL, align 4
  %215 = load i32, i32* @PC_VAUX_ENA, align 4
  %216 = load i32, i32* @PC_VCC_ENA, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @PC_VAUX_OFF, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @PC_VCC_ON, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @skge_write8(%struct.skge_hw* %213, i32 %214, i32 %221)
  %223 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %224 = load i32, i32* @B0_ISRC, align 4
  %225 = call i32 @skge_read32(%struct.skge_hw* %223, i32 %224)
  %226 = load i32, i32* @IS_HW_ERR, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %212
  %230 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %231 = load i32, i32* @B0_HWE_ISRC, align 4
  %232 = call i32 @skge_read32(%struct.skge_hw* %230, i32 %231)
  %233 = load i32, i32* @IS_IRQ_SENSOR, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %229
  %237 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %238 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %237, i32 0, i32 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = call i32 @dev_warn(i32* %240, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %242 = load i32, i32* @IS_HW_ERR, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %245 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %236, %229, %212
  %249 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %250 = load i32, i32* @B2_TST_CTRL1, align 4
  %251 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %252 = call i32 @skge_write8(%struct.skge_hw* %249, i32 %250, i32 %251)
  %253 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %254 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %253, i32 0, i32 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i32, i32* @PCI_DEV_REG1, align 4
  %257 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %255, i32 %256, i32* %4)
  %258 = load i32, i32* @PCI_PHY_COMA, align 4
  %259 = xor i32 %258, -1
  %260 = load i32, i32* %4, align 4
  %261 = and i32 %260, %259
  store i32 %261, i32* %4, align 4
  %262 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %263 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %262, i32 0, i32 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = load i32, i32* @PCI_DEV_REG1, align 4
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %264, i32 %265, i32 %266)
  %268 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %269 = load i32, i32* @B2_TST_CTRL1, align 4
  %270 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %271 = call i32 @skge_write8(%struct.skge_hw* %268, i32 %269, i32 %270)
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %291, %248
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %275 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %272
  %279 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %282 = call i32 @SK_REG(i32 %280, i32 %281)
  %283 = load i32, i32* @GMLC_RST_SET, align 4
  %284 = call i32 @skge_write16(%struct.skge_hw* %279, i32 %282, i32 %283)
  %285 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %288 = call i32 @SK_REG(i32 %286, i32 %287)
  %289 = load i32, i32* @GMLC_RST_CLR, align 4
  %290 = call i32 @skge_write16(%struct.skge_hw* %285, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %278
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %272

294:                                              ; preds = %272
  br label %295

295:                                              ; preds = %294, %209
  %296 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %297 = load i32, i32* @B2_TI_CTRL, align 4
  %298 = load i32, i32* @TIM_STOP, align 4
  %299 = call i32 @skge_write8(%struct.skge_hw* %296, i32 %297, i32 %298)
  %300 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %301 = load i32, i32* @B2_TI_CTRL, align 4
  %302 = load i32, i32* @TIM_CLR_IRQ, align 4
  %303 = call i32 @skge_write8(%struct.skge_hw* %300, i32 %301, i32 %302)
  %304 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %305 = load i32, i32* @B0_LED, align 4
  %306 = load i32, i32* @LED_STAT_ON, align 4
  %307 = call i32 @skge_write8(%struct.skge_hw* %304, i32 %305, i32 %306)
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %321, %295
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %311 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @TXA_CTRL, align 4
  %318 = call i32 @SK_REG(i32 %316, i32 %317)
  %319 = load i32, i32* @TXA_ENA_ARB, align 4
  %320 = call i32 @skge_write8(%struct.skge_hw* %315, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %314
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  br label %308

324:                                              ; preds = %308
  %325 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %326 = load i32, i32* @B3_RI_CTRL, align 4
  %327 = load i32, i32* @RI_RST_CLR, align 4
  %328 = call i32 @skge_write16(%struct.skge_hw* %325, i32 %326, i32 %327)
  %329 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %330 = load i32, i32* @B3_RI_WTO_R1, align 4
  %331 = load i32, i32* @SK_RI_TO_53, align 4
  %332 = call i32 @skge_write8(%struct.skge_hw* %329, i32 %330, i32 %331)
  %333 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %334 = load i32, i32* @B3_RI_WTO_XA1, align 4
  %335 = load i32, i32* @SK_RI_TO_53, align 4
  %336 = call i32 @skge_write8(%struct.skge_hw* %333, i32 %334, i32 %335)
  %337 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %338 = load i32, i32* @B3_RI_WTO_XS1, align 4
  %339 = load i32, i32* @SK_RI_TO_53, align 4
  %340 = call i32 @skge_write8(%struct.skge_hw* %337, i32 %338, i32 %339)
  %341 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %342 = load i32, i32* @B3_RI_RTO_R1, align 4
  %343 = load i32, i32* @SK_RI_TO_53, align 4
  %344 = call i32 @skge_write8(%struct.skge_hw* %341, i32 %342, i32 %343)
  %345 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %346 = load i32, i32* @B3_RI_RTO_XA1, align 4
  %347 = load i32, i32* @SK_RI_TO_53, align 4
  %348 = call i32 @skge_write8(%struct.skge_hw* %345, i32 %346, i32 %347)
  %349 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %350 = load i32, i32* @B3_RI_RTO_XS1, align 4
  %351 = load i32, i32* @SK_RI_TO_53, align 4
  %352 = call i32 @skge_write8(%struct.skge_hw* %349, i32 %350, i32 %351)
  %353 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %354 = load i32, i32* @B3_RI_WTO_R2, align 4
  %355 = load i32, i32* @SK_RI_TO_53, align 4
  %356 = call i32 @skge_write8(%struct.skge_hw* %353, i32 %354, i32 %355)
  %357 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %358 = load i32, i32* @B3_RI_WTO_XA2, align 4
  %359 = load i32, i32* @SK_RI_TO_53, align 4
  %360 = call i32 @skge_write8(%struct.skge_hw* %357, i32 %358, i32 %359)
  %361 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %362 = load i32, i32* @B3_RI_WTO_XS2, align 4
  %363 = load i32, i32* @SK_RI_TO_53, align 4
  %364 = call i32 @skge_write8(%struct.skge_hw* %361, i32 %362, i32 %363)
  %365 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %366 = load i32, i32* @B3_RI_RTO_R2, align 4
  %367 = load i32, i32* @SK_RI_TO_53, align 4
  %368 = call i32 @skge_write8(%struct.skge_hw* %365, i32 %366, i32 %367)
  %369 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %370 = load i32, i32* @B3_RI_RTO_XA2, align 4
  %371 = load i32, i32* @SK_RI_TO_53, align 4
  %372 = call i32 @skge_write8(%struct.skge_hw* %369, i32 %370, i32 %371)
  %373 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %374 = load i32, i32* @B3_RI_RTO_XS2, align 4
  %375 = load i32, i32* @SK_RI_TO_53, align 4
  %376 = call i32 @skge_write8(%struct.skge_hw* %373, i32 %374, i32 %375)
  %377 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %378 = load i32, i32* @B0_HWE_IMSK, align 4
  %379 = load i32, i32* @IS_ERR_MSK, align 4
  %380 = call i32 @skge_write32(%struct.skge_hw* %377, i32 %378, i32 %379)
  %381 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %382 = load i32, i32* @B2_IRQM_MSK, align 4
  %383 = load i32, i32* @IS_XA1_F, align 4
  %384 = load i32, i32* @IS_XA2_F, align 4
  %385 = or i32 %383, %384
  %386 = call i32 @skge_write32(%struct.skge_hw* %381, i32 %382, i32 %385)
  %387 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %388 = load i32, i32* @B2_IRQM_INI, align 4
  %389 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %390 = call i32 @skge_usecs2clk(%struct.skge_hw* %389, i32 100)
  %391 = call i32 @skge_write32(%struct.skge_hw* %387, i32 %388, i32 %390)
  %392 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %393 = load i32, i32* @B2_IRQM_CTRL, align 4
  %394 = load i32, i32* @TIM_START, align 4
  %395 = call i32 @skge_write32(%struct.skge_hw* %392, i32 %393, i32 %394)
  %396 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %397 = load i32, i32* @B0_IMSK, align 4
  %398 = call i32 @skge_write32(%struct.skge_hw* %396, i32 %397, i32 0)
  store i32 0, i32* %10, align 4
  br label %399

399:                                              ; preds = %418, %324
  %400 = load i32, i32* %10, align 4
  %401 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %402 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = icmp slt i32 %400, %403
  br i1 %404, label %405, label %421

405:                                              ; preds = %399
  %406 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %407 = call i64 @is_genesis(%struct.skge_hw* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %405
  %410 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %411 = load i32, i32* %10, align 4
  %412 = call i32 @genesis_reset(%struct.skge_hw* %410, i32 %411)
  br label %417

413:                                              ; preds = %405
  %414 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %415 = load i32, i32* %10, align 4
  %416 = call i32 @yukon_reset(%struct.skge_hw* %414, i32 %415)
  br label %417

417:                                              ; preds = %413, %409
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %10, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %10, align 4
  br label %399

421:                                              ; preds = %399
  store i32 0, i32* %2, align 4
  br label %422

422:                                              ; preds = %421, %115, %90
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_read8(%struct.skge_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @genesis_init(%struct.skge_hw*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_usecs2clk(%struct.skge_hw*, i32) #1

declare dso_local i32 @genesis_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_reset(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
