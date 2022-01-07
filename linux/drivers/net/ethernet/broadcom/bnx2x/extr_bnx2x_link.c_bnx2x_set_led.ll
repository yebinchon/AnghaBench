; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, i32, %struct.TYPE_2__*, %struct.bnx2x* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bnx2x_set_led: port %x, mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"speed 0x%x, hw_led_mode 0x%x\0A\00", align 1
@EXT_PHY1 = common dso_local global i64 0, align 8
@MAX_PHYS = common dso_local global i64 0, align 8
@NIG_REG_LED_10G_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_MODE_P0 = common dso_local global i64 0, align 8
@SHARED_HW_CFG_LED_MAC1 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_LED = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE = common dso_local global i32 0, align 4
@EMAC_LED_1000MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_100MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_10MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_OVERRIDE = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727 = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_EXTPHY2 = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_PHY1 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_RATE_P0 = common dso_local global i64 0, align 8
@LED_BLINK_RATE_VAL_E3 = common dso_local global i32 0, align 4
@LED_BLINK_RATE_VAL_E1X_E2 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0 = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"bnx2x_set_led: Invalid led mode %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_led(%struct.link_params* %0, %struct.link_vars* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bnx2x*, align 8
  %17 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %6, align 8
  store %struct.link_vars* %1, %struct.link_vars** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.link_params*, %struct.link_params** %6, align 8
  %19 = getelementptr inbounds %struct.link_params, %struct.link_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.link_params*, %struct.link_params** %6, align 8
  %22 = getelementptr inbounds %struct.link_params, %struct.link_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %15, align 4
  %32 = load %struct.link_params*, %struct.link_params** %6, align 8
  %33 = getelementptr inbounds %struct.link_params, %struct.link_params* %32, i32 0, i32 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %33, align 8
  store %struct.bnx2x* %34, %struct.bnx2x** %16, align 8
  %35 = load i32, i32* @NETIF_MSG_LINK, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i32, i8*, i64, ...) @DP(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i32, i32* @NETIF_MSG_LINK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i32, i8*, i64, ...) @DP(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %42)
  %44 = load i64, i64* @EXT_PHY1, align 8
  store i64 %44, i64* %13, align 8
  br label %45

45:                                               ; preds = %75, %30
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @MAX_PHYS, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load %struct.link_params*, %struct.link_params** %6, align 8
  %51 = getelementptr inbounds %struct.link_params, %struct.link_params* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_2__*, %struct.link_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_2__*, %struct.link_params*, i64)* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %49
  %59 = load %struct.link_params*, %struct.link_params** %6, align 8
  %60 = getelementptr inbounds %struct.link_params, %struct.link_params* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_2__*, %struct.link_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)** %64, align 8
  %66 = load %struct.link_params*, %struct.link_params** %6, align 8
  %67 = getelementptr inbounds %struct.link_params, %struct.link_params* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = load %struct.link_params*, %struct.link_params** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 %65(%struct.TYPE_2__* %70, %struct.link_params* %71, i64 %72)
  br label %74

74:                                               ; preds = %58, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %45

78:                                               ; preds = %45
  %79 = load i64, i64* %8, align 8
  switch i64 %79, label %382 [
    i64 131, label %80
    i64 130, label %80
    i64 128, label %124
    i64 129, label %131
  ]

