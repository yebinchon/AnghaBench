; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@BGMAC_MAX_TX_RINGS = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_ML = common dso_local global i32 0, align 4
@BGMAC_MAX_RX_RINGS = common dso_local global i32 0, align 4
@BGMAC_FEAT_IDM_MASK = common dso_local global i32 0, align 4
@BGMAC_FEAT_MISC_PLL_REQ = common dso_local global i32 0, align 4
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@BGMAC_BCMA_CLKCTLST_MISC_PLL_REQ = common dso_local global i32 0, align 4
@BGMAC_BCMA_CLKCTLST_MISC_PLL_ST = common dso_local global i32 0, align 4
@BGMAC_FEAT_SW_TYPE_PHY = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_SW_TYPE_EPHY = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_IF_TYPE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"et_swtype\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse et_swtype (%s)\0A\00", align 1
@BGMAC_FEAT_SW_TYPE_EPHYRMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_IF_TYPE_RMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_SW_TYPE_EPHYRMII = common dso_local global i32 0, align 4
@BGMAC_FEAT_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_IF_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_IF_TYPE_MASK = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_1_SW_TYPE_MASK = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC4_IF_SW_TYPE = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_IF_TYPE_MII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_SW_TYPE_EPHY = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_IF_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_IF_TYPE_MASK = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_4_SW_TYPE_MASK = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC7_IF_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_7_IF_TYPE_MASK = common dso_local global i32 0, align 4
@BGMAC_CHIPCTL_7_IF_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_FEAT_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_SR_REV0 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_TE = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_RE = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_RPI = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_TAI = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_HD = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_CFE = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_RL = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_RED = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_PE = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_TPI = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_PAD_EN = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_PF = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_PROM = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_NLC = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@BGMAC_FEAT_CMN_PHY_CTL = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PHY_CTL = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PC_MTE = common dso_local global i32 0, align 4
@BGMAC_PHY_CNTL = common dso_local global i32 0, align 4
@BGMAC_PC_MTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_chip_reset(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %11 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %12 = call i64 @bgmac_clk_enabled(%struct.bgmac* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %16 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %21 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %14
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BGMAC_MAX_TX_RINGS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %29 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %30 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @bgmac_dma_tx_reset(%struct.bgmac* %28, i32* %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %41 = load i32, i32* @BGMAC_CMDCFG_ML, align 4
  %42 = call i32 @bgmac_cmdcfg_maskset(%struct.bgmac* %40, i32 -1, i32 %41, i32 0)
  %43 = call i32 @udelay(i32 1)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %57, %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @BGMAC_MAX_RX_RINGS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %50 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %51 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @bgmac_dma_rx_reset(%struct.bgmac* %49, i32* %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %44

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %63 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %70 = call i32 @bgmac_chip_reset_idm_config(%struct.bgmac* %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %73 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BGMAC_FEAT_MISC_PLL_REQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %80 = load i32, i32* @BCMA_CLKCTLST, align 4
  %81 = load i32, i32* @BGMAC_BCMA_CLKCTLST_MISC_PLL_REQ, align 4
  %82 = call i32 @bgmac_set(%struct.bgmac* %79, i32 %80, i32 %81)
  %83 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %84 = load i32, i32* @BCMA_CLKCTLST, align 4
  %85 = load i32, i32* @BGMAC_BCMA_CLKCTLST_MISC_PLL_ST, align 4
  %86 = load i32, i32* @BGMAC_BCMA_CLKCTLST_MISC_PLL_ST, align 4
  %87 = call i32 @bgmac_wait_value(%struct.bgmac* %83, i32 %84, i32 %85, i32 %86, i32 1000)
  br label %88

88:                                               ; preds = %78, %71
  %89 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %90 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BGMAC_FEAT_SW_TYPE_PHY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %150

95:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  %96 = load i32, i32* @BGMAC_CHIPCTL_1_SW_TYPE_EPHY, align 4
  %97 = load i32, i32* @BGMAC_CHIPCTL_1_IF_TYPE_MII, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %6, align 4
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %100 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %99, i32 4)
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %104 = call i64 @kstrtou8(i8* %103, i32 0, i32* %5)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %108 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = shl i32 %115, 4
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %6, align 4
  br label %142

118:                                              ; preds = %95
  %119 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %120 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BGMAC_FEAT_SW_TYPE_EPHYRMII, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @BGMAC_CHIPCTL_1_IF_TYPE_RMII, align 4
  %127 = load i32, i32* @BGMAC_CHIPCTL_1_SW_TYPE_EPHYRMII, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %6, align 4
  br label %141

129:                                              ; preds = %118
  %130 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %131 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BGMAC_FEAT_SW_TYPE_RGMII, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @BGMAC_CHIPCTL_1_IF_TYPE_RGMII, align 4
  %138 = load i32, i32* @BGMAC_CHIPCTL_1_SW_TYPE_RGMII, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %129
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %112
  %143 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %144 = load i32, i32* @BGMAC_CHIPCTL_1_IF_TYPE_MASK, align 4
  %145 = load i32, i32* @BGMAC_CHIPCTL_1_SW_TYPE_MASK, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @bgmac_cco_ctl_maskset(%struct.bgmac* %143, i32 1, i32 %147, i32 %148)
  br label %213

150:                                              ; preds = %88
  %151 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %152 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @BGMAC_FEAT_CC4_IF_SW_TYPE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %198

157:                                              ; preds = %150
  %158 = load i32, i32* @BGMAC_CHIPCTL_4_IF_TYPE_MII, align 4
  %159 = load i32, i32* @BGMAC_CHIPCTL_4_SW_TYPE_EPHY, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %162 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %161, i32 4)
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %166 = call i64 @kstrtou8(i8* %165, i32 0, i32* %9)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %170 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %173 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, 15
  %177 = shl i32 %176, 12
  store i32 %177, i32* %8, align 4
  br label %190

178:                                              ; preds = %157
  %179 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %180 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i32, i32* @BGMAC_CHIPCTL_4_IF_TYPE_RGMII, align 4
  %187 = load i32, i32* @BGMAC_CHIPCTL_4_SW_TYPE_RGMII, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %185, %178
  br label %190

190:                                              ; preds = %189, %174
  %191 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %192 = load i32, i32* @BGMAC_CHIPCTL_4_IF_TYPE_MASK, align 4
  %193 = load i32, i32* @BGMAC_CHIPCTL_4_SW_TYPE_MASK, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @bgmac_cco_ctl_maskset(%struct.bgmac* %191, i32 4, i32 %195, i32 %196)
  br label %212

198:                                              ; preds = %150
  %199 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %200 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @BGMAC_FEAT_CC7_IF_TYPE_RGMII, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %207 = load i32, i32* @BGMAC_CHIPCTL_7_IF_TYPE_MASK, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* @BGMAC_CHIPCTL_7_IF_TYPE_RGMII, align 4
  %210 = call i32 @bgmac_cco_ctl_maskset(%struct.bgmac* %206, i32 7, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205, %198
  br label %212

212:                                              ; preds = %211, %190
  br label %213

213:                                              ; preds = %212, %142
  %214 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %215 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @BGMAC_FEAT_CMDCFG_SR_REV4, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* @BGMAC_CMDCFG_SR_REV4, align 4
  store i32 %221, i32* %3, align 4
  br label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @BGMAC_CMDCFG_SR_REV0, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %226 = load i32, i32* @BGMAC_CMDCFG_TE, align 4
  %227 = load i32, i32* @BGMAC_CMDCFG_RE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @BGMAC_CMDCFG_RPI, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @BGMAC_CMDCFG_TAI, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @BGMAC_CMDCFG_HD, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @BGMAC_CMDCFG_ML, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @BGMAC_CMDCFG_CFE, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @BGMAC_CMDCFG_RL, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @BGMAC_CMDCFG_RED, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @BGMAC_CMDCFG_PE, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @BGMAC_CMDCFG_TPI, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @BGMAC_CMDCFG_PAD_EN, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @BGMAC_CMDCFG_PF, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load i32, i32* @BGMAC_CMDCFG_PROM, align 4
  %253 = load i32, i32* @BGMAC_CMDCFG_NLC, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @BGMAC_CMDCFG_CFE, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* %3, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @bgmac_cmdcfg_maskset(%struct.bgmac* %225, i32 %251, i32 %258, i32 0)
  %260 = load i32, i32* @SPEED_UNKNOWN, align 4
  %261 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %262 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %261, i32 0, i32 5
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %264 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %265 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 8
  %266 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %267 = call i32 @bgmac_clear_mib(%struct.bgmac* %266)
  %268 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %269 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @BGMAC_FEAT_CMN_PHY_CTL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %224
  %275 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %276 = load i32, i32* @BCMA_GMAC_CMN_PHY_CTL, align 4
  %277 = load i32, i32* @BCMA_GMAC_CMN_PC_MTE, align 4
  %278 = call i32 @bgmac_cmn_maskset32(%struct.bgmac* %275, i32 %276, i32 -1, i32 %277)
  br label %284

279:                                              ; preds = %224
  %280 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %281 = load i32, i32* @BGMAC_PHY_CNTL, align 4
  %282 = load i32, i32* @BGMAC_PC_MTE, align 4
  %283 = call i32 @bgmac_set(%struct.bgmac* %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %279, %274
  %285 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %286 = call i32 @bgmac_miiconfig(%struct.bgmac* %285)
  %287 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %288 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %287, i32 0, i32 3
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = icmp ne %struct.TYPE_2__* %289, null
  br i1 %290, label %291, label %301

291:                                              ; preds = %284
  %292 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %293 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %292, i32 0, i32 3
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %295, align 8
  %297 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %298 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %297, i32 0, i32 3
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = call i32 %296(%struct.TYPE_2__* %299)
  br label %301

301:                                              ; preds = %291, %284
  %302 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %303 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @netdev_reset_queue(i32 %304)
  ret void
}

declare dso_local i64 @bgmac_clk_enabled(%struct.bgmac*) #1

declare dso_local i32 @bgmac_dma_tx_reset(%struct.bgmac*, i32*) #1

declare dso_local i32 @bgmac_cmdcfg_maskset(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bgmac_dma_rx_reset(%struct.bgmac*, i32*) #1

declare dso_local i32 @bgmac_chip_reset_idm_config(%struct.bgmac*) #1

declare dso_local i32 @bgmac_set(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_wait_value(%struct.bgmac*, i32, i32, i32, i32) #1

declare dso_local i64 @bcm47xx_nvram_getenv(i8*, i8*, i32) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @bgmac_cco_ctl_maskset(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @bgmac_clear_mib(%struct.bgmac*) #1

declare dso_local i32 @bgmac_cmn_maskset32(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @bgmac_miiconfig(%struct.bgmac*) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
