; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_fiber_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HW_AUTONEG = common dso_local global i32 0, align 4
@INIT_COMPLETE = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_PCS_SYNCED = common dso_local global i64 0, align 8
@MAC_STATUS_SIGNAL_DET = common dso_local global i64 0, align 8
@MAC_STATUS_CFG_CHANGED = common dso_local global i64 0, align 8
@MAC_STATUS_RCVD_CFG = common dso_local global i64 0, align 8
@MAC_STATUS_SYNC_CHANGED = common dso_local global i64 0, align 8
@MAC_TX_AUTO_NEG = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@MAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_TBI = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM8002 = common dso_local global i64 0, align 8
@MAC_EVENT = common dso_local global i32 0, align 4
@MAC_EVENT_LNKSTATE_CHANGED = common dso_local global i64 0, align 8
@SD_STATUS_UPDATED = common dso_local global i32 0, align 4
@SD_STATUS_LINK_CHG = common dso_local global i32 0, align 4
@MAC_STATUS_LNKSTATE_CHANGED = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MAC_MODE_SEND_CONFIGS = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MAC_LED_CTRL = common dso_local global i32 0, align 4
@LED_CTRL_LNKLED_OVERRIDE = common dso_local global i32 0, align 4
@LED_CTRL_1000MBPS_ON = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i64 0, align 8
@LED_CTRL_TRAFFIC_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_setup_fiber_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_setup_fiber_phy(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.tg3*, %struct.tg3** %4, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.tg3*, %struct.tg3** %4, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.tg3*, %struct.tg3** %4, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.tg3*, %struct.tg3** %4, align 8
  %26 = load i32, i32* @HW_AUTONEG, align 4
  %27 = call i64 @tg3_flag(%struct.tg3* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %2
  %30 = load %struct.tg3*, %struct.tg3** %4, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.tg3*, %struct.tg3** %4, align 8
  %36 = load i32, i32* @INIT_COMPLETE, align 4
  %37 = call i64 @tg3_flag(%struct.tg3* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32, i32* @MAC_STATUS, align 4
  %41 = call i64 @tr32(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* @MAC_STATUS_PCS_SYNCED, align 8
  %43 = load i64, i64* @MAC_STATUS_SIGNAL_DET, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @MAC_STATUS_CFG_CHANGED, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @MAC_STATUS_RCVD_CFG, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @MAC_STATUS_PCS_SYNCED, align 8
  %53 = load i64, i64* @MAC_STATUS_SIGNAL_DET, align 8
  %54 = or i64 %52, %53
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load i32, i32* @MAC_STATUS, align 4
  %58 = load i64, i64* @MAC_STATUS_SYNC_CHANGED, align 8
  %59 = load i64, i64* @MAC_STATUS_CFG_CHANGED, align 8
  %60 = or i64 %58, %59
  %61 = call i32 @tw32_f(i32 %57, i64 %60)
  store i32 0, i32* %3, align 4
  br label %268

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %34, %29, %2
  %64 = load i32, i32* @MAC_TX_AUTO_NEG, align 4
  %65 = call i32 @tw32_f(i32 %64, i64 0)
  %66 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %67 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.tg3*, %struct.tg3** %4, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @MAC_MODE_PORT_MODE_TBI, align 4
  %75 = load %struct.tg3*, %struct.tg3** %4, align 8
  %76 = getelementptr inbounds %struct.tg3, %struct.tg3* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @MAC_MODE, align 4
  %80 = load %struct.tg3*, %struct.tg3** %4, align 8
  %81 = getelementptr inbounds %struct.tg3, %struct.tg3* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = call i32 @tw32_f(i32 %79, i64 %83)
  %85 = call i32 @udelay(i32 40)
  %86 = load %struct.tg3*, %struct.tg3** %4, align 8
  %87 = getelementptr inbounds %struct.tg3, %struct.tg3* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TG3_PHY_ID_BCM8002, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %63
  %92 = load %struct.tg3*, %struct.tg3** %4, align 8
  %93 = call i32 @tg3_init_bcm8002(%struct.tg3* %92)
  br label %94

94:                                               ; preds = %91, %63
  %95 = load i32, i32* @MAC_EVENT, align 4
  %96 = load i64, i64* @MAC_EVENT_LNKSTATE_CHANGED, align 8
  %97 = call i32 @tw32_f(i32 %95, i64 %96)
  %98 = call i32 @udelay(i32 40)
  store i32 0, i32* %10, align 4
  %99 = load %struct.tg3*, %struct.tg3** %4, align 8
  %100 = getelementptr inbounds %struct.tg3, %struct.tg3* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @MAC_STATUS, align 4
  %103 = call i64 @tr32(i32 %102)
  store i64 %103, i64* %9, align 8
  %104 = load %struct.tg3*, %struct.tg3** %4, align 8
  %105 = load i32, i32* @HW_AUTONEG, align 4
  %106 = call i64 @tg3_flag(%struct.tg3* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %94
  %109 = load %struct.tg3*, %struct.tg3** %4, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @tg3_setup_fiber_hw_autoneg(%struct.tg3* %109, i64 %110)
  store i32 %111, i32* %10, align 4
  br label %116

112:                                              ; preds = %94
  %113 = load %struct.tg3*, %struct.tg3** %4, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @tg3_setup_fiber_by_hand(%struct.tg3* %113, i64 %114)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @SD_STATUS_UPDATED, align 4
  %118 = load %struct.tg3*, %struct.tg3** %4, align 8
  %119 = getelementptr inbounds %struct.tg3, %struct.tg3* %118, i32 0, i32 5
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SD_STATUS_LINK_CHG, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = or i32 %117, %128
  %130 = load %struct.tg3*, %struct.tg3** %4, align 8
  %131 = getelementptr inbounds %struct.tg3, %struct.tg3* %130, i32 0, i32 5
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %158, %116
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 100
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = load i32, i32* @MAC_STATUS, align 4
  %142 = load i64, i64* @MAC_STATUS_SYNC_CHANGED, align 8
  %143 = load i64, i64* @MAC_STATUS_CFG_CHANGED, align 8
  %144 = or i64 %142, %143
  %145 = call i32 @tw32_f(i32 %141, i64 %144)
  %146 = call i32 @udelay(i32 5)
  %147 = load i32, i32* @MAC_STATUS, align 4
  %148 = call i64 @tr32(i32 %147)
  %149 = load i64, i64* @MAC_STATUS_SYNC_CHANGED, align 8
  %150 = load i64, i64* @MAC_STATUS_CFG_CHANGED, align 8
  %151 = or i64 %149, %150
  %152 = load i64, i64* @MAC_STATUS_LNKSTATE_CHANGED, align 8
  %153 = or i64 %151, %152
  %154 = and i64 %148, %153
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %140
  br label %161

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %137

161:                                              ; preds = %156, %137
  %162 = load i32, i32* @MAC_STATUS, align 4
  %163 = call i64 @tr32(i32 %162)
  store i64 %163, i64* %9, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* @MAC_STATUS_PCS_SYNCED, align 8
  %166 = and i64 %164, %165
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  %169 = load %struct.tg3*, %struct.tg3** %4, align 8
  %170 = getelementptr inbounds %struct.tg3, %struct.tg3* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AUTONEG_ENABLE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %168
  %176 = load %struct.tg3*, %struct.tg3** %4, align 8
  %177 = getelementptr inbounds %struct.tg3, %struct.tg3* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load i32, i32* @MAC_MODE, align 4
  %182 = load %struct.tg3*, %struct.tg3** %4, align 8
  %183 = getelementptr inbounds %struct.tg3, %struct.tg3* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* @MAC_MODE_SEND_CONFIGS, align 8
  %187 = or i64 %185, %186
  %188 = call i32 @tw32_f(i32 %181, i64 %187)
  %189 = call i32 @udelay(i32 1)
  %190 = load i32, i32* @MAC_MODE, align 4
  %191 = load %struct.tg3*, %struct.tg3** %4, align 8
  %192 = getelementptr inbounds %struct.tg3, %struct.tg3* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = call i32 @tw32_f(i32 %190, i64 %194)
  br label %196

196:                                              ; preds = %180, %175, %168
  br label %197

197:                                              ; preds = %196, %161
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %197
  %201 = load i64, i64* @SPEED_1000, align 8
  %202 = load %struct.tg3*, %struct.tg3** %4, align 8
  %203 = getelementptr inbounds %struct.tg3, %struct.tg3* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* @DUPLEX_FULL, align 8
  %206 = load %struct.tg3*, %struct.tg3** %4, align 8
  %207 = getelementptr inbounds %struct.tg3, %struct.tg3* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  store i64 %205, i64* %208, align 8
  %209 = load i32, i32* @MAC_LED_CTRL, align 4
  %210 = load %struct.tg3*, %struct.tg3** %4, align 8
  %211 = getelementptr inbounds %struct.tg3, %struct.tg3* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @LED_CTRL_1000MBPS_ON, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @tw32(i32 %209, i32 %216)
  br label %236

218:                                              ; preds = %197
  %219 = load i64, i64* @SPEED_UNKNOWN, align 8
  %220 = load %struct.tg3*, %struct.tg3** %4, align 8
  %221 = getelementptr inbounds %struct.tg3, %struct.tg3* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  store i64 %219, i64* %222, align 8
  %223 = load i64, i64* @DUPLEX_UNKNOWN, align 8
  %224 = load %struct.tg3*, %struct.tg3** %4, align 8
  %225 = getelementptr inbounds %struct.tg3, %struct.tg3* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  store i64 %223, i64* %226, align 8
  %227 = load i32, i32* @MAC_LED_CTRL, align 4
  %228 = load %struct.tg3*, %struct.tg3** %4, align 8
  %229 = getelementptr inbounds %struct.tg3, %struct.tg3* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @LED_CTRL_TRAFFIC_OVERRIDE, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @tw32(i32 %227, i32 %234)
  br label %236

236:                                              ; preds = %218, %200
  %237 = load %struct.tg3*, %struct.tg3** %4, align 8
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @tg3_test_and_report_link_chg(%struct.tg3* %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %267, label %241

241:                                              ; preds = %236
  %242 = load %struct.tg3*, %struct.tg3** %4, align 8
  %243 = getelementptr inbounds %struct.tg3, %struct.tg3* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %12, align 8
  %246 = load i64, i64* %6, align 8
  %247 = load i64, i64* %12, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %263, label %249

249:                                              ; preds = %241
  %250 = load i64, i64* %7, align 8
  %251 = load %struct.tg3*, %struct.tg3** %4, align 8
  %252 = getelementptr inbounds %struct.tg3, %struct.tg3* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %250, %254
  br i1 %255, label %263, label %256

256:                                              ; preds = %249
  %257 = load i64, i64* %8, align 8
  %258 = load %struct.tg3*, %struct.tg3** %4, align 8
  %259 = getelementptr inbounds %struct.tg3, %struct.tg3* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %257, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %256, %249, %241
  %264 = load %struct.tg3*, %struct.tg3** %4, align 8
  %265 = call i32 @tg3_link_report(%struct.tg3* %264)
  br label %266

266:                                              ; preds = %263, %256
  br label %267

267:                                              ; preds = %266, %236
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %56
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tr32(i32) #1

declare dso_local i32 @tw32_f(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_init_bcm8002(%struct.tg3*) #1

declare dso_local i32 @tg3_setup_fiber_hw_autoneg(%struct.tg3*, i64) #1

declare dso_local i32 @tg3_setup_fiber_by_hand(%struct.tg3*, i64) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tg3_test_and_report_link_chg(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_link_report(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
