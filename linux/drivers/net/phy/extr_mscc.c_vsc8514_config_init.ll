; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8514_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8514_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_4__, i32, %struct.vsc8531_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vsc8531_private = type { i32, i32, i32*, i64 }

@ETH_TP_MDI_AUTO = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_PHY_CNTL_4 = common dso_local global i32 0, align 4
@PHY_CNTL_4_ADDR_POS = common dso_local global i32 0, align 4
@MSCC_PHY_ACTIPHY_CNTL = common dso_local global i32 0, align 4
@PHY_ADDR_REVERSED = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_GPIO = common dso_local global i32 0, align 4
@MSCC_PHY_MAC_CFG_FASTLINK = common dso_local global i32 0, align 4
@MAC_CFG_MASK = common dso_local global i32 0, align 4
@MAC_CFG_QSGMII = common dso_local global i32 0, align 4
@PROC_CMD_MCB_ACCESS_MAC_CONF = common dso_local global i32 0, align 4
@PROC_CMD_RST_CONF_PORT = common dso_local global i32 0, align 4
@PROC_CMD_READ_MOD_WRITE_PORT = common dso_local global i32 0, align 4
@PROC_CMD_QSGMII_MAC = common dso_local global i32 0, align 4
@PHY_MCB_S6G_CFG = common dso_local global i32 0, align 4
@PHY_S6G_LCPLL_CFG = common dso_local global i32 0, align 4
@PHY_MCB_TARGET = common dso_local global i32 0, align 4
@PHY_S6G_PLL5G_CFG0 = common dso_local global i32 0, align 4
@PHY_S6G_PLL_CFG = common dso_local global i32 0, align 4
@PHY_S6G_PLL_ENA_OFFS_POS = common dso_local global i32 0, align 4
@PHY_S6G_PLL_FSM_CTRL_DATA_POS = common dso_local global i32 0, align 4
@PHY_S6G_PLL_FSM_ENA_POS = common dso_local global i32 0, align 4
@PHY_S6G_COMMON_CFG = common dso_local global i32 0, align 4
@PHY_S6G_SYS_RST_POS = common dso_local global i32 0, align 4
@PHY_S6G_ENA_LANE_POS = common dso_local global i32 0, align 4
@PHY_S6G_ENA_LOOP_POS = common dso_local global i32 0, align 4
@PHY_S6G_QRATE_POS = common dso_local global i32 0, align 4
@PHY_S6G_IF_MODE_POS = common dso_local global i32 0, align 4
@PHY_S6G_MISC_CFG = common dso_local global i32 0, align 4
@PHY_S6G_GPC_CFG = common dso_local global i32 0, align 4
@PHY_S6G_DFT_CFG2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PROC_CMD_NCOMPLETED_TIMEOUT_MS = common dso_local global i32 0, align 4
@PHY_S6G_PLL_STATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PHY_S6G_IB_STATUS0 = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_PHY_CNTL_1 = common dso_local global i32 0, align 4
@MEDIA_OP_MODE_MASK = common dso_local global i32 0, align 4
@MEDIA_OP_MODE_COPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8514_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8514_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.vsc8531_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 2
  %13 = load %struct.vsc8531_private*, %struct.vsc8531_private** %12, align 8
  store %struct.vsc8531_private* %13, %struct.vsc8531_private** %4, align 8
  %14 = load i32, i32* @ETH_TP_MDI_AUTO, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %25 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %26 = call i32 @__phy_write(%struct.phy_device* %23, i32 %24, i32 %25)
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_4, align 4
  %29 = call i32 @__phy_read(%struct.phy_device* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @PHY_CNTL_4_ADDR_POS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load i32, i32* @MSCC_PHY_ACTIPHY_CNTL, align 4
  %35 = call i32 @__phy_read(%struct.phy_device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PHY_ADDR_REVERSED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %49 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  br label %60

50:                                               ; preds = %1
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %59 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %40
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PHY_ADDR_REVERSED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = call i32 @vsc8584_is_pkg_init(%struct.phy_device* %61, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = call i32 @vsc8514_config_pre_init(%struct.phy_device* %71)
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %75 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %78 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_GPIO, align 4
  %79 = call i32 @phy_base_write(%struct.phy_device* %76, i32 %77, i32 %78)
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = load i32, i32* @MSCC_PHY_MAC_CFG_FASTLINK, align 4
  %82 = call i32 @phy_base_read(%struct.phy_device* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @MAC_CFG_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @MAC_CFG_QSGMII, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = load i32, i32* @MSCC_PHY_MAC_CFG_FASTLINK, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @phy_base_write(%struct.phy_device* %90, i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %73
  br label %360

97:                                               ; preds = %73
  %98 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %99 = load i32, i32* @PROC_CMD_MCB_ACCESS_MAC_CONF, align 4
  %100 = load i32, i32* @PROC_CMD_RST_CONF_PORT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PROC_CMD_READ_MOD_WRITE_PORT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @PROC_CMD_QSGMII_MAC, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @vsc8584_cmd(%struct.phy_device* %98, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %360

110:                                              ; preds = %97
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = load i32, i32* @PHY_MCB_S6G_CFG, align 4
  %113 = call i32 @phy_update_mcb_s6g(%struct.phy_device* %111, i32 %112, i32 0)
  %114 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %115 = load i32, i32* @PHY_S6G_LCPLL_CFG, align 4
  %116 = call i32 @phy_update_mcb_s6g(%struct.phy_device* %114, i32 %115, i32 0)
  %117 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %118 = load i32, i32* @PHY_MCB_TARGET, align 4
  %119 = load i32, i32* @PHY_S6G_PLL5G_CFG0, align 4
  %120 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %117, i32 %118, i32 %119, i32 1882648901)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  br label %360

124:                                              ; preds = %110
  %125 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %126 = load i32, i32* @PHY_S6G_LCPLL_CFG, align 4
  %127 = call i32 @phy_commit_mcb_s6g(%struct.phy_device* %125, i32 %126, i32 0)
  %128 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %129 = load i32, i32* @PHY_MCB_TARGET, align 4
  %130 = load i32, i32* @PHY_S6G_PLL_CFG, align 4
  %131 = load i32, i32* @PHY_S6G_PLL_ENA_OFFS_POS, align 4
  %132 = shl i32 3, %131
  %133 = load i32, i32* @PHY_S6G_PLL_FSM_CTRL_DATA_POS, align 4
  %134 = shl i32 120, %133
  %135 = or i32 %132, %134
  %136 = load i32, i32* @PHY_S6G_PLL_FSM_ENA_POS, align 4
  %137 = shl i32 0, %136
  %138 = or i32 %135, %137
  %139 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %128, i32 %129, i32 %130, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %124
  br label %360

143:                                              ; preds = %124
  %144 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %145 = load i32, i32* @PHY_MCB_TARGET, align 4
  %146 = load i32, i32* @PHY_S6G_COMMON_CFG, align 4
  %147 = load i32, i32* @PHY_S6G_SYS_RST_POS, align 4
  %148 = shl i32 0, %147
  %149 = load i32, i32* @PHY_S6G_ENA_LANE_POS, align 4
  %150 = shl i32 0, %149
  %151 = or i32 %148, %150
  %152 = load i32, i32* @PHY_S6G_ENA_LOOP_POS, align 4
  %153 = shl i32 0, %152
  %154 = or i32 %151, %153
  %155 = load i32, i32* @PHY_S6G_QRATE_POS, align 4
  %156 = shl i32 0, %155
  %157 = or i32 %154, %156
  %158 = load i32, i32* @PHY_S6G_IF_MODE_POS, align 4
  %159 = shl i32 3, %158
  %160 = or i32 %157, %159
  %161 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %144, i32 %145, i32 %146, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %143
  br label %360

165:                                              ; preds = %143
  %166 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %167 = load i32, i32* @PHY_MCB_TARGET, align 4
  %168 = load i32, i32* @PHY_S6G_MISC_CFG, align 4
  %169 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %166, i32 %167, i32 %168, i32 1)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %360

173:                                              ; preds = %165
  %174 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %175 = load i32, i32* @PHY_MCB_TARGET, align 4
  %176 = load i32, i32* @PHY_S6G_GPC_CFG, align 4
  %177 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %174, i32 %175, i32 %176, i32 768)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %360

181:                                              ; preds = %173
  %182 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %183 = load i32, i32* @PHY_S6G_DFT_CFG2, align 4
  %184 = call i32 @phy_commit_mcb_s6g(%struct.phy_device* %182, i32 %183, i32 0)
  %185 = load i64, i64* @jiffies, align 8
  %186 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %187 = call i64 @msecs_to_jiffies(i32 %186)
  %188 = add i64 %185, %187
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %220, %181
  %190 = call i32 @usleep_range(i32 500, i32 1000)
  %191 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %192 = load i32, i32* @PHY_MCB_S6G_CFG, align 4
  %193 = call i32 @phy_update_mcb_s6g(%struct.phy_device* %191, i32 %192, i32 0)
  %194 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %195 = load i32, i32* @PHY_MCB_TARGET, align 4
  %196 = load i32, i32* @PHY_S6G_PLL_STATUS, align 4
  %197 = call i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device* %194, i32 %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %209

200:                                              ; preds = %189
  %201 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %202 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %368

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* @jiffies, align 8
  %212 = load i64, i64* %5, align 8
  %213 = call i64 @time_before(i64 %211, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @BIT(i32 12)
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br label %220

220:                                              ; preds = %215, %210
  %221 = phi i1 [ false, %210 ], [ %219, %215 ]
  br i1 %221, label %189, label %222

222:                                              ; preds = %220
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @BIT(i32 12)
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %229 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load i32, i32* @ETIMEDOUT, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %2, align 4
  br label %368

236:                                              ; preds = %222
  %237 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %238 = load i32, i32* @PHY_MCB_TARGET, align 4
  %239 = load i32, i32* @PHY_S6G_MISC_CFG, align 4
  %240 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %237, i32 %238, i32 %239, i32 0)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %360

244:                                              ; preds = %236
  %245 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %246 = load i32, i32* @PHY_MCB_S6G_CFG, align 4
  %247 = call i32 @phy_commit_mcb_s6g(%struct.phy_device* %245, i32 %246, i32 0)
  %248 = load i64, i64* @jiffies, align 8
  %249 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %250 = call i64 @msecs_to_jiffies(i32 %249)
  %251 = add i64 %248, %250
  store i64 %251, i64* %5, align 8
  br label %252

252:                                              ; preds = %284, %244
  %253 = call i32 @usleep_range(i32 500, i32 1000)
  %254 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %255 = load i32, i32* @PHY_MCB_S6G_CFG, align 4
  %256 = call i32 @phy_update_mcb_s6g(%struct.phy_device* %254, i32 %255, i32 0)
  %257 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %258 = load i32, i32* @PHY_MCB_TARGET, align 4
  %259 = load i32, i32* @PHY_S6G_IB_STATUS0, align 4
  %260 = call i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device* %257, i32 %258, i32 %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %272

263:                                              ; preds = %252
  %264 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %265 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = call i32 @mutex_unlock(i32* %268)
  %270 = load i32, i32* @EIO, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %2, align 4
  br label %368

272:                                              ; preds = %252
  br label %273

273:                                              ; preds = %272
  %274 = load i64, i64* @jiffies, align 8
  %275 = load i64, i64* %5, align 8
  %276 = call i64 @time_before(i64 %274, i64 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %273
  %279 = load i32, i32* %10, align 4
  %280 = call i32 @BIT(i32 8)
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  br label %284

284:                                              ; preds = %278, %273
  %285 = phi i1 [ false, %273 ], [ %283, %278 ]
  br i1 %285, label %252, label %286

286:                                              ; preds = %284
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @BIT(i32 8)
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %286
  %292 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %293 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  %297 = call i32 @mutex_unlock(i32* %296)
  %298 = load i32, i32* @ETIMEDOUT, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %2, align 4
  br label %368

300:                                              ; preds = %286
  %301 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %302 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = call i32 @mutex_unlock(i32* %305)
  %307 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %308 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %309 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %310 = call i32 @phy_write(%struct.phy_device* %307, i32 %308, i32 %309)
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %300
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %2, align 4
  br label %368

315:                                              ; preds = %300
  %316 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %317 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_1, align 4
  %318 = load i32, i32* @MEDIA_OP_MODE_MASK, align 4
  %319 = load i32, i32* @MEDIA_OP_MODE_COPPER, align 4
  %320 = call i32 @phy_modify(%struct.phy_device* %316, i32 %317, i32 %318, i32 %319)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %315
  %324 = load i32, i32* %8, align 4
  store i32 %324, i32* %2, align 4
  br label %368

325:                                              ; preds = %315
  %326 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %327 = call i32 @genphy_soft_reset(%struct.phy_device* %326)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  %331 = load i32, i32* %8, align 4
  store i32 %331, i32* %2, align 4
  br label %368

332:                                              ; preds = %325
  store i32 0, i32* %9, align 4
  br label %333

333:                                              ; preds = %355, %332
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %336 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %358

339:                                              ; preds = %333
  %340 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %341 = load i32, i32* %9, align 4
  %342 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %343 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @vsc85xx_led_cntl_set(%struct.phy_device* %340, i32 %341, i32 %348)
  store i32 %349, i32* %8, align 4
  %350 = load i32, i32* %8, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %339
  %353 = load i32, i32* %8, align 4
  store i32 %353, i32* %2, align 4
  br label %368

354:                                              ; preds = %339
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %9, align 4
  br label %333

358:                                              ; preds = %333
  %359 = load i32, i32* %8, align 4
  store i32 %359, i32* %2, align 4
  br label %368

360:                                              ; preds = %243, %180, %172, %164, %142, %123, %109, %96
  %361 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %362 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = call i32 @mutex_unlock(i32* %365)
  %367 = load i32, i32* %8, align 4
  store i32 %367, i32* %2, align 4
  br label %368

368:                                              ; preds = %360, %358, %352, %330, %323, %313, %291, %263, %227, %200
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8584_is_pkg_init(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8514_config_pre_init(%struct.phy_device*) #1

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8584_cmd(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_update_mcb_s6g(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_commit_mcb_s6g(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

declare dso_local i32 @vsc85xx_led_cntl_set(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
