; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_w_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_w_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_RESET = common dso_local global i32 0, align 4
@P_SPEED_STATUS = common dso_local global i32 0, align 4
@PHY_HP_MDIX = common dso_local global i32 0, align 4
@PORT_HP_MDIX = common dso_local global i64 0, align 8
@P_FORCE_CTRL = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_DISABLE = common dso_local global i64 0, align 8
@PHY_SPEED_100MBIT = common dso_local global i32 0, align 4
@PORT_FORCE_100_MBIT = common dso_local global i64 0, align 8
@PHY_FULL_DUPLEX = common dso_local global i32 0, align 4
@PORT_FORCE_FULL_DUPLEX = common dso_local global i64 0, align 8
@P_NEG_RESTART_CTRL = common dso_local global i32 0, align 4
@PHY_LED_DISABLE = common dso_local global i32 0, align 4
@PORT_LED_OFF = common dso_local global i64 0, align 8
@PHY_TRANSMIT_DISABLE = common dso_local global i32 0, align 4
@PORT_TX_DISABLE = common dso_local global i64 0, align 8
@PHY_AUTO_NEG_RESTART = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_RESTART = common dso_local global i64 0, align 8
@PHY_POWER_DOWN = common dso_local global i32 0, align 4
@PORT_POWER_DOWN = common dso_local global i64 0, align 8
@PHY_AUTO_MDIX_DISABLE = common dso_local global i32 0, align 4
@PORT_AUTO_MDIX_DISABLE = common dso_local global i64 0, align 8
@PHY_FORCE_MDIX = common dso_local global i32 0, align 4
@PORT_FORCE_MDIX = common dso_local global i64 0, align 8
@PHY_LOOPBACK = common dso_local global i32 0, align 4
@PORT_PHY_LOOPBACK = common dso_local global i64 0, align 8
@P_LOCAL_CTRL = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_SYM_PAUSE = common dso_local global i64 0, align 8
@PORT_AUTO_NEG_100BTX_FD = common dso_local global i64 0, align 8
@PORT_AUTO_NEG_100BTX = common dso_local global i64 0, align 8
@PORT_AUTO_NEG_10BT_FD = common dso_local global i64 0, align 8
@PORT_AUTO_NEG_10BT = common dso_local global i64 0, align 8
@PHY_AUTO_NEG_SYM_PAUSE = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_100BTX_FD = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_100BTX = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_10BT_FD = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_10BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32, i32)* @ksz8795_w_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_w_phy(%struct.ksz_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ksz_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %309 [
    i32 128, label %17
    i32 129, label %236
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PHY_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %310

23:                                               ; preds = %17
  %24 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @P_SPEED_STATUS, align 4
  %27 = call i32 @ksz_pread8(%struct.ksz_device* %24, i64 %25, i32 %26, i64* %11)
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PHY_HP_MDIX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i64, i64* @PORT_HP_MDIX, align 8
  %35 = load i64, i64* %13, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %13, align 8
  br label %42

37:                                               ; preds = %23
  %38 = load i64, i64* @PORT_HP_MDIX, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %13, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @P_SPEED_STATUS, align 4
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @ksz_pwrite8(%struct.ksz_device* %47, i64 %48, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* @P_FORCE_CTRL, align 4
  %56 = call i32 @ksz_pread8(%struct.ksz_device* %53, i64 %54, i32 %55, i64* %12)
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PHY_AUTO_NEG_ENABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* @PORT_AUTO_NEG_DISABLE, align 8
  %64 = load i64, i64* %13, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %13, align 8
  br label %71

66:                                               ; preds = %52
  %67 = load i64, i64* @PORT_AUTO_NEG_DISABLE, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %13, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %73 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i64, i64* @PORT_AUTO_NEG_DISABLE, align 8
  %82 = load i64, i64* %13, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PHY_SPEED_100MBIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, i64* @PORT_FORCE_100_MBIT, align 8
  %91 = load i64, i64* %13, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %98

93:                                               ; preds = %84
  %94 = load i64, i64* @PORT_FORCE_100_MBIT, align 8
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %13, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PHY_FULL_DUPLEX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i64, i64* @PORT_FORCE_FULL_DUPLEX, align 8
  %105 = load i64, i64* %13, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %13, align 8
  br label %112

107:                                              ; preds = %98
  %108 = load i64, i64* @PORT_FORCE_FULL_DUPLEX, align 8
  %109 = xor i64 %108, -1
  %110 = load i64, i64* %13, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %13, align 8
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* @P_FORCE_CTRL, align 4
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @ksz_pwrite8(%struct.ksz_device* %117, i64 %118, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i32, i32* @P_NEG_RESTART_CTRL, align 4
  %126 = call i32 @ksz_pread8(%struct.ksz_device* %123, i64 %124, i32 %125, i64* %10)
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @PHY_LED_DISABLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i64, i64* @PORT_LED_OFF, align 8
  %134 = load i64, i64* %13, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %13, align 8
  br label %141

136:                                              ; preds = %122
  %137 = load i64, i64* @PORT_LED_OFF, align 8
  %138 = xor i64 %137, -1
  %139 = load i64, i64* %13, align 8
  %140 = and i64 %139, %138
  store i64 %140, i64* %13, align 8
  br label %141

141:                                              ; preds = %136, %132
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @PHY_TRANSMIT_DISABLE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i64, i64* @PORT_TX_DISABLE, align 8
  %148 = load i64, i64* %13, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %13, align 8
  br label %155

150:                                              ; preds = %141
  %151 = load i64, i64* @PORT_TX_DISABLE, align 8
  %152 = xor i64 %151, -1
  %153 = load i64, i64* %13, align 8
  %154 = and i64 %153, %152
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %150, %146
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @PHY_AUTO_NEG_RESTART, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i64, i64* @PORT_AUTO_NEG_RESTART, align 8
  %162 = load i64, i64* %13, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %13, align 8
  br label %169

164:                                              ; preds = %155
  %165 = load i64, i64* @PORT_AUTO_NEG_RESTART, align 8
  %166 = xor i64 %165, -1
  %167 = load i64, i64* %13, align 8
  %168 = and i64 %167, %166
  store i64 %168, i64* %13, align 8
  br label %169

169:                                              ; preds = %164, %160
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @PHY_POWER_DOWN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i64, i64* @PORT_POWER_DOWN, align 8
  %176 = load i64, i64* %13, align 8
  %177 = or i64 %176, %175
  store i64 %177, i64* %13, align 8
  br label %183

178:                                              ; preds = %169
  %179 = load i64, i64* @PORT_POWER_DOWN, align 8
  %180 = xor i64 %179, -1
  %181 = load i64, i64* %13, align 8
  %182 = and i64 %181, %180
  store i64 %182, i64* %13, align 8
  br label %183

183:                                              ; preds = %178, %174
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @PHY_AUTO_MDIX_DISABLE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i64, i64* @PORT_AUTO_MDIX_DISABLE, align 8
  %190 = load i64, i64* %13, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %13, align 8
  br label %197

192:                                              ; preds = %183
  %193 = load i64, i64* @PORT_AUTO_MDIX_DISABLE, align 8
  %194 = xor i64 %193, -1
  %195 = load i64, i64* %13, align 8
  %196 = and i64 %195, %194
  store i64 %196, i64* %13, align 8
  br label %197

197:                                              ; preds = %192, %188
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @PHY_FORCE_MDIX, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i64, i64* @PORT_FORCE_MDIX, align 8
  %204 = load i64, i64* %13, align 8
  %205 = or i64 %204, %203
  store i64 %205, i64* %13, align 8
  br label %211

206:                                              ; preds = %197
  %207 = load i64, i64* @PORT_FORCE_MDIX, align 8
  %208 = xor i64 %207, -1
  %209 = load i64, i64* %13, align 8
  %210 = and i64 %209, %208
  store i64 %210, i64* %13, align 8
  br label %211

211:                                              ; preds = %206, %202
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @PHY_LOOPBACK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i64, i64* @PORT_PHY_LOOPBACK, align 8
  %218 = load i64, i64* %13, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %13, align 8
  br label %225

220:                                              ; preds = %211
  %221 = load i64, i64* @PORT_PHY_LOOPBACK, align 8
  %222 = xor i64 %221, -1
  %223 = load i64, i64* %13, align 8
  %224 = and i64 %223, %222
  store i64 %224, i64* %13, align 8
  br label %225

225:                                              ; preds = %220, %216
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* %10, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load i32, i32* @P_NEG_RESTART_CTRL, align 4
  %233 = load i64, i64* %13, align 8
  %234 = call i32 @ksz_pwrite8(%struct.ksz_device* %230, i64 %231, i32 %232, i64 %233)
  br label %235

235:                                              ; preds = %229, %225
  br label %310

236:                                              ; preds = %4
  %237 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %238 = load i64, i64* %9, align 8
  %239 = load i32, i32* @P_LOCAL_CTRL, align 4
  %240 = call i32 @ksz_pread8(%struct.ksz_device* %237, i64 %238, i32 %239, i64* %12)
  %241 = load i64, i64* %12, align 8
  store i64 %241, i64* %13, align 8
  %242 = load i64, i64* @PORT_AUTO_NEG_SYM_PAUSE, align 8
  %243 = load i64, i64* @PORT_AUTO_NEG_100BTX_FD, align 8
  %244 = or i64 %242, %243
  %245 = load i64, i64* @PORT_AUTO_NEG_100BTX, align 8
  %246 = or i64 %244, %245
  %247 = load i64, i64* @PORT_AUTO_NEG_10BT_FD, align 8
  %248 = or i64 %246, %247
  %249 = load i64, i64* @PORT_AUTO_NEG_10BT, align 8
  %250 = or i64 %248, %249
  %251 = xor i64 %250, -1
  %252 = load i64, i64* %13, align 8
  %253 = and i64 %252, %251
  store i64 %253, i64* %13, align 8
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @PHY_AUTO_NEG_SYM_PAUSE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %236
  %259 = load i64, i64* @PORT_AUTO_NEG_SYM_PAUSE, align 8
  %260 = load i64, i64* %13, align 8
  %261 = or i64 %260, %259
  store i64 %261, i64* %13, align 8
  br label %262

262:                                              ; preds = %258, %236
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @PHY_AUTO_NEG_100BTX_FD, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i64, i64* @PORT_AUTO_NEG_100BTX_FD, align 8
  %269 = load i64, i64* %13, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %13, align 8
  br label %271

271:                                              ; preds = %267, %262
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @PHY_AUTO_NEG_100BTX, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i64, i64* @PORT_AUTO_NEG_100BTX, align 8
  %278 = load i64, i64* %13, align 8
  %279 = or i64 %278, %277
  store i64 %279, i64* %13, align 8
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @PHY_AUTO_NEG_10BT_FD, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = load i64, i64* @PORT_AUTO_NEG_10BT_FD, align 8
  %287 = load i64, i64* %13, align 8
  %288 = or i64 %287, %286
  store i64 %288, i64* %13, align 8
  br label %289

289:                                              ; preds = %285, %280
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @PHY_AUTO_NEG_10BT, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = load i64, i64* @PORT_AUTO_NEG_10BT, align 8
  %296 = load i64, i64* %13, align 8
  %297 = or i64 %296, %295
  store i64 %297, i64* %13, align 8
  br label %298

298:                                              ; preds = %294, %289
  %299 = load i64, i64* %13, align 8
  %300 = load i64, i64* %12, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %304 = load i64, i64* %9, align 8
  %305 = load i32, i32* @P_LOCAL_CTRL, align 4
  %306 = load i64, i64* %13, align 8
  %307 = call i32 @ksz_pwrite8(%struct.ksz_device* %303, i64 %304, i32 %305, i64 %306)
  br label %308

308:                                              ; preds = %302, %298
  br label %310

309:                                              ; preds = %4
  br label %310

310:                                              ; preds = %309, %308, %235, %22
  ret void
}

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i64, i32, i64*) #1

declare dso_local i32 @ksz_pwrite8(%struct.ksz_device*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
