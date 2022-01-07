; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.skge_port = type { i64, i32, i64, i32 }

@CHIP_ID_YUKON_LITE = common dso_local global i64 0, align 8
@CHIP_REV_YU_LITE_A3 = common dso_local global i64 0, align 8
@B2_GP_IO = common dso_local global i32 0, align 4
@GP_DIR_9 = common dso_local global i32 0, align 4
@GP_IO_9 = common dso_local global i32 0, align 4
@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_SET = common dso_local global i32 0, align 4
@GPC_INT_POL_HI = common dso_local global i32 0, align 4
@GPC_DIS_FC = common dso_local global i32 0, align 4
@GPC_DIS_SLEEP = common dso_local global i32 0, align 4
@GPC_ENA_XC = common dso_local global i32 0, align 4
@GPC_ANEG_ADV_ALL_M = common dso_local global i32 0, align 4
@GPC_ENA_PAUSE = common dso_local global i32 0, align 4
@GPC_HWCFG_GMII_COP = common dso_local global i32 0, align 4
@GPC_HWCFG_GMII_FIB = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMC_PAUSE_ON = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@GM_GPCR_AU_ALL_DIS = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i64 0, align 8
@GM_GPCR_SPEED_100 = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@GM_GPCR_DUP_FULL = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@GM_GPCR_FC_TX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_FC_RX_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_FCT_DIS = common dso_local global i32 0, align 4
@GMAC_IRQ_SRC = common dso_local global i32 0, align 4
@GM_PHY_ADDR = common dso_local global i64 0, align 8
@GM_PAR_MIB_CLR = common dso_local global i32 0, align 4
@GM_MIB_CNT_SIZE = common dso_local global i32 0, align 4
@GM_MIB_CNT_BASE = common dso_local global i64 0, align 8
@GM_TX_CTRL = common dso_local global i64 0, align 8
@TX_COL_DEF = common dso_local global i32 0, align 4
@GM_RX_CTRL = common dso_local global i64 0, align 8
@GM_RXCR_UCF_ENA = common dso_local global i32 0, align 4
@GM_RXCR_CRC_DIS = common dso_local global i32 0, align 4
@GM_RXCR_MCF_ENA = common dso_local global i32 0, align 4
@GM_TX_FLOW_CTRL = common dso_local global i64 0, align 8
@GM_TX_PARAM = common dso_local global i64 0, align 8
@TX_JAM_LEN_DEF = common dso_local global i32 0, align 4
@TX_JAM_IPG_DEF = common dso_local global i32 0, align 4
@TX_IPG_JAM_DEF = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@IPG_DATA_DEF = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i64 0, align 8
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@GM_TX_IRQ_MSK = common dso_local global i64 0, align 8
@GM_RX_IRQ_MSK = common dso_local global i64 0, align 8
@GM_TR_IRQ_MSK = common dso_local global i64 0, align 8
@RX_GMF_FL_MSK = common dso_local global i32 0, align 4
@RX_FF_FL_DEF_MSK = common dso_local global i32 0, align 4
@GMF_OPER_ON = common dso_local global i32 0, align 4
@GMF_RX_F_FL_ON = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_CLR = common dso_local global i32 0, align 4
@RX_GMF_FL_THR = common dso_local global i32 0, align 4
@RX_GMF_FL_THR_DEF = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @yukon_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_mac_init(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %10 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call %struct.skge_port* @netdev_priv(%struct.TYPE_2__* %15)
  store %struct.skge_port* %16, %struct.skge_port** %5, align 8
  %17 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %18 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %27 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_ID_YUKON_LITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %33 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_REV_YU_LITE_A3, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %39 = load i32, i32* @B2_GP_IO, align 4
  %40 = call i32 @skge_read32(%struct.skge_hw* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @GP_DIR_9, align 4
  %42 = load i32, i32* @GP_IO_9, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %47 = load i32, i32* @B2_GP_IO, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @skge_write32(%struct.skge_hw* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %37, %31, %2
  %51 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @GPHY_CTRL, align 4
  %54 = call i32 @SK_REG(i32 %52, i32 %53)
  %55 = load i32, i32* @GPC_RST_SET, align 4
  %56 = call i32 @skge_write32(%struct.skge_hw* %51, i32 %54, i32 %55)
  %57 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @GMAC_CTRL, align 4
  %60 = call i32 @SK_REG(i32 %58, i32 %59)
  %61 = load i32, i32* @GMC_RST_SET, align 4
  %62 = call i32 @skge_write32(%struct.skge_hw* %57, i32 %60, i32 %61)
  %63 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %64 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_ID_YUKON_LITE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %50
  %69 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %70 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_REV_YU_LITE_A3, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %76 = load i32, i32* @B2_GP_IO, align 4
  %77 = call i32 @skge_read32(%struct.skge_hw* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @GP_DIR_9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @GP_IO_9, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %86 = load i32, i32* @B2_GP_IO, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @skge_write32(%struct.skge_hw* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %74, %68, %50
  %90 = load i32, i32* @GPC_INT_POL_HI, align 4
  %91 = load i32, i32* @GPC_DIS_FC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @GPC_DIS_SLEEP, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @GPC_ENA_XC, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @GPC_ANEG_ADV_ALL_M, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @GPC_ENA_PAUSE, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %102 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32, i32* @GPC_HWCFG_GMII_COP, align 4
  br label %109

107:                                              ; preds = %89
  %108 = load i32, i32* @GPC_HWCFG_GMII_FIB, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @GPHY_CTRL, align 4
  %116 = call i32 @SK_REG(i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @GPC_RST_SET, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @skge_write32(%struct.skge_hw* %113, i32 %116, i32 %119)
  %121 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @GPHY_CTRL, align 4
  %124 = call i32 @SK_REG(i32 %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @GPC_RST_CLR, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @skge_write32(%struct.skge_hw* %121, i32 %124, i32 %127)
  %129 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @GMAC_CTRL, align 4
  %132 = call i32 @SK_REG(i32 %130, i32 %131)
  %133 = load i32, i32* @GMC_PAUSE_ON, align 4
  %134 = load i32, i32* @GMC_RST_CLR, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @skge_write32(%struct.skge_hw* %129, i32 %132, i32 %135)
  %137 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %138 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AUTONEG_DISABLE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %191

142:                                              ; preds = %109
  %143 = load i32, i32* @GM_GPCR_AU_ALL_DIS, align 4
  store i32 %143, i32* %7, align 4
  %144 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i64, i64* @GM_GP_CTRL, align 8
  %147 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i64, i64* @GM_GP_CTRL, align 8
  %150 = call i32 @gma_read16(%struct.skge_hw* %147, i32 %148, i64 %149)
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @gma_write16(%struct.skge_hw* %144, i32 %145, i64 %146, i32 %152)
  %154 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %155 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %180 [
    i32 128, label %157
    i32 129, label %165
    i32 130, label %173
  ]

157:                                              ; preds = %142
  %158 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %180

165:                                              ; preds = %142
  %166 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %180

173:                                              ; preds = %142
  %174 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %175 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %7, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %142, %173, %165, %157
  %181 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %182 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @DUPLEX_FULL, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %186, %180
  br label %197

191:                                              ; preds = %109
  %192 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %193 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %196 = or i32 %194, %195
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %191, %190
  %198 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %199 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %222 [
    i32 133, label %201
    i32 134, label %215
    i32 132, label %221
    i32 131, label %221
  ]

201:                                              ; preds = %197
  %202 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @GMAC_CTRL, align 4
  %205 = call i32 @SK_REG(i32 %203, i32 %204)
  %206 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %207 = call i32 @skge_write32(%struct.skge_hw* %202, i32 %205, i32 %206)
  %208 = load i32, i32* @GM_GPCR_FC_TX_DIS, align 4
  %209 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* %7, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %7, align 4
  br label %222

215:                                              ; preds = %197
  %216 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %217 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %7, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %7, align 4
  br label %222

221:                                              ; preds = %197, %197
  br label %222

222:                                              ; preds = %197, %221, %215, %201
  %223 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load i64, i64* @GM_GP_CTRL, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @gma_write16(%struct.skge_hw* %223, i32 %224, i64 %225, i32 %226)
  %228 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @GMAC_IRQ_SRC, align 4
  %231 = call i32 @SK_REG(i32 %229, i32 %230)
  %232 = call i32 @skge_read16(%struct.skge_hw* %228, i32 %231)
  %233 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @yukon_init(%struct.skge_hw* %233, i32 %234)
  %236 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %237 = load i32, i32* %4, align 4
  %238 = load i64, i64* @GM_PHY_ADDR, align 8
  %239 = call i32 @gma_read16(%struct.skge_hw* %236, i32 %237, i64 %238)
  store i32 %239, i32* %7, align 4
  %240 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %241 = load i32, i32* %4, align 4
  %242 = load i64, i64* @GM_PHY_ADDR, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @gma_write16(%struct.skge_hw* %240, i32 %241, i64 %242, i32 %245)
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %260, %222
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @GM_MIB_CNT_SIZE, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %247
  %252 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %253 = load i32, i32* %4, align 4
  %254 = load i64, i64* @GM_MIB_CNT_BASE, align 8
  %255 = load i32, i32* %6, align 4
  %256 = mul nsw i32 8, %255
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %254, %257
  %259 = call i32 @gma_read16(%struct.skge_hw* %252, i32 %253, i64 %258)
  br label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %247

263:                                              ; preds = %247
  %264 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %265 = load i32, i32* %4, align 4
  %266 = load i64, i64* @GM_PHY_ADDR, align 8
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @gma_write16(%struct.skge_hw* %264, i32 %265, i64 %266, i32 %267)
  %269 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %270 = load i32, i32* %4, align 4
  %271 = load i64, i64* @GM_TX_CTRL, align 8
  %272 = load i32, i32* @TX_COL_DEF, align 4
  %273 = call i32 @TX_COL_THR(i32 %272)
  %274 = call i32 @gma_write16(%struct.skge_hw* %269, i32 %270, i64 %271, i32 %273)
  %275 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %276 = load i32, i32* %4, align 4
  %277 = load i64, i64* @GM_RX_CTRL, align 8
  %278 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %279 = load i32, i32* @GM_RXCR_CRC_DIS, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @gma_write16(%struct.skge_hw* %275, i32 %276, i64 %277, i32 %282)
  %284 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %285 = load i32, i32* %4, align 4
  %286 = load i64, i64* @GM_TX_FLOW_CTRL, align 8
  %287 = call i32 @gma_write16(%struct.skge_hw* %284, i32 %285, i64 %286, i32 65535)
  %288 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %289 = load i32, i32* %4, align 4
  %290 = load i64, i64* @GM_TX_PARAM, align 8
  %291 = load i32, i32* @TX_JAM_LEN_DEF, align 4
  %292 = call i32 @TX_JAM_LEN_VAL(i32 %291)
  %293 = load i32, i32* @TX_JAM_IPG_DEF, align 4
  %294 = call i32 @TX_JAM_IPG_VAL(i32 %293)
  %295 = or i32 %292, %294
  %296 = load i32, i32* @TX_IPG_JAM_DEF, align 4
  %297 = call i32 @TX_IPG_JAM_DATA(i32 %296)
  %298 = or i32 %295, %297
  %299 = call i32 @gma_write16(%struct.skge_hw* %288, i32 %289, i64 %290, i32 %298)
  %300 = load i32, i32* @DATA_BLIND_DEF, align 4
  %301 = call i32 @DATA_BLIND_VAL(i32 %300)
  %302 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @IPG_DATA_DEF, align 4
  %305 = call i32 @IPG_DATA_VAL(i32 %304)
  %306 = or i32 %303, %305
  store i32 %306, i32* %7, align 4
  %307 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %308 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %307, i32 0, i32 2
  %309 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %308, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %309, i64 %311
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @ETH_DATA_LEN, align 8
  %317 = icmp sgt i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %263
  %319 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %320 = load i32, i32* %7, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %318, %263
  %323 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %324 = load i32, i32* %4, align 4
  %325 = load i64, i64* @GM_SERIAL_MODE, align 8
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @gma_write16(%struct.skge_hw* %323, i32 %324, i64 %325, i32 %326)
  %328 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %331 = load i32*, i32** %8, align 8
  %332 = call i32 @gma_set_addr(%struct.skge_hw* %328, i32 %329, i32 %330, i32* %331)
  %333 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %334 = load i32, i32* %4, align 4
  %335 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %336 = load i32*, i32** %8, align 8
  %337 = call i32 @gma_set_addr(%struct.skge_hw* %333, i32 %334, i32 %335, i32* %336)
  %338 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %339 = load i32, i32* %4, align 4
  %340 = load i64, i64* @GM_TX_IRQ_MSK, align 8
  %341 = call i32 @gma_write16(%struct.skge_hw* %338, i32 %339, i64 %340, i32 0)
  %342 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %343 = load i32, i32* %4, align 4
  %344 = load i64, i64* @GM_RX_IRQ_MSK, align 8
  %345 = call i32 @gma_write16(%struct.skge_hw* %342, i32 %343, i64 %344, i32 0)
  %346 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %347 = load i32, i32* %4, align 4
  %348 = load i64, i64* @GM_TR_IRQ_MSK, align 8
  %349 = call i32 @gma_write16(%struct.skge_hw* %346, i32 %347, i64 %348, i32 0)
  %350 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %353 = call i32 @SK_REG(i32 %351, i32 %352)
  %354 = load i32, i32* @RX_FF_FL_DEF_MSK, align 4
  %355 = call i32 @skge_write16(%struct.skge_hw* %350, i32 %353, i32 %354)
  %356 = load i32, i32* @GMF_OPER_ON, align 4
  %357 = load i32, i32* @GMF_RX_F_FL_ON, align 4
  %358 = or i32 %356, %357
  store i32 %358, i32* %7, align 4
  %359 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %360 = call i64 @is_yukon_lite_a0(%struct.skge_hw* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %322
  %363 = load i32, i32* @GMF_RX_F_FL_ON, align 4
  %364 = xor i32 %363, -1
  %365 = load i32, i32* %7, align 4
  %366 = and i32 %365, %364
  store i32 %366, i32* %7, align 4
  br label %367

367:                                              ; preds = %362, %322
  %368 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %369 = load i32, i32* %4, align 4
  %370 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %371 = call i32 @SK_REG(i32 %369, i32 %370)
  %372 = load i32, i32* @GMF_RST_CLR, align 4
  %373 = call i32 @skge_write8(%struct.skge_hw* %368, i32 %371, i32 %372)
  %374 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %377 = call i32 @SK_REG(i32 %375, i32 %376)
  %378 = load i32, i32* %7, align 4
  %379 = call i32 @skge_write16(%struct.skge_hw* %374, i32 %377, i32 %378)
  %380 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %381 = load i32, i32* %4, align 4
  %382 = load i32, i32* @RX_GMF_FL_THR, align 4
  %383 = call i32 @SK_REG(i32 %381, i32 %382)
  %384 = load i32, i32* @RX_GMF_FL_THR_DEF, align 4
  %385 = add nsw i32 %384, 1
  %386 = call i32 @skge_write16(%struct.skge_hw* %380, i32 %383, i32 %385)
  %387 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %388 = load i32, i32* %4, align 4
  %389 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %390 = call i32 @SK_REG(i32 %388, i32 %389)
  %391 = load i32, i32* @GMF_RST_CLR, align 4
  %392 = call i32 @skge_write8(%struct.skge_hw* %387, i32 %390, i32 %391)
  %393 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %394 = load i32, i32* %4, align 4
  %395 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %396 = call i32 @SK_REG(i32 %394, i32 %395)
  %397 = load i32, i32* @GMF_OPER_ON, align 4
  %398 = call i32 @skge_write16(%struct.skge_hw* %393, i32 %396, i32 %397)
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i64, i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i64) #1

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_init(%struct.skge_hw*, i32) #1

declare dso_local i32 @TX_COL_THR(i32) #1

declare dso_local i32 @TX_JAM_LEN_VAL(i32) #1

declare dso_local i32 @TX_JAM_IPG_VAL(i32) #1

declare dso_local i32 @TX_IPG_JAM_DATA(i32) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @gma_set_addr(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i64 @is_yukon_lite_a0(%struct.skge_hw*) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
