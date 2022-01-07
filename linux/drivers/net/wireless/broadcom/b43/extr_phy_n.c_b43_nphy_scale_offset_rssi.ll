; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_scale_offset_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_scale_offset_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@N_RAIL_I = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Z = common dso_local global i32 0, align 4
@N_RAIL_Q = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_TBD = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_TBD = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_TBD = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_TBD = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_PWRDET = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_PWRDET = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_PWRDET = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_PWRDET = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_TSSI = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_TSSI = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_TSSI = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_TSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32)* @b43_nphy_scale_offset_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 5
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi i1 [ true, %6 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 5
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ true, %21 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @clamp_val(i32 %32, i32 -32, i32 31)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 63
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 63
  %39 = or i32 %36, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %320 [
    i32 133, label %41
    i32 129, label %90
    i32 128, label %139
    i32 132, label %188
    i32 134, label %237
    i32 131, label %286
    i32 130, label %303
  ]

41:                                               ; preds = %29
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @N_RAIL_I, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %50 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Z, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %44, %41
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @N_RAIL_Q, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %62 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Z, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56, %53
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @N_RAIL_I, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %74 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Z, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @b43_phy_write(%struct.b43_wldev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %68, %65
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @N_RAIL_Q, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %86 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Z, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @b43_phy_write(%struct.b43_wldev* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %80, %77
  br label %320

90:                                               ; preds = %29
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @N_RAIL_I, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %99 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_X, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @b43_phy_write(%struct.b43_wldev* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %93, %90
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @N_RAIL_Q, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %111 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_X, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @b43_phy_write(%struct.b43_wldev* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %105, %102
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @N_RAIL_I, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %123 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_X, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @b43_phy_write(%struct.b43_wldev* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %117, %114
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @N_RAIL_Q, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %135 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_X, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @b43_phy_write(%struct.b43_wldev* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %129, %126
  br label %320

139:                                              ; preds = %29
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @N_RAIL_I, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %148 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Y, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @b43_phy_write(%struct.b43_wldev* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %142, %139
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @N_RAIL_Q, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %160 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Y, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @b43_phy_write(%struct.b43_wldev* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %154, %151
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @N_RAIL_I, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %172 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Y, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @b43_phy_write(%struct.b43_wldev* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %166, %163
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @N_RAIL_Q, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %184 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Y, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @b43_phy_write(%struct.b43_wldev* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %178, %175
  br label %320

188:                                              ; preds = %29
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @N_RAIL_I, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %197 = load i32, i32* @B43_NPHY_RSSIMC_0I_TBD, align 4
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @b43_phy_write(%struct.b43_wldev* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %191, %188
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @N_RAIL_Q, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %209 = load i32, i32* @B43_NPHY_RSSIMC_0Q_TBD, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @b43_phy_write(%struct.b43_wldev* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %203, %200
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @N_RAIL_I, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %221 = load i32, i32* @B43_NPHY_RSSIMC_1I_TBD, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @b43_phy_write(%struct.b43_wldev* %220, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %215, %212
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @N_RAIL_Q, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %233 = load i32, i32* @B43_NPHY_RSSIMC_1Q_TBD, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @b43_phy_write(%struct.b43_wldev* %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %231, %227, %224
  br label %320

237:                                              ; preds = %29
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %237
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @N_RAIL_I, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %246 = load i32, i32* @B43_NPHY_RSSIMC_0I_PWRDET, align 4
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @b43_phy_write(%struct.b43_wldev* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %240, %237
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* @N_RAIL_Q, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %258 = load i32, i32* @B43_NPHY_RSSIMC_0Q_PWRDET, align 4
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @b43_phy_write(%struct.b43_wldev* %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %252, %249
  %262 = load i32, i32* %15, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @N_RAIL_I, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %270 = load i32, i32* @B43_NPHY_RSSIMC_1I_PWRDET, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @b43_phy_write(%struct.b43_wldev* %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %268, %264, %261
  %274 = load i32, i32* %15, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @N_RAIL_Q, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %282 = load i32, i32* @B43_NPHY_RSSIMC_1Q_PWRDET, align 4
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @b43_phy_write(%struct.b43_wldev* %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %280, %276, %273
  br label %320

286:                                              ; preds = %29
  %287 = load i32, i32* %14, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %291 = load i32, i32* @B43_NPHY_RSSIMC_0I_TSSI, align 4
  %292 = load i32, i32* %13, align 4
  %293 = call i32 @b43_phy_write(%struct.b43_wldev* %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %289, %286
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %299 = load i32, i32* @B43_NPHY_RSSIMC_1I_TSSI, align 4
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @b43_phy_write(%struct.b43_wldev* %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %297, %294
  br label %320

303:                                              ; preds = %29
  %304 = load i32, i32* %14, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %308 = load i32, i32* @B43_NPHY_RSSIMC_0Q_TSSI, align 4
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @b43_phy_write(%struct.b43_wldev* %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %306, %303
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %316 = load i32, i32* @B43_NPHY_RSSIMC_1Q_TSSI, align 4
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @b43_phy_write(%struct.b43_wldev* %315, i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %314, %311
  br label %320

320:                                              ; preds = %29, %319, %302, %285, %236, %187, %138, %89
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
