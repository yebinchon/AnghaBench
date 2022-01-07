; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_gmac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_gmac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64 }
%struct.phylink_link_state = type { i64, i64, i32, i64, i64, i32 }

@MVPP2_GMAC_AUTONEG_CONFIG = common dso_local global i64 0, align 8
@MVPP2_GMAC_CTRL_0_REG = common dso_local global i64 0, align 8
@MVPP2_GMAC_CTRL_2_REG = common dso_local global i64 0, align 8
@MVPP22_GMAC_CTRL_4_REG = common dso_local global i64 0, align 8
@MVPP2_GMAC_CONFIG_MII_SPEED = common dso_local global i32 0, align 4
@MVPP2_GMAC_CONFIG_GMII_SPEED = common dso_local global i32 0, align 4
@MVPP2_GMAC_AN_SPEED_EN = common dso_local global i32 0, align 4
@MVPP2_GMAC_FC_ADV_EN = common dso_local global i32 0, align 4
@MVPP2_GMAC_FC_ADV_ASM_EN = common dso_local global i32 0, align 4
@MVPP2_GMAC_FLOW_CTRL_AUTONEG = common dso_local global i32 0, align 4
@MVPP2_GMAC_CONFIG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MVPP2_GMAC_AN_DUPLEX_EN = common dso_local global i32 0, align 4
@MVPP2_GMAC_IN_BAND_AUTONEG = common dso_local global i32 0, align 4
@MVPP2_GMAC_IN_BAND_AUTONEG_BYPASS = common dso_local global i32 0, align 4
@MVPP2_GMAC_PORT_TYPE_MASK = common dso_local global i32 0, align 4
@MVPP2_GMAC_INBAND_AN_MASK = common dso_local global i32 0, align 4
@MVPP2_GMAC_PORT_RESET_MASK = common dso_local global i32 0, align 4
@MVPP2_GMAC_PCS_ENABLE_MASK = common dso_local global i32 0, align 4
@MVPP22_CTRL4_RX_FC_EN = common dso_local global i32 0, align 4
@MVPP22_CTRL4_TX_FC_EN = common dso_local global i32 0, align 4
@MVPP22_CTRL4_EXT_PIN_GMII_SEL = common dso_local global i32 0, align 4
@MVPP22_CTRL4_SYNC_BYPASS_DIS = common dso_local global i32 0, align 4
@MVPP22_CTRL4_DP_CLK_SEL = common dso_local global i32 0, align 4
@MVPP22_CTRL4_QSGMII_BYPASS_ACTIVE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MVPP2_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVPP2_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@MVPP2_GMAC_AN_PORT_DOWN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, %struct.phylink_link_state*)* @mvpp2_gmac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_gmac_config(%struct.mvpp2_port* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MVPP2_GMAC_CTRL_0_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %10, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MVPP2_GMAC_CTRL_2_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %12, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MVPP22_GMAC_CTRL_4_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %14, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @MVPP2_GMAC_CONFIG_MII_SPEED, align 4
  %40 = load i32, i32* @MVPP2_GMAC_CONFIG_GMII_SPEED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MVPP2_GMAC_AN_SPEED_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MVPP2_GMAC_FC_ADV_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MVPP2_GMAC_FC_ADV_ASM_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MVPP2_GMAC_FLOW_CTRL_AUTONEG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MVPP2_GMAC_CONFIG_FULL_DUPLEX, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MVPP2_GMAC_AN_DUPLEX_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG_BYPASS, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @MVPP2_GMAC_PORT_TYPE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @MVPP2_GMAC_INBAND_AN_MASK, align 4
  %66 = load i32, i32* @MVPP2_GMAC_PORT_RESET_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MVPP2_GMAC_PCS_ENABLE_MASK, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @MVPP22_CTRL4_RX_FC_EN, align 4
  %74 = load i32, i32* @MVPP22_CTRL4_TX_FC_EN, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %80 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @phy_interface_mode_is_8023z(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %3
  %85 = load i32, i32* @MVPP2_GMAC_PCS_ENABLE_MASK, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* @MVPP22_CTRL4_EXT_PIN_GMII_SEL, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* @MVPP22_CTRL4_SYNC_BYPASS_DIS, align 4
  %93 = load i32, i32* @MVPP22_CTRL4_DP_CLK_SEL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MVPP22_CTRL4_QSGMII_BYPASS_ACTIVE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %142

99:                                               ; preds = %3
  %100 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %101 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load i32, i32* @MVPP2_GMAC_PCS_ENABLE_MASK, align 4
  %107 = load i32, i32* @MVPP2_GMAC_INBAND_AN_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @MVPP22_CTRL4_EXT_PIN_GMII_SEL, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* @MVPP22_CTRL4_SYNC_BYPASS_DIS, align 4
  %116 = load i32, i32* @MVPP22_CTRL4_DP_CLK_SEL, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @MVPP22_CTRL4_QSGMII_BYPASS_ACTIVE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  br label %141

122:                                              ; preds = %99
  %123 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %124 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @phy_interface_mode_is_rgmii(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load i32, i32* @MVPP22_CTRL4_DP_CLK_SEL, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %14, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* @MVPP22_CTRL4_EXT_PIN_GMII_SEL, align 4
  %134 = load i32, i32* @MVPP22_CTRL4_SYNC_BYPASS_DIS, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MVPP22_CTRL4_QSGMII_BYPASS_ACTIVE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %128, %122
  br label %141

141:                                              ; preds = %140, %105
  br label %142

142:                                              ; preds = %141, %84
  %143 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %144 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @Pause, align 4
  %147 = call i64 @phylink_test(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load i32, i32* @MVPP2_GMAC_FC_ADV_EN, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %149, %142
  %154 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %155 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @Asym_Pause, align 4
  %158 = call i64 @phylink_test(i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @MVPP2_GMAC_FC_ADV_ASM_EN, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %160, %153
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @phylink_autoneg_inband(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %227, label %168

168:                                              ; preds = %164
  %169 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %170 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @MVPP2_GMAC_CONFIG_FULL_DUPLEX, align 4
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %179 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SPEED_1000, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %185 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @SPEED_2500, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183, %177
  %190 = load i32, i32* @MVPP2_GMAC_CONFIG_GMII_SPEED, align 4
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %204

193:                                              ; preds = %183
  %194 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %195 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @SPEED_100, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* @MVPP2_GMAC_CONFIG_MII_SPEED, align 4
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %199, %193
  br label %204

204:                                              ; preds = %203, %189
  %205 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %206 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @MLO_PAUSE_TX, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* @MVPP22_CTRL4_TX_FC_EN, align 4
  %213 = load i32, i32* %14, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %217 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MLO_PAUSE_RX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i32, i32* @MVPP22_CTRL4_RX_FC_EN, align 4
  %224 = load i32, i32* %14, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %222, %215
  br label %333

227:                                              ; preds = %164
  %228 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %229 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %269

233:                                              ; preds = %227
  %234 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_DOWN, align 4
  %235 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_PASS, align 4
  %236 = or i32 %234, %235
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %8, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG, align 4
  %241 = load i32, i32* @MVPP2_GMAC_AN_SPEED_EN, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @MVPP2_GMAC_AN_DUPLEX_EN, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %8, align 4
  %247 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %248 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @MLO_PAUSE_TX, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %233
  %254 = load i32, i32* @MVPP22_CTRL4_TX_FC_EN, align 4
  %255 = load i32, i32* %14, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %253, %233
  %258 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %259 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @MLO_PAUSE_RX, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load i32, i32* @MVPP22_CTRL4_RX_FC_EN, align 4
  %266 = load i32, i32* %14, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %14, align 4
  br label %268

268:                                              ; preds = %264, %257
  br label %332

269:                                              ; preds = %227
  %270 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %271 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @phy_interface_mode_is_8023z(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %331

275:                                              ; preds = %269
  %276 = load i32, i32* @MVPP2_GMAC_PORT_TYPE_MASK, align 4
  %277 = load i32, i32* %10, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_DOWN, align 4
  %280 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_PASS, align 4
  %281 = or i32 %279, %280
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %8, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG, align 4
  %286 = load i32, i32* @MVPP2_GMAC_CONFIG_GMII_SPEED, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @MVPP2_GMAC_CONFIG_FULL_DUPLEX, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %8, align 4
  %292 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %293 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @MLO_PAUSE_AN, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %275
  %299 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %300 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = load i32, i32* @MVPP2_GMAC_FLOW_CTRL_AUTONEG, align 4
  %305 = load i32, i32* %8, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %8, align 4
  br label %330

307:                                              ; preds = %298, %275
  %308 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %309 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @MLO_PAUSE_TX, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load i32, i32* @MVPP22_CTRL4_TX_FC_EN, align 4
  %316 = load i32, i32* %14, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %314, %307
  %319 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %320 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @MLO_PAUSE_RX, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = load i32, i32* @MVPP22_CTRL4_RX_FC_EN, align 4
  %327 = load i32, i32* %14, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %14, align 4
  br label %329

329:                                              ; preds = %325, %318
  br label %330

330:                                              ; preds = %329, %303
  br label %331

331:                                              ; preds = %330, %269
  br label %332

332:                                              ; preds = %331, %268
  br label %333

333:                                              ; preds = %332, %226
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %10, align 4
  %336 = xor i32 %334, %335
  %337 = load i32, i32* @MVPP2_GMAC_PORT_TYPE_MASK, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %366, label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %12, align 4
  %343 = xor i32 %341, %342
  %344 = load i32, i32* @MVPP2_GMAC_INBAND_AN_MASK, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %366, label %347

347:                                              ; preds = %340
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %8, align 4
  %350 = xor i32 %348, %349
  %351 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG, align 4
  %352 = load i32, i32* @MVPP2_GMAC_IN_BAND_AUTONEG_BYPASS, align 4
  %353 = or i32 %351, %352
  %354 = load i32, i32* @MVPP2_GMAC_CONFIG_MII_SPEED, align 4
  %355 = or i32 %353, %354
  %356 = load i32, i32* @MVPP2_GMAC_CONFIG_GMII_SPEED, align 4
  %357 = or i32 %355, %356
  %358 = load i32, i32* @MVPP2_GMAC_AN_SPEED_EN, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* @MVPP2_GMAC_CONFIG_FULL_DUPLEX, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @MVPP2_GMAC_AN_DUPLEX_EN, align 4
  %363 = or i32 %361, %362
  %364 = and i32 %350, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %347, %340, %333
  %367 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_PASS, align 4
  %368 = xor i32 %367, -1
  %369 = load i32, i32* %7, align 4
  %370 = and i32 %369, %368
  store i32 %370, i32* %7, align 4
  %371 = load i32, i32* @MVPP2_GMAC_FORCE_LINK_DOWN, align 4
  %372 = load i32, i32* %7, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %7, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %376 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %379 = add nsw i64 %377, %378
  %380 = call i32 @writel(i32 %374, i64 %379)
  %381 = load i32, i32* @MVPP2_GMAC_PORT_RESET_MASK, align 4
  %382 = load i32, i32* %11, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %11, align 4
  %384 = load i32, i32* %11, align 4
  %385 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %386 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @MVPP2_GMAC_CTRL_2_REG, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @writel(i32 %384, i64 %389)
  br label %391

391:                                              ; preds = %366, %347
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %10, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %395, label %403

395:                                              ; preds = %391
  %396 = load i32, i32* %10, align 4
  %397 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %398 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @MVPP2_GMAC_CTRL_0_REG, align 8
  %401 = add nsw i64 %399, %400
  %402 = call i32 @writel(i32 %396, i64 %401)
  br label %403

403:                                              ; preds = %395, %391
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* %12, align 4
  %406 = icmp ne i32 %404, %405
  br i1 %406, label %407, label %415

407:                                              ; preds = %403
  %408 = load i32, i32* %12, align 4
  %409 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %410 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @MVPP2_GMAC_CTRL_2_REG, align 8
  %413 = add nsw i64 %411, %412
  %414 = call i32 @writel(i32 %408, i64 %413)
  br label %415

415:                                              ; preds = %407, %403
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* %14, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %415
  %420 = load i32, i32* %14, align 4
  %421 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %422 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @MVPP22_GMAC_CTRL_4_REG, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @writel(i32 %420, i64 %425)
  br label %427

427:                                              ; preds = %419, %415
  %428 = load i32, i32* %7, align 4
  %429 = load i32, i32* %8, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %439

431:                                              ; preds = %427
  %432 = load i32, i32* %8, align 4
  %433 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %434 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @MVPP2_GMAC_AUTONEG_CONFIG, align 8
  %437 = add nsw i64 %435, %436
  %438 = call i32 @writel(i32 %432, i64 %437)
  br label %439

439:                                              ; preds = %431, %427
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* @MVPP2_GMAC_PORT_RESET_MASK, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %457

444:                                              ; preds = %439
  br label %445

445:                                              ; preds = %455, %444
  %446 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %447 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @MVPP2_GMAC_CTRL_2_REG, align 8
  %450 = add nsw i64 %448, %449
  %451 = call i32 @readl(i64 %450)
  %452 = load i32, i32* @MVPP2_GMAC_PORT_RESET_MASK, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %445
  br label %445

456:                                              ; preds = %445
  br label %457

457:                                              ; preds = %456, %439
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phylink_test(i32, i32) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
