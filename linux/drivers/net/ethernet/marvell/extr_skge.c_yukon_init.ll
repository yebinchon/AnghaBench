; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i32* }
%struct.skge_port = type { i64, i32, i64, i64, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PHY_MARV_EXT_CTRL = common dso_local global i32 0, align 4
@PHY_M_EC_M_DSC_MSK = common dso_local global i32 0, align 4
@PHY_M_EC_S_DSC_MSK = common dso_local global i32 0, align 4
@PHY_M_EC_MAC_S_MSK = common dso_local global i32 0, align 4
@MAC_TX_CLK_25_MHZ = common dso_local global i32 0, align 4
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@PHY_CT_ANE = common dso_local global i32 0, align 4
@PHY_CT_RESET = common dso_local global i32 0, align 4
@PHY_AN_CSMA = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PHY_M_1000C_AFD = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@PHY_M_1000C_AHD = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PHY_M_AN_100_FD = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@PHY_M_AN_100_HD = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@PHY_M_AN_10_FD = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@PHY_M_AN_10_HD = common dso_local global i32 0, align 4
@phy_pause_map = common dso_local global i32* null, align 8
@PHY_M_AN_1000X_AFD = common dso_local global i32 0, align 4
@PHY_M_AN_1000X_AHD = common dso_local global i32 0, align 4
@fiber_pause_map = common dso_local global i32* null, align 8
@PHY_CT_RE_CFG = common dso_local global i32 0, align 4
@PHY_M_1000C_MSE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PHY_CT_DUP_MD = common dso_local global i32 0, align 4
@PHY_CT_SP1000 = common dso_local global i32 0, align 4
@PHY_CT_SP100 = common dso_local global i32 0, align 4
@PHY_MARV_1000T_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@PHY_M_IS_AN_MSK = common dso_local global i32 0, align 4
@PHY_M_IS_DEF_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @yukon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_init(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %11 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.skge_port* @netdev_priv(i32 %16)
  store %struct.skge_port* %17, %struct.skge_port** %5, align 8
  %18 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %19 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_ENABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PHY_MARV_EXT_CTRL, align 4
  %27 = call i32 @gm_phy_read(%struct.skge_hw* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @PHY_M_EC_M_DSC_MSK, align 4
  %29 = load i32, i32* @PHY_M_EC_S_DSC_MSK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PHY_M_EC_MAC_S_MSK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @MAC_TX_CLK_25_MHZ, align 4
  %37 = call i32 @PHY_M_EC_MAC_S(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = call i32 @PHY_M_EC_M_DSC(i32 0)
  %41 = call i32 @PHY_M_EC_S_DSC(i32 1)
  %42 = or i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PHY_MARV_EXT_CTRL, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gm_phy_write(%struct.skge_hw* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %23, %2
  %51 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PHY_MARV_CTRL, align 4
  %54 = call i32 @gm_phy_read(%struct.skge_hw* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %56 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AUTONEG_DISABLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @PHY_CT_ANE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* @PHY_CT_RESET, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PHY_MARV_CTRL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @gm_phy_write(%struct.skge_hw* %69, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %74 = load i32, i32* @PHY_AN_CSMA, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %76 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AUTONEG_ENABLE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %197

80:                                               ; preds = %65
  %81 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %82 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %160

85:                                               ; preds = %80
  %86 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %87 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @PHY_M_1000C_AFD, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %98 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @PHY_M_1000C_AHD, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %109 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @PHY_M_AN_100_FD, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %120 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @PHY_M_AN_100_HD, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %131 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @PHY_M_AN_10_FD, align 4
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %142 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @PHY_M_AN_10_HD, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i32*, i32** @phy_pause_map, align 8
  %153 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %154 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %191

160:                                              ; preds = %80
  %161 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %162 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @PHY_M_AN_1000X_AFD, align 4
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %167, %160
  %172 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %173 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* @PHY_M_AN_1000X_AHD, align 4
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %178, %171
  %183 = load i32*, i32** @fiber_pause_map, align 8
  %184 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %185 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %8, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %182, %151
  %192 = load i32, i32* @PHY_CT_ANE, align 4
  %193 = load i32, i32* @PHY_CT_RE_CFG, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %6, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %6, align 4
  br label %224

197:                                              ; preds = %65
  %198 = load i32, i32* @PHY_M_1000C_MSE, align 4
  store i32 %198, i32* %7, align 4
  %199 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %200 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @DUPLEX_FULL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i32, i32* @PHY_CT_DUP_MD, align 4
  %206 = load i32, i32* %6, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %204, %197
  %209 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %210 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %220 [
    i32 128, label %212
    i32 129, label %216
  ]

212:                                              ; preds = %208
  %213 = load i32, i32* @PHY_CT_SP1000, align 4
  %214 = load i32, i32* %6, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %6, align 4
  br label %220

216:                                              ; preds = %208
  %217 = load i32, i32* @PHY_CT_SP100, align 4
  %218 = load i32, i32* %6, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %208, %216, %212
  %221 = load i32, i32* @PHY_CT_RESET, align 4
  %222 = load i32, i32* %6, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %220, %191
  %225 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @PHY_MARV_1000T_CTRL, align 4
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @gm_phy_write(%struct.skge_hw* %225, i32 %226, i32 %227, i32 %228)
  %230 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @gm_phy_write(%struct.skge_hw* %230, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @PHY_MARV_CTRL, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @gm_phy_write(%struct.skge_hw* %235, i32 %236, i32 %237, i32 %238)
  %240 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %241 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @AUTONEG_ENABLE, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %224
  %246 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %249 = load i32, i32* @PHY_M_IS_AN_MSK, align 4
  %250 = call i32 @gm_phy_write(%struct.skge_hw* %246, i32 %247, i32 %248, i32 %249)
  br label %257

251:                                              ; preds = %224
  %252 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %255 = load i32, i32* @PHY_M_IS_DEF_MSK, align 4
  %256 = call i32 @gm_phy_write(%struct.skge_hw* %252, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %251, %245
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(i32) #1

declare dso_local i32 @gm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @PHY_M_EC_MAC_S(i32) #1

declare dso_local i32 @PHY_M_EC_M_DSC(i32) #1

declare dso_local i32 @PHY_M_EC_S_DSC(i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
