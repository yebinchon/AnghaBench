; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_config = type { i32 }
%struct.phylink_link_state = type { i64, i32, i64, i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.mvneta_port = type { i64, i64 }

@MVNETA_GMAC_CTRL_0 = common dso_local global i32 0, align 4
@MVNETA_GMAC_CTRL_2 = common dso_local global i32 0, align 4
@MVNETA_GMAC_CTRL_4 = common dso_local global i32 0, align 4
@MVNETA_GMAC_CLOCK_DIVIDER = common dso_local global i32 0, align 4
@MVNETA_GMAC_AUTONEG_CONFIG = common dso_local global i32 0, align 4
@MVNETA_GMAC0_PORT_1000BASE_X = common dso_local global i32 0, align 4
@MVNETA_GMAC2_INBAND_AN_ENABLE = common dso_local global i32 0, align 4
@MVNETA_GMAC2_PORT_RESET = common dso_local global i32 0, align 4
@MVNETA_GMAC4_SHORT_PREAMBLE_ENABLE = common dso_local global i32 0, align 4
@MVNETA_GMAC_1MS_CLOCK_ENABLE = common dso_local global i32 0, align 4
@MVNETA_GMAC_INBAND_AN_ENABLE = common dso_local global i32 0, align 4
@MVNETA_GMAC_INBAND_RESTART_AN = common dso_local global i32 0, align 4
@MVNETA_GMAC_CONFIG_MII_SPEED = common dso_local global i32 0, align 4
@MVNETA_GMAC_CONFIG_GMII_SPEED = common dso_local global i32 0, align 4
@MVNETA_GMAC_AN_SPEED_EN = common dso_local global i32 0, align 4
@MVNETA_GMAC_ADVERT_SYM_FLOW_CTRL = common dso_local global i32 0, align 4
@MVNETA_GMAC_CONFIG_FLOW_CTRL = common dso_local global i32 0, align 4
@MVNETA_GMAC_AN_FLOW_CTRL_EN = common dso_local global i32 0, align 4
@MVNETA_GMAC_CONFIG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MVNETA_GMAC_AN_DUPLEX_EN = common dso_local global i32 0, align 4
@MVNETA_GMAC2_PORT_RGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_QSGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVNETA_GMAC2_PCS_ENABLE = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@MLO_PAUSE_TXRX_MASK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@MVNETA_GMAC_FORCE_LINK_DOWN = common dso_local global i32 0, align 4
@MVNETA_GMAC_FORCE_LINK_PASS = common dso_local global i32 0, align 4
@MLO_PAUSE_AN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink_config*, i32, %struct.phylink_link_state*)* @mvneta_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_mac_config(%struct.phylink_config* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.phylink_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mvneta_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.phylink_config* %0, %struct.phylink_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %19 = load %struct.phylink_config*, %struct.phylink_config** %4, align 8
  %20 = getelementptr inbounds %struct.phylink_config, %struct.phylink_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net_device* @to_net_dev(i32 %21)
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %23)
  store %struct.mvneta_port* %24, %struct.mvneta_port** %8, align 8
  %25 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %26 = load i32, i32* @MVNETA_GMAC_CTRL_0, align 4
  %27 = call i32 @mvreg_read(%struct.mvneta_port* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %29 = load i32, i32* @MVNETA_GMAC_CTRL_2, align 4
  %30 = call i32 @mvreg_read(%struct.mvneta_port* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %32 = load i32, i32* @MVNETA_GMAC_CTRL_4, align 4
  %33 = call i32 @mvreg_read(%struct.mvneta_port* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %35 = load i32, i32* @MVNETA_GMAC_CLOCK_DIVIDER, align 4
  %36 = call i32 @mvreg_read(%struct.mvneta_port* %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %38 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %39 = call i32 @mvreg_read(%struct.mvneta_port* %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MVNETA_GMAC0_PORT_1000BASE_X, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MVNETA_GMAC2_INBAND_AN_ENABLE, align 4
  %46 = load i32, i32* @MVNETA_GMAC2_PORT_RESET, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @MVNETA_GMAC4_SHORT_PREAMBLE_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @MVNETA_GMAC_1MS_CLOCK_ENABLE, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @MVNETA_GMAC_INBAND_AN_ENABLE, align 4
  %60 = load i32, i32* @MVNETA_GMAC_INBAND_RESTART_AN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MVNETA_GMAC_CONFIG_MII_SPEED, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MVNETA_GMAC_CONFIG_GMII_SPEED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MVNETA_GMAC_AN_SPEED_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MVNETA_GMAC_ADVERT_SYM_FLOW_CTRL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MVNETA_GMAC_CONFIG_FLOW_CTRL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MVNETA_GMAC_AN_FLOW_CTRL_EN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MVNETA_GMAC_CONFIG_FULL_DUPLEX, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MVNETA_GMAC_AN_DUPLEX_EN, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %58, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* @MVNETA_GMAC2_PORT_RGMII, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %84 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PHY_INTERFACE_MODE_QSGMII, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %3
  %89 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %90 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %96 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @phy_interface_mode_is_8023z(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %88, %3
  %101 = load i32, i32* @MVNETA_GMAC2_PCS_ENABLE, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %106 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @Pause, align 4
  %109 = call i64 @phylink_test(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* @MVNETA_GMAC_ADVERT_SYM_FLOW_CTRL, align 4
  %113 = load i32, i32* %17, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %117 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @MVNETA_GMAC_CONFIG_FLOW_CTRL, align 4
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @phylink_autoneg_inband(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %167, label %130

130:                                              ; preds = %126
  %131 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %132 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @MVNETA_GMAC_CONFIG_FULL_DUPLEX, align 4
  %137 = load i32, i32* %17, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %141 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SPEED_1000, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %147 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SPEED_2500, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145, %139
  %152 = load i32, i32* @MVNETA_GMAC_CONFIG_GMII_SPEED, align 4
  %153 = load i32, i32* %17, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %17, align 4
  br label %166

155:                                              ; preds = %145
  %156 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %157 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SPEED_100, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @MVNETA_GMAC_CONFIG_MII_SPEED, align 4
  %163 = load i32, i32* %17, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %151
  br label %228

167:                                              ; preds = %126
  %168 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %169 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %167
  %174 = load i32, i32* @MVNETA_GMAC2_INBAND_AN_ENABLE, align 4
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* @MVNETA_GMAC_1MS_CLOCK_ENABLE, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_DOWN, align 4
  %182 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_PASS, align 4
  %183 = or i32 %181, %182
  %184 = xor i32 %183, -1
  %185 = and i32 %180, %184
  %186 = load i32, i32* @MVNETA_GMAC_INBAND_AN_ENABLE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @MVNETA_GMAC_AN_SPEED_EN, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @MVNETA_GMAC_AN_DUPLEX_EN, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %17, align 4
  br label %227

192:                                              ; preds = %167
  %193 = load i32, i32* @MVNETA_GMAC0_PORT_1000BASE_X, align 4
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* @MVNETA_GMAC_1MS_CLOCK_ENABLE, align 4
  %197 = load i32, i32* %15, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_DOWN, align 4
  %201 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_PASS, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 %202, -1
  %204 = and i32 %199, %203
  %205 = load i32, i32* @MVNETA_GMAC_INBAND_AN_ENABLE, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @MVNETA_GMAC_CONFIG_GMII_SPEED, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @MVNETA_GMAC_CONFIG_FULL_DUPLEX, align 4
  %210 = or i32 %208, %209
  store i32 %210, i32* %17, align 4
  %211 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %212 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MLO_PAUSE_AN, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %192
  %218 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %219 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32, i32* @MVNETA_GMAC_AN_FLOW_CTRL_EN, align 4
  %224 = load i32, i32* %17, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %222, %217, %192
  br label %227

227:                                              ; preds = %226, %173
  br label %228

228:                                              ; preds = %227, %166
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = xor i32 %229, %230
  %232 = load i32, i32* @MVNETA_GMAC0_PORT_1000BASE_X, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %249, label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %12, align 4
  %238 = xor i32 %236, %237
  %239 = load i32, i32* @MVNETA_GMAC2_INBAND_AN_ENABLE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %235
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = xor i32 %243, %244
  %246 = load i32, i32* @MVNETA_GMAC_INBAND_AN_ENABLE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %242, %235, %228
  %250 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %251 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_PASS, align 4
  %254 = xor i32 %253, -1
  %255 = and i32 %252, %254
  %256 = load i32, i32* @MVNETA_GMAC_FORCE_LINK_DOWN, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @mvreg_write(%struct.mvneta_port* %250, i32 %251, i32 %257)
  br label %259

259:                                              ; preds = %249, %242
  %260 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %261 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SPEED_2500, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i32, i32* @MVNETA_GMAC4_SHORT_PREAMBLE_ENABLE, align 4
  %267 = load i32, i32* %13, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %265, %259
  %270 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %271 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %314

274:                                              ; preds = %269
  %275 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %276 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %279 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %277, %280
  br i1 %281, label %282, label %314

282:                                              ; preds = %274
  %283 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %284 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %300, label %288

288:                                              ; preds = %282
  %289 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %290 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @PHY_INTERFACE_MODE_1000BASEX, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %300, label %294

294:                                              ; preds = %288
  %295 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %296 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %314

300:                                              ; preds = %294, %288, %282
  %301 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %302 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %305 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %304, i32 0, i32 0
  store i64 %303, i64* %305, align 8
  %306 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %307 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @phy_power_off(i64 %308)
  %310 = call i32 @WARN_ON(i32 %309)
  %311 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %312 = call i32 @mvneta_comphy_init(%struct.mvneta_port* %311)
  %313 = call i32 @WARN_ON(i32 %312)
  br label %314

314:                                              ; preds = %300, %294, %274, %269
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %320 = load i32, i32* @MVNETA_GMAC_CTRL_0, align 4
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @mvreg_write(%struct.mvneta_port* %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %314
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* %12, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %323
  %328 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %329 = load i32, i32* @MVNETA_GMAC_CTRL_2, align 4
  %330 = load i32, i32* %11, align 4
  %331 = call i32 @mvreg_write(%struct.mvneta_port* %328, i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %327, %323
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %14, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %338 = load i32, i32* @MVNETA_GMAC_CTRL_4, align 4
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @mvreg_write(%struct.mvneta_port* %337, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %336, %332
  %342 = load i32, i32* %15, align 4
  %343 = load i32, i32* %16, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %347 = load i32, i32* @MVNETA_GMAC_CLOCK_DIVIDER, align 4
  %348 = load i32, i32* %15, align 4
  %349 = call i32 @mvreg_write(%struct.mvneta_port* %346, i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %345, %341
  %351 = load i32, i32* %17, align 4
  %352 = load i32, i32* %18, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %356 = load i32, i32* @MVNETA_GMAC_AUTONEG_CONFIG, align 4
  %357 = load i32, i32* %17, align 4
  %358 = call i32 @mvreg_write(%struct.mvneta_port* %355, i32 %356, i32 %357)
  br label %359

359:                                              ; preds = %354, %350
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* @MVNETA_GMAC2_PORT_RESET, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %359
  br label %365

365:                                              ; preds = %372, %364
  %366 = load %struct.mvneta_port*, %struct.mvneta_port** %8, align 8
  %367 = load i32, i32* @MVNETA_GMAC_CTRL_2, align 4
  %368 = call i32 @mvreg_read(%struct.mvneta_port* %366, i32 %367)
  %369 = load i32, i32* @MVNETA_GMAC2_PORT_RESET, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  br label %365

373:                                              ; preds = %365
  br label %374

374:                                              ; preds = %373, %359
  ret void
}

declare dso_local %struct.net_device* @to_net_dev(i32) #1

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i64 @phylink_test(i32, i32) #1

declare dso_local i32 @phylink_autoneg_inband(i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @phy_power_off(i64) #1

declare dso_local i32 @mvneta_comphy_init(%struct.mvneta_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
