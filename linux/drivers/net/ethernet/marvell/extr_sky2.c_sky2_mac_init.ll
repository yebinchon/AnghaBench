; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32* }
%struct.sky2_port = type { i32 }

@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_REV_YU_XL_A0 = common dso_local global i64 0, align 8
@GMC_RST_SET = common dso_local global i32 0, align 4
@PHY_MARV_ID0 = common dso_local global i32 0, align 4
@PHY_MARV_ID0_VAL = common dso_local global i64 0, align 8
@PHY_MARV_ID1 = common dso_local global i32 0, align 4
@PHY_MARV_ID1_Y2 = common dso_local global i64 0, align 8
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@GMAC_IRQ_SRC = common dso_local global i32 0, align 4
@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@GMAC_DEF_MSK = common dso_local global i32 0, align 4
@GM_PHY_ADDR = common dso_local global i32 0, align 4
@GM_PAR_MIB_CLR = common dso_local global i32 0, align 4
@GM_MIB_CNT_BASE = common dso_local global i32 0, align 4
@GM_MIB_CNT_END = common dso_local global i32 0, align 4
@GM_TX_CTRL = common dso_local global i32 0, align 4
@TX_COL_DEF = common dso_local global i32 0, align 4
@GM_RX_CTRL = common dso_local global i32 0, align 4
@GM_RXCR_UCF_ENA = common dso_local global i32 0, align 4
@GM_RXCR_CRC_DIS = common dso_local global i32 0, align 4
@GM_RXCR_MCF_ENA = common dso_local global i32 0, align 4
@GM_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@GM_TX_PARAM = common dso_local global i32 0, align 4
@TX_JAM_LEN_DEF = common dso_local global i32 0, align 4
@TX_JAM_IPG_DEF = common dso_local global i32 0, align 4
@TX_IPG_JAM_DEF = common dso_local global i32 0, align 4
@TX_BOF_LIM_DEF = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@IPG_DATA_DEF_1000 = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_REV_YU_EC_U_B1 = common dso_local global i64 0, align 8
@GM_NEW_FLOW_CTRL = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@GM_TX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_RX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_TR_IRQ_MSK = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_CLR = common dso_local global i32 0, align 4
@GMF_OPER_ON = common dso_local global i32 0, align 4
@GMF_RX_F_FL_ON = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@GMF_RX_OVER_ON = common dso_local global i32 0, align 4
@RX_GMF_FL_MSK = common dso_local global i32 0, align 4
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@RX_GMF_FL_THR_DEF = common dso_local global i32 0, align 4
@CHIP_REV_YU_FE2_A0 = common dso_local global i64 0, align 8
@RX_GMF_FL_THR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@RX_GMF_UP_THR = common dso_local global i32 0, align 4
@RX_GMF_LP_THR = common dso_local global i32 0, align 4
@TX_GMF_EA = common dso_local global i32 0, align 4
@TX_DYN_WM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_mac_init(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %11 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.sky2_port* @netdev_priv(%struct.TYPE_2__* %16)
  store %struct.sky2_port* %17, %struct.sky2_port** %5, align 8
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GPHY_CTRL, align 4
  %30 = call i32 @SK_REG(i32 %28, i32 %29)
  %31 = load i32, i32* @GPC_RST_SET, align 4
  %32 = call i32 @sky2_write8(%struct.sky2_hw* %27, i32 %30, i32 %31)
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @GPHY_CTRL, align 4
  %36 = call i32 @SK_REG(i32 %34, i32 %35)
  %37 = load i32, i32* @GPC_RST_CLR, align 4
  %38 = call i32 @sky2_write8(%struct.sky2_hw* %33, i32 %36, i32 %37)
  %39 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @GMAC_CTRL, align 4
  %42 = call i32 @SK_REG(i32 %40, i32 %41)
  %43 = load i32, i32* @GMC_RST_CLR, align 4
  %44 = call i32 @sky2_write8(%struct.sky2_hw* %39, i32 %42, i32 %43)
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %46 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %2
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %52 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_REV_YU_XL_A0, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %61 = load i32, i32* @GMAC_CTRL, align 4
  %62 = call i32 @SK_REG(i32 0, i32 %61)
  %63 = load i32, i32* @GMC_RST_CLR, align 4
  %64 = call i32 @sky2_write8(%struct.sky2_hw* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %93, %59
  %66 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %67 = load i32, i32* @GMAC_CTRL, align 4
  %68 = call i32 @SK_REG(i32 1, i32 %67)
  %69 = load i32, i32* @GMC_RST_SET, align 4
  %70 = call i32 @sky2_write8(%struct.sky2_hw* %66, i32 %68, i32 %69)
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %72 = load i32, i32* @GMAC_CTRL, align 4
  %73 = call i32 @SK_REG(i32 1, i32 %72)
  %74 = load i32, i32* @GMC_RST_CLR, align 4
  %75 = call i32 @sky2_write8(%struct.sky2_hw* %71, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %78 = load i32, i32* @PHY_MARV_ID0, align 4
  %79 = call i64 @gm_phy_read(%struct.sky2_hw* %77, i32 1, i32 %78)
  %80 = load i64, i64* @PHY_MARV_ID0_VAL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %76
  %83 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %84 = load i32, i32* @PHY_MARV_ID1, align 4
  %85 = call i64 @gm_phy_read(%struct.sky2_hw* %83, i32 1, i32 %84)
  %86 = load i64, i64* @PHY_MARV_ID1_Y2, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %90 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %91 = call i64 @gm_phy_read(%struct.sky2_hw* %89, i32 1, i32 %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %88, %82, %76
  %94 = phi i1 [ true, %82 ], [ true, %76 ], [ %92, %88 ]
  br i1 %94, label %65, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %56, %50, %2
  %97 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @GMAC_IRQ_SRC, align 4
  %100 = call i32 @SK_REG(i32 %98, i32 %99)
  %101 = call i32 @sky2_read16(%struct.sky2_hw* %97, i32 %100)
  %102 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %105 = call i32 @SK_REG(i32 %103, i32 %104)
  %106 = load i32, i32* @GMAC_DEF_MSK, align 4
  %107 = call i32 @sky2_write8(%struct.sky2_hw* %102, i32 %105, i32 %106)
  %108 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %109 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %108, i32 0, i32 0
  %110 = call i32 @spin_lock_bh(i32* %109)
  %111 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @sky2_phy_power_up(%struct.sky2_hw* %111, i32 %112)
  %114 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @sky2_phy_init(%struct.sky2_hw* %114, i32 %115)
  %117 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %118 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @GM_PHY_ADDR, align 4
  %123 = call i32 @gma_read16(%struct.sky2_hw* %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @GM_PHY_ADDR, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @gma_write16(%struct.sky2_hw* %124, i32 %125, i32 %126, i32 %129)
  %131 = load i32, i32* @GM_MIB_CNT_BASE, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %141, %96
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @GM_MIB_CNT_END, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @gma_read16(%struct.sky2_hw* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %8, align 4
  br label %132

144:                                              ; preds = %132
  %145 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @GM_PHY_ADDR, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @gma_write16(%struct.sky2_hw* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @GM_TX_CTRL, align 4
  %153 = load i32, i32* @TX_COL_DEF, align 4
  %154 = call i32 @TX_COL_THR(i32 %153)
  %155 = call i32 @gma_write16(%struct.sky2_hw* %150, i32 %151, i32 %152, i32 %154)
  %156 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @GM_RX_CTRL, align 4
  %159 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %160 = load i32, i32* @GM_RXCR_CRC_DIS, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @gma_write16(%struct.sky2_hw* %156, i32 %157, i32 %158, i32 %163)
  %165 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @GM_TX_FLOW_CTRL, align 4
  %168 = call i32 @gma_write16(%struct.sky2_hw* %165, i32 %166, i32 %167, i32 65535)
  %169 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @GM_TX_PARAM, align 4
  %172 = load i32, i32* @TX_JAM_LEN_DEF, align 4
  %173 = call i32 @TX_JAM_LEN_VAL(i32 %172)
  %174 = load i32, i32* @TX_JAM_IPG_DEF, align 4
  %175 = call i32 @TX_JAM_IPG_VAL(i32 %174)
  %176 = or i32 %173, %175
  %177 = load i32, i32* @TX_IPG_JAM_DEF, align 4
  %178 = call i32 @TX_IPG_JAM_DATA(i32 %177)
  %179 = or i32 %176, %178
  %180 = load i32, i32* @TX_BOF_LIM_DEF, align 4
  %181 = call i32 @TX_BACK_OFF_LIM(i32 %180)
  %182 = or i32 %179, %181
  %183 = call i32 @gma_write16(%struct.sky2_hw* %169, i32 %170, i32 %171, i32 %182)
  %184 = load i32, i32* @DATA_BLIND_DEF, align 4
  %185 = call i32 @DATA_BLIND_VAL(i32 %184)
  %186 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @IPG_DATA_DEF_1000, align 4
  %189 = call i32 @IPG_DATA_VAL(i32 %188)
  %190 = or i32 %187, %189
  store i32 %190, i32* %6, align 4
  %191 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %192 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %191, i32 0, i32 3
  %193 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %193, i64 %195
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ETH_DATA_LEN, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %144
  %203 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %204 = load i32, i32* %6, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %202, %144
  %207 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %208 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %214 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @CHIP_REV_YU_EC_U_B1, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @GM_NEW_FLOW_CTRL, align 4
  %220 = load i32, i32* %6, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %218, %212, %206
  %223 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @GM_SERIAL_MODE, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @gma_write16(%struct.sky2_hw* %223, i32 %224, i32 %225, i32 %226)
  %228 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = call i32 @gma_set_addr(%struct.sky2_hw* %228, i32 %229, i32 %230, i32* %231)
  %233 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = call i32 @gma_set_addr(%struct.sky2_hw* %233, i32 %234, i32 %235, i32* %236)
  %238 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @GM_TX_IRQ_MSK, align 4
  %241 = call i32 @gma_write16(%struct.sky2_hw* %238, i32 %239, i32 %240, i32 0)
  %242 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @GM_RX_IRQ_MSK, align 4
  %245 = call i32 @gma_write16(%struct.sky2_hw* %242, i32 %243, i32 %244, i32 0)
  %246 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @GM_TR_IRQ_MSK, align 4
  %249 = call i32 @gma_write16(%struct.sky2_hw* %246, i32 %247, i32 %248, i32 0)
  %250 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %253 = call i32 @SK_REG(i32 %251, i32 %252)
  %254 = load i32, i32* @GMF_RST_CLR, align 4
  %255 = call i32 @sky2_write8(%struct.sky2_hw* %250, i32 %253, i32 %254)
  %256 = load i32, i32* @GMF_OPER_ON, align 4
  %257 = load i32, i32* @GMF_RX_F_FL_ON, align 4
  %258 = or i32 %256, %257
  store i32 %258, i32* %7, align 4
  %259 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %260 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %222
  %265 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %266 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %264, %222
  %271 = load i32, i32* @GMF_RX_OVER_ON, align 4
  %272 = load i32, i32* %7, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %270, %264
  %275 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %278 = call i32 @SK_REG(i32 %276, i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @sky2_write32(%struct.sky2_hw* %275, i32 %278, i32 %279)
  %281 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %282 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %274
  %287 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %290 = call i32 @SK_REG(i32 %288, i32 %289)
  %291 = call i32 @sky2_write16(%struct.sky2_hw* %287, i32 %290, i32 0)
  br label %299

292:                                              ; preds = %274
  %293 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %296 = call i32 @SK_REG(i32 %294, i32 %295)
  %297 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %298 = call i32 @sky2_write16(%struct.sky2_hw* %293, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %292, %286
  %300 = load i32, i32* @RX_GMF_FL_THR_DEF, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %6, align 4
  %302 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %303 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %299
  %308 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %309 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i32 376, i32* %6, align 4
  br label %314

314:                                              ; preds = %313, %307, %299
  %315 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* @RX_GMF_FL_THR, align 4
  %318 = call i32 @SK_REG(i32 %316, i32 %317)
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @sky2_write16(%struct.sky2_hw* %315, i32 %318, i32 %319)
  %321 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %324 = call i32 @SK_REG(i32 %322, i32 %323)
  %325 = load i32, i32* @GMF_RST_CLR, align 4
  %326 = call i32 @sky2_write8(%struct.sky2_hw* %321, i32 %324, i32 %325)
  %327 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %330 = call i32 @SK_REG(i32 %328, i32 %329)
  %331 = load i32, i32* @GMF_OPER_ON, align 4
  %332 = call i32 @sky2_write16(%struct.sky2_hw* %327, i32 %330, i32 %331)
  %333 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %334 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %368, label %339

339:                                              ; preds = %314
  %340 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %341 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %339
  %346 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %347 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store i32 196, i32* %6, align 4
  br label %353

352:                                              ; preds = %345, %339
  store i32 128, i32* %6, align 4
  br label %353

353:                                              ; preds = %352, %351
  %354 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* @RX_GMF_UP_THR, align 4
  %357 = call i32 @SK_REG(i32 %355, i32 %356)
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @sky2_write16(%struct.sky2_hw* %354, i32 %357, i32 %358)
  %360 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @RX_GMF_LP_THR, align 4
  %363 = call i32 @SK_REG(i32 %361, i32 %362)
  %364 = call i32 @sky2_write16(%struct.sky2_hw* %360, i32 %363, i32 96)
  %365 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %366 = load i32, i32* %4, align 4
  %367 = call i32 @sky2_set_tx_stfwd(%struct.sky2_hw* %365, i32 %366)
  br label %368

368:                                              ; preds = %353, %314
  %369 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %370 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %396

374:                                              ; preds = %368
  %375 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %376 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %396

380:                                              ; preds = %374
  %381 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %382 = load i32, i32* %4, align 4
  %383 = load i32, i32* @TX_GMF_EA, align 4
  %384 = call i32 @SK_REG(i32 %382, i32 %383)
  %385 = call i32 @sky2_read16(%struct.sky2_hw* %381, i32 %384)
  store i32 %385, i32* %6, align 4
  %386 = load i32, i32* @TX_DYN_WM_ENA, align 4
  %387 = xor i32 %386, -1
  %388 = load i32, i32* %6, align 4
  %389 = and i32 %388, %387
  store i32 %389, i32* %6, align 4
  %390 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %391 = load i32, i32* %4, align 4
  %392 = load i32, i32* @TX_GMF_EA, align 4
  %393 = call i32 @SK_REG(i32 %391, i32 %392)
  %394 = load i32, i32* %6, align 4
  %395 = call i32 @sky2_write16(%struct.sky2_hw* %390, i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %380, %374, %368
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i64 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read16(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sky2_phy_power_up(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_phy_init(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @TX_COL_THR(i32) #1

declare dso_local i32 @TX_JAM_LEN_VAL(i32) #1

declare dso_local i32 @TX_JAM_IPG_VAL(i32) #1

declare dso_local i32 @TX_IPG_JAM_DATA(i32) #1

declare dso_local i32 @TX_BACK_OFF_LIM(i32) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @gma_set_addr(%struct.sky2_hw*, i32, i32, i32*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_set_tx_stfwd(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
