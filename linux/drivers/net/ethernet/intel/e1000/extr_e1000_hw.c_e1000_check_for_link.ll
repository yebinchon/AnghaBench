; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32, i64, i32, i64, i32 }

@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@RXCW = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@e1000_10_full = common dso_local global i64 0, align 8
@e1000_10_half = common dso_local global i64 0, align 8
@IMC = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@e1000_ce4100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error configuring MAC to PHY settings\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@SPEED_1000 = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_for_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @CTRL, align 4
  %15 = call i32 @er32(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @er32(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_media_type_fiber, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @RXCW, align 4
  %31 = call i32 @er32(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_media_type_fiber, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_82544, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @E1000_STATUS_LU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @e1000_media_type_copper, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %238

63:                                               ; preds = %57
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %238

68:                                               ; preds = %63
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @PHY_STATUS, align 4
  %71 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %69, i32 %70, i32* %11)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %2, align 8
  br label %255

76:                                               ; preds = %68
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @PHY_STATUS, align 4
  %79 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %77, i32 %78, i32* %11)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %10, align 8
  store i64 %83, i64* %2, align 8
  br label %255

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %84
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = call i32 @e1000_check_downshift(%struct.e1000_hw* %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_82544, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %89
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @e1000_82543, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %138

105:                                              ; preds = %99, %89
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %105
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @e1000_10_full, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @e1000_10_half, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116, %110
  %123 = load i32, i32* @IMC, align 4
  %124 = call i32 @ew32(i32 %123, i32 -1)
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = call i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw* %125)
  store i64 %126, i64* %10, align 8
  %127 = load i32, i32* @ICR, align 4
  %128 = call i32 @er32(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* @ICS, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @E1000_ICS_LSC, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = call i32 @ew32(i32 %129, i32 %133)
  %135 = load i32, i32* @IMS, align 4
  %136 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %137 = call i32 @ew32(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %122, %116, %105, %99
  br label %142

139:                                              ; preds = %84
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = call i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw* %140, i32 0)
  store i64 0, i64* %2, align 8
  br label %255

142:                                              ; preds = %138
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %149 = sub nsw i64 0, %148
  store i64 %149, i64* %2, align 8
  br label %255

150:                                              ; preds = %142
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = call i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw* %151, i32 1)
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @e1000_82544, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %150
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @e1000_ce4100, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %165)
  br label %176

167:                                              ; preds = %158, %150
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %169 = call i64 @e1000_config_mac_to_phy(%struct.e1000_hw* %168)
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %10, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %174 = load i64, i64* %10, align 8
  store i64 %174, i64* %2, align 8
  br label %255

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %164
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = call i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %177)
  store i64 %178, i64* %10, align 8
  %179 = load i64, i64* %10, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i64, i64* %10, align 8
  store i64 %183, i64* %2, align 8
  br label %255

184:                                              ; preds = %176
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %186 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %184
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %191 = call i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %190, i32* %12, i32* %13)
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i64, i64* %10, align 8
  store i64 %196, i64* %2, align 8
  br label %255

197:                                              ; preds = %189
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @SPEED_1000, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %197
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %203 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %201
  %207 = load i32, i32* @RCTL, align 4
  %208 = call i32 @er32(i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* @E1000_RCTL_SBP, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* @RCTL, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @ew32(i32 %213, i32 %214)
  %216 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %217 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %216, i32 0, i32 4
  store i32 0, i32* %217, align 8
  br label %218

218:                                              ; preds = %206, %201
  br label %236

219:                                              ; preds = %197
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %221 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %219
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 4
  store i32 1, i32* %226, align 8
  %227 = load i32, i32* @RCTL, align 4
  %228 = call i32 @er32(i32 %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* @E1000_RCTL_SBP, align 4
  %230 = load i32, i32* %7, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* @RCTL, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @ew32(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %224, %219
  br label %236

236:                                              ; preds = %235, %218
  br label %237

237:                                              ; preds = %236, %184
  br label %238

238:                                              ; preds = %237, %63, %57
  %239 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %240 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @e1000_media_type_fiber, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %246 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244, %238
  %251 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %252 = call i32 @e1000_check_for_serdes_link_generic(%struct.e1000_hw* %251)
  br label %253

253:                                              ; preds = %250, %244
  %254 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %254, i64* %2, align 8
  br label %255

255:                                              ; preds = %253, %194, %181, %172, %147, %139, %82, %74
  %256 = load i64, i64* %2, align 8
  ret i64 %256
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_check_downshift(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_config_mac_to_phy(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i32*, i32*) #1

declare dso_local i32 @e1000_check_for_serdes_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
