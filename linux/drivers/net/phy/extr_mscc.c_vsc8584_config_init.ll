; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.vsc8531_private* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vsc8531_private = type { i32, i32, i32*, i64 }

@ETH_TP_MDI_AUTO = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_PHY_CNTL_4 = common dso_local global i32 0, align 4
@PHY_CNTL_4_ADDR_POS = common dso_local global i32 0, align 4
@MSCC_PHY_ACTIPHY_CNTL = common dso_local global i32 0, align 4
@PHY_ADDR_REVERSED = common dso_local global i32 0, align 4
@PHY_ID_VSC8574 = common dso_local global i32 0, align 4
@PHY_ID_VSC8584 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_GPIO = common dso_local global i32 0, align 4
@MSCC_PHY_MAC_CFG_FASTLINK = common dso_local global i32 0, align 4
@MAC_CFG_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_QSGMII = common dso_local global i64 0, align 8
@MAC_CFG_QSGMII = common dso_local global i32 0, align 4
@MAC_CFG_SGMII = common dso_local global i32 0, align 4
@PROC_CMD_MCB_ACCESS_MAC_CONF = common dso_local global i32 0, align 4
@PROC_CMD_RST_CONF_PORT = common dso_local global i32 0, align 4
@PROC_CMD_READ_MOD_WRITE_PORT = common dso_local global i32 0, align 4
@PROC_CMD_QSGMII_MAC = common dso_local global i32 0, align 4
@PROC_CMD_SGMII_MAC = common dso_local global i32 0, align 4
@PROC_CMD_FIBER_MEDIA_CONF = common dso_local global i32 0, align 4
@PROC_CMD_FIBER_DISABLE = common dso_local global i32 0, align 4
@PROC_CMD_FIBER_100BASE_FX = common dso_local global i32 0, align 4
@PROC_CMD_FIBER_1000BASE_X = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_PHY_CNTL_1 = common dso_local global i32 0, align 4
@MEDIA_OP_MODE_MASK = common dso_local global i32 0, align 4
@VSC8584_MAC_IF_SELECTION_MASK = common dso_local global i32 0, align 4
@MEDIA_OP_MODE_COPPER = common dso_local global i32 0, align 4
@VSC8584_MAC_IF_SELECTION_SGMII = common dso_local global i32 0, align 4
@VSC8584_MAC_IF_SELECTION_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8584_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.vsc8531_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 5
  %11 = load %struct.vsc8531_private*, %struct.vsc8531_private** %10, align 8
  store %struct.vsc8531_private* %11, %struct.vsc8531_private** %4, align 8
  %12 = load i32, i32* @ETH_TP_MDI_AUTO, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %30 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %31 = call i32 @__mdiobus_write(%struct.TYPE_7__* %24, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_4, align 4
  %41 = call i32 @__mdiobus_read(%struct.TYPE_7__* %35, i64 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @PHY_CNTL_4_ADDR_POS, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @MSCC_PHY_ACTIPHY_CNTL, align 4
  %54 = call i32 @__mdiobus_read(%struct.TYPE_7__* %48, i64 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PHY_ADDR_REVERSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %1
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %68 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  br label %79

69:                                               ; preds = %1
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %78 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %59
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @PHY_ADDR_REVERSED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = call i32 @vsc8584_is_pkg_init(%struct.phy_device* %80, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %140, label %89

89:                                               ; preds = %79
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %92, %97
  %99 = load i32, i32* @PHY_ID_VSC8574, align 4
  %100 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %99, %104
  %106 = icmp eq i32 %98, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %109 = call i32 @vsc8574_config_pre_init(%struct.phy_device* %108)
  store i32 %109, i32* %7, align 4
  br label %135

110:                                              ; preds = %89
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %115 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %114, i32 0, i32 3
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %113, %118
  %120 = load i32, i32* @PHY_ID_VSC8584, align 4
  %121 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %122 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %120, %125
  %127 = icmp eq i32 %119, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %110
  %129 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %130 = call i32 @vsc8584_config_pre_init(%struct.phy_device* %129)
  store i32 %130, i32* %7, align 4
  br label %134

131:                                              ; preds = %110
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %107
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %302

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %79
  %141 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %142 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %144 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %145 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_GPIO, align 4
  %146 = call i32 @phy_base_write(%struct.phy_device* %143, i32 %144, i32 %145)
  %147 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %148 = load i32, i32* @MSCC_PHY_MAC_CFG_FASTLINK, align 4
  %149 = call i32 @phy_base_read(%struct.phy_device* %147, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* @MAC_CFG_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %155 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PHY_INTERFACE_MODE_QSGMII, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %140
  %160 = load i32, i32* @MAC_CFG_QSGMII, align 4
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %167

163:                                              ; preds = %140
  %164 = load i32, i32* @MAC_CFG_SGMII, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %169 = load i32, i32* @MSCC_PHY_MAC_CFG_FASTLINK, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @phy_base_write(%struct.phy_device* %168, i32 %169, i32 %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %302

175:                                              ; preds = %167
  %176 = load i32, i32* @PROC_CMD_MCB_ACCESS_MAC_CONF, align 4
  %177 = load i32, i32* @PROC_CMD_RST_CONF_PORT, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @PROC_CMD_READ_MOD_WRITE_PORT, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %6, align 4
  %181 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %182 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PHY_INTERFACE_MODE_QSGMII, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = load i32, i32* @PROC_CMD_QSGMII_MAC, align 4
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  br label %194

190:                                              ; preds = %175
  %191 = load i32, i32* @PROC_CMD_SGMII_MAC, align 4
  %192 = load i32, i32* %6, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @vsc8584_cmd(%struct.phy_device* %195, i32 %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %302

201:                                              ; preds = %194
  %202 = call i32 @usleep_range(i32 10000, i32 20000)
  %203 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %204 = load i32, i32* @PROC_CMD_FIBER_MEDIA_CONF, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @PROC_CMD_FIBER_PORT(i32 %205)
  %207 = or i32 %204, %206
  %208 = load i32, i32* @PROC_CMD_FIBER_DISABLE, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @PROC_CMD_READ_MOD_WRITE_PORT, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @PROC_CMD_RST_CONF_PORT, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @PROC_CMD_FIBER_100BASE_FX, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @vsc8584_cmd(%struct.phy_device* %203, i32 %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %201
  br label %302

220:                                              ; preds = %201
  %221 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %222 = load i32, i32* @PROC_CMD_FIBER_MEDIA_CONF, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @PROC_CMD_FIBER_PORT(i32 %223)
  %225 = or i32 %222, %224
  %226 = load i32, i32* @PROC_CMD_FIBER_DISABLE, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @PROC_CMD_READ_MOD_WRITE_PORT, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @PROC_CMD_RST_CONF_PORT, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @PROC_CMD_FIBER_1000BASE_X, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @vsc8584_cmd(%struct.phy_device* %221, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %220
  br label %302

238:                                              ; preds = %220
  %239 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %240 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = call i32 @mutex_unlock(i32* %243)
  %245 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %246 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %247 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %248 = call i32 @phy_write(%struct.phy_device* %245, i32 %246, i32 %247)
  %249 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %250 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_1, align 4
  %251 = call i32 @phy_read(%struct.phy_device* %249, i32 %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* @MEDIA_OP_MODE_MASK, align 4
  %253 = load i32, i32* @VSC8584_MAC_IF_SELECTION_MASK, align 4
  %254 = or i32 %252, %253
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %6, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* @MEDIA_OP_MODE_COPPER, align 4
  %259 = load i32, i32* @VSC8584_MAC_IF_SELECTION_SGMII, align 4
  %260 = load i32, i32* @VSC8584_MAC_IF_SELECTION_POS, align 4
  %261 = shl i32 %259, %260
  %262 = or i32 %258, %261
  %263 = load i32, i32* %6, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %6, align 4
  %265 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %266 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_1, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @phy_write(%struct.phy_device* %265, i32 %266, i32 %267)
  store i32 %268, i32* %7, align 4
  %269 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %270 = call i32 @genphy_soft_reset(%struct.phy_device* %269)
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %238
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %2, align 4
  br label %310

275:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %276

276:                                              ; preds = %298, %275
  %277 = load i32, i32* %8, align 4
  %278 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %279 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %276
  %283 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.vsc8531_private*, %struct.vsc8531_private** %4, align 8
  %286 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @vsc85xx_led_cntl_set(%struct.phy_device* %283, i32 %284, i32 %291)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %282
  %296 = load i32, i32* %7, align 4
  store i32 %296, i32* %2, align 4
  br label %310

297:                                              ; preds = %282
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %276

301:                                              ; preds = %276
  store i32 0, i32* %2, align 4
  br label %310

302:                                              ; preds = %237, %219, %200, %174, %138
  %303 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %304 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = call i32 @mutex_unlock(i32* %307)
  %309 = load i32, i32* %7, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %302, %301, %295, %273
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mdiobus_write(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @__mdiobus_read(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @vsc8584_is_pkg_init(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8574_config_pre_init(%struct.phy_device*) #1

declare dso_local i32 @vsc8584_config_pre_init(%struct.phy_device*) #1

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8584_cmd(%struct.phy_device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @PROC_CMD_FIBER_PORT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

declare dso_local i32 @vsc85xx_led_cntl_set(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
