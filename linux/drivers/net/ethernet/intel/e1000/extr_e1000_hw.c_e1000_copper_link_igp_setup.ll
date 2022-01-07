; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_igp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_igp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i32, i32, i64, i64, i32, i64, i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D3\0A\00", align 1
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_dsp_config_disabled = common dso_local global i64 0, align 8
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@e1000_dsp_config_enabled = common dso_local global i8* null, align 8
@e1000_ffe_config_active = common dso_local global i64 0, align 8
@e1000_ffe_config_enabled = common dso_local global i64 0, align 8
@e1000_dsp_config_activated = common dso_local global i64 0, align 8
@ADVERTISE_1000_FULL = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@CR_1000T_MS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_igp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_igp_setup(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %2, align 8
  br label %255

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = call i64 @e1000_phy_reset(%struct.e1000_hw* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %255

22:                                               ; preds = %14
  %23 = call i32 @msleep(i32 15)
  %24 = load i32, i32* @LEDCTL, align 4
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %30 = load i32, i32* @IGP_LED3_MODE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @LEDCTL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ew32(i32 %34, i32 %35)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @e1000_phy_igp, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @e1000_set_d3_lplu_state(%struct.e1000_hw* %43, i32 0)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %255

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %54 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %52, i32 %53, i32* %6)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %255

59:                                               ; preds = %51
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @e1000_82541, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_82547, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65, %59
  %72 = load i64, i64* @e1000_dsp_config_disabled, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %76 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  br label %110

83:                                               ; preds = %65
  %84 = load i8*, i8** @e1000_dsp_config_enabled, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %105 [
    i32 1, label %95
    i32 2, label %100
    i32 0, label %104
  ]

95:                                               ; preds = %83
  %96 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %109

100:                                              ; preds = %83
  %101 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %109

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %83, %104
  %106 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %100, %95
  br label %110

110:                                              ; preds = %109, %71
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %111, i32 %112, i32 %113)
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i64, i64* %5, align 8
  store i64 %118, i64* %2, align 8
  br label %255

119:                                              ; preds = %110
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %253

124:                                              ; preds = %119
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %7, align 4
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @e1000_ffe_config_active, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i64, i64* @e1000_ffe_config_enabled, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %124
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @e1000_dsp_config_activated, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i8*, i8** @e1000_dsp_config_enabled, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %143, %137
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ADVERTISE_1000_FULL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %197

154:                                              ; preds = %148
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %156 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %157 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %155, i32 %156, i32* %6)
  store i64 %157, i64* %5, align 8
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i64, i64* %5, align 8
  store i64 %161, i64* %2, align 8
  br label %255

162:                                              ; preds = %154
  %163 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %167, i32 %168, i32 %169)
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* %5, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %162
  %174 = load i64, i64* %5, align 8
  store i64 %174, i64* %2, align 8
  br label %255

175:                                              ; preds = %162
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %177 = load i32, i32* @PHY_1000T_CTRL, align 4
  %178 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %176, i32 %177, i32* %6)
  store i64 %178, i64* %5, align 8
  %179 = load i64, i64* %5, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i64, i64* %5, align 8
  store i64 %182, i64* %2, align 8
  br label %255

183:                                              ; preds = %175
  %184 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %6, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %189 = load i32, i32* @PHY_1000T_CTRL, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %188, i32 %189, i32 %190)
  store i64 %191, i64* %5, align 8
  %192 = load i64, i64* %5, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i64, i64* %5, align 8
  store i64 %195, i64* %2, align 8
  br label %255

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %148
  %198 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %199 = load i32, i32* @PHY_1000T_CTRL, align 4
  %200 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %198, i32 %199, i32* %6)
  store i64 %200, i64* %5, align 8
  %201 = load i64, i64* %5, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i64, i64* %5, align 8
  store i64 %204, i64* %2, align 8
  br label %255

205:                                              ; preds = %197
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 129, i32 128
  br label %218

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %210
  %219 = phi i32 [ %216, %210 ], [ 130, %217 ]
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %221 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %7, align 4
  switch i32 %222, label %242 [
    i32 129, label %223
    i32 128, label %229
    i32 130, label %237
  ]

223:                                              ; preds = %218
  %224 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %225 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %6, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %6, align 4
  br label %243

229:                                              ; preds = %218
  %230 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %231 = load i32, i32* %6, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %6, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %6, align 4
  br label %243

237:                                              ; preds = %218
  %238 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %6, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %218, %237
  br label %243

243:                                              ; preds = %242, %229, %223
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %245 = load i32, i32* @PHY_1000T_CTRL, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %244, i32 %245, i32 %246)
  store i64 %247, i64* %5, align 8
  %248 = load i64, i64* %5, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i64, i64* %5, align 8
  store i64 %251, i64* %2, align 8
  br label %255

252:                                              ; preds = %243
  br label %253

253:                                              ; preds = %252, %119
  %254 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %254, i64* %2, align 8
  br label %255

255:                                              ; preds = %253, %250, %203, %194, %181, %173, %160, %117, %57, %47, %19, %12
  %256 = load i64, i64* %2, align 8
  ret i64 %256
}

declare dso_local i64 @e1000_phy_reset(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_set_d3_lplu_state(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