80:                                               ; preds = %78, %78
  %81 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %82 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %83 = load i64, i64* %10, align 8
  %84 = mul i64 %83, 4
  %85 = add i64 %82, %84
  %86 = call i32 @REG_WR(%struct.bnx2x* %81, i64 %85, i32 0)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %88 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %89 = load i64, i64* %10, align 8
  %90 = mul i64 %89, 4
  %91 = add i64 %88, %90
  %92 = load i32, i32* @SHARED_HW_CFG_LED_MAC1, align 4
  %93 = call i32 @REG_WR(%struct.bnx2x* %87, i64 %91, i32 %92)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %95 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %96 = call i32 @EMAC_RD(%struct.bnx2x* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.link_params*, %struct.link_params** %6, align 8
  %98 = getelementptr inbounds %struct.link_params, %struct.link_params* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @EXT_PHY1, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %80
  %107 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %108 = load i32, i32* @EMAC_LED_100MB_OVERRIDE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EMAC_LED_10MB_OVERRIDE, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %119

115:                                              ; preds = %80
  %116 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %115, %106
  %120 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %121 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @EMAC_WR(%struct.bnx2x* %120, i32 %121, i32 %122)
  br label %388

124:                                              ; preds = %78
  %125 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %126 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %388

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %78, %130
  %132 = load %struct.link_params*, %struct.link_params** %6, align 8
  %133 = getelementptr inbounds %struct.link_params, %struct.link_params* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i64, i64* @EXT_PHY1, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %131
  %142 = load %struct.link_params*, %struct.link_params** %6, align 8
  %143 = getelementptr inbounds %struct.link_params, %struct.link_params* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* @EXT_PHY1, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %141, %131
  %152 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %153 = call i32 @CHIP_IS_E2(%struct.bnx2x* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %195

155:                                              ; preds = %151
  %156 = load %struct.link_params*, %struct.link_params** %6, align 8
  %157 = getelementptr inbounds %struct.link_params, %struct.link_params* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %195

160:                                              ; preds = %155
  %161 = load i64, i64* %8, align 8
  %162 = icmp eq i64 %161, 129
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @SPEED_10000, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %163, %160
  %168 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %169 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %170 = load i64, i64* %10, align 8
  %171 = mul i64 %170, 4
  %172 = add i64 %169, %171
  %173 = call i32 @REG_WR(%struct.bnx2x* %168, i64 %172, i32 0)
  %174 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %175 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %176 = load i64, i64* %10, align 8
  %177 = mul i64 %176, 4
  %178 = add i64 %175, %177
  %179 = call i32 @REG_WR(%struct.bnx2x* %174, i64 %178, i32 1)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %181 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %182 = call i32 @EMAC_RD(%struct.bnx2x* %180, i32 %181)
  store i32 %182, i32* %14, align 4
  %183 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %184 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @EMAC_WR(%struct.bnx2x* %183, i32 %184, i32 %187)
  %189 = load i64, i64* %8, align 8
  %190 = icmp eq i64 %189, 129
  br i1 %190, label %191, label %193

191:                                              ; preds = %167
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %5, align 4
  br label %390

193:                                              ; preds = %167
  br label %194

194:                                              ; preds = %193, %163
  br label %300

195:                                              ; preds = %155, %151, %141
  %196 = load %struct.link_params*, %struct.link_params** %6, align 8
  %197 = call i32 @SINGLE_MEDIA_DIRECT(%struct.link_params* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %244

199:                                              ; preds = %195
  %200 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %201 = call i32 @CHIP_IS_E3(%struct.bnx2x* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %205 = call i32 @CHIP_IS_E3(%struct.bnx2x* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = load i64, i64* %8, align 8
  %209 = icmp eq i64 %208, 129
  br i1 %209, label %210, label %217

210:                                              ; preds = %207, %199
  %211 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %212 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %213 = load i64, i64* %10, align 8
  %214 = mul i64 %213, 4
  %215 = add i64 %212, %214
  %216 = call i32 @REG_WR(%struct.bnx2x* %211, i64 %215, i32 1)
  br label %217

217:                                              ; preds = %210, %207, %203
  %218 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %219 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %217
  %222 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %223 = call i32 @CHIP_IS_E2(%struct.bnx2x* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load i64, i64* %8, align 8
  %227 = icmp eq i64 %226, 129
  br i1 %227, label %228, label %235

228:                                              ; preds = %225, %221, %217
  %229 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %230 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %231 = load i64, i64* %10, align 8
  %232 = mul i64 %231, 4
  %233 = add i64 %230, %232
  %234 = call i32 @REG_WR(%struct.bnx2x* %229, i64 %233, i32 0)
  br label %243

235:                                              ; preds = %225
  %236 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %237 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %238 = load i64, i64* %10, align 8
  %239 = mul i64 %238, 4
  %240 = add i64 %237, %239
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @REG_WR(%struct.bnx2x* %236, i64 %240, i32 %241)
  br label %243

243:                                              ; preds = %235, %228
  br label %299

244:                                              ; preds = %195
  %245 = load %struct.link_params*, %struct.link_params** %6, align 8
  %246 = getelementptr inbounds %struct.link_params, %struct.link_params* %245, i32 0, i32 3
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load i64, i64* @EXT_PHY1, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %244
  %255 = load i64, i64* %8, align 8
  %256 = icmp eq i64 %255, 129
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %259 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %260 = load i64, i64* %10, align 8
  %261 = mul i64 %260, 4
  %262 = add i64 %259, %261
  %263 = call i32 @REG_WR(%struct.bnx2x* %258, i64 %262, i32 0)
  %264 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %265 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %266 = call i32 @EMAC_RD(%struct.bnx2x* %264, i32 %265)
  store i32 %266, i32* %14, align 4
  %267 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %268 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @EMAC_WR(%struct.bnx2x* %267, i32 %268, i32 %273)
  br label %388

275:                                              ; preds = %254, %244
  %276 = load %struct.link_params*, %struct.link_params** %6, align 8
  %277 = getelementptr inbounds %struct.link_params, %struct.link_params* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %280 = shl i32 %278, %279
  %281 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY2, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %275
  %284 = load i32, i32* @SHARED_HW_CFG_LED_PHY1, align 4
  %285 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %286 = ashr i32 %284, %285
  br label %289

287:                                              ; preds = %275
  %288 = load i32, i32* %11, align 4
  br label %289

289:                                              ; preds = %287, %283
  %290 = phi i32 [ %286, %283 ], [ %288, %287 ]
  store i32 %290, i32* %17, align 4
  %291 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %292 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %293 = load i64, i64* %10, align 8
  %294 = mul i64 %293, 4
  %295 = add i64 %292, %294
  %296 = load i32, i32* %17, align 4
  %297 = call i32 @REG_WR(%struct.bnx2x* %291, i64 %295, i32 %296)
  br label %298

298:                                              ; preds = %289
  br label %299

299:                                              ; preds = %298, %243
  br label %300

300:                                              ; preds = %299, %194
  %301 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %302 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %303 = load i64, i64* %10, align 8
  %304 = mul i64 %303, 4
  %305 = add i64 %302, %304
  %306 = call i32 @REG_WR(%struct.bnx2x* %301, i64 %305, i32 0)
  %307 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %308 = call i32 @CHIP_IS_E3(%struct.bnx2x* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %300
  %311 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %312 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %313 = load i64, i64* %10, align 8
  %314 = mul i64 %313, 4
  %315 = add i64 %312, %314
  %316 = load i32, i32* @LED_BLINK_RATE_VAL_E3, align 4
  %317 = call i32 @REG_WR(%struct.bnx2x* %311, i64 %315, i32 %316)
  br label %326

318:                                              ; preds = %300
  %319 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %320 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %321 = load i64, i64* %10, align 8
  %322 = mul i64 %321, 4
  %323 = add i64 %320, %322
  %324 = load i32, i32* @LED_BLINK_RATE_VAL_E1X_E2, align 4
  %325 = call i32 @REG_WR(%struct.bnx2x* %319, i64 %323, i32 %324)
  br label %326

326:                                              ; preds = %318, %310
  %327 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %328 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0, align 8
  %329 = load i64, i64* %10, align 8
  %330 = mul i64 %329, 4
  %331 = add i64 %328, %330
  %332 = call i32 @REG_WR(%struct.bnx2x* %327, i64 %331, i32 1)
  %333 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %334 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %335 = call i32 @EMAC_RD(%struct.bnx2x* %333, i32 %334)
  store i32 %335, i32* %14, align 4
  %336 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %337 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %340 = xor i32 %339, -1
  %341 = and i32 %338, %340
  %342 = call i32 @EMAC_WR(%struct.bnx2x* %336, i32 %337, i32 %341)
  %343 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %344 = call i32 @CHIP_IS_E1(%struct.bnx2x* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %381

346:                                              ; preds = %326
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* @SPEED_2500, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %362, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* @SPEED_1000, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %362, label %354

354:                                              ; preds = %350
  %355 = load i32, i32* %9, align 4
  %356 = load i32, i32* @SPEED_100, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* @SPEED_10, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %381

362:                                              ; preds = %358, %354, %350, %346
  %363 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %364 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %365 = load i64, i64* %10, align 8
  %366 = mul i64 %365, 4
  %367 = add i64 %364, %366
  %368 = call i32 @REG_WR(%struct.bnx2x* %363, i64 %367, i32 1)
  %369 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %370 = load i64, i64* @NIG_REG_LED_CONTROL_TRAFFIC_P0, align 8
  %371 = load i64, i64* %10, align 8
  %372 = mul i64 %371, 4
  %373 = add i64 %370, %372
  %374 = call i32 @REG_WR(%struct.bnx2x* %369, i64 %373, i32 0)
  %375 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %376 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0, align 8
  %377 = load i64, i64* %10, align 8
  %378 = mul i64 %377, 4
  %379 = add i64 %376, %378
  %380 = call i32 @REG_WR(%struct.bnx2x* %375, i64 %379, i32 1)
  br label %381

381:                                              ; preds = %362, %358, %326
  br label %388

382:                                              ; preds = %78
  %383 = load i32, i32* @EINVAL, align 4
  %384 = sub nsw i32 0, %383
  store i32 %384, i32* %12, align 4
  %385 = load i32, i32* @NETIF_MSG_LINK, align 4
  %386 = load i64, i64* %8, align 8
  %387 = call i32 (i32, i8*, i64, ...) @DP(i32 %385, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %386)
  br label %388

388:                                              ; preds = %382, %381, %257, %129, %119
  %389 = load i32, i32* %12, align 4
  store i32 %389, i32* %5, align 4
  br label %390

390:                                              ; preds = %388, %191
  %391 = load i32, i32* %5, align 4
  ret i32 %391
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @EMAC_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @EMAC_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
