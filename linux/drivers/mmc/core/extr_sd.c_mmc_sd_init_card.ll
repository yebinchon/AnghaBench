; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, %struct.mmc_card*, %struct.TYPE_8__, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.mmc_host*, %struct.mmc_card*)* }
%struct.mmc_card = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"%s: Perhaps the card was replaced\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@sd_type = common dso_local global i32 0, align 4
@MMC_TYPE_SD = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i64 0, align 8
@SD_ROCR_S18A = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SD_SCR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_CAP2_AVOID_3_3V = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, %struct.mmc_card*)* @mmc_sd_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sd_init_card(%struct.mmc_host* %0, i32 %1, %struct.mmc_card* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mmc_card* %2, %struct.mmc_card** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  br label %20

20:                                               ; preds = %198, %3
  %21 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %24 = call i32 @mmc_sd_get_cid(%struct.mmc_host* %21, i32 %22, i32* %23, i32* %11)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %297

29:                                               ; preds = %20
  %30 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %31 = icmp ne %struct.mmc_card* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %34 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @memcmp(i32* %33, i32 %36, i32 16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %297

45:                                               ; preds = %32
  %46 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %46, %struct.mmc_card** %8, align 8
  br label %68

47:                                               ; preds = %29
  %48 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %49 = call %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %48, i32* @sd_type)
  store %struct.mmc_card* %49, %struct.mmc_card** %8, align 8
  %50 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %51 = call i64 @IS_ERR(%struct.mmc_card* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %55 = call i32 @PTR_ERR(%struct.mmc_card* %54)
  store i32 %55, i32* %4, align 4
  br label %297

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @MMC_TYPE_SD, align 4
  %61 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %62 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %67 = call i32 @memcpy(i32 %65, i32* %66, i32 4)
  br label %68

68:                                               ; preds = %56, %45
  %69 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_card*)** %72, align 8
  %74 = icmp ne i32 (%struct.mmc_host*, %struct.mmc_card*)* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %76, i32 0, i32 5
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_card*)** %79, align 8
  %81 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %82 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %83 = call i32 %80(%struct.mmc_host* %81, %struct.mmc_card* %82)
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %86 = call i32 @mmc_host_is_spi(%struct.mmc_host* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %90 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %91 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %90, i32 0, i32 4
  %92 = call i32 @mmc_send_relative_addr(%struct.mmc_host* %89, i32* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %289

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %99 = icmp ne %struct.mmc_card* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %102 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %103 = call i32 @mmc_sd_get_csd(%struct.mmc_host* %101, %struct.mmc_card* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %289

107:                                              ; preds = %100
  %108 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %109 = call i32 @mmc_decode_cid(%struct.mmc_card* %108)
  br label %110

110:                                              ; preds = %107, %97
  %111 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %112 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %118 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %123 = call i32 @mmc_set_dsr(%struct.mmc_host* %122)
  br label %124

124:                                              ; preds = %121, %116, %110
  %125 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %126 = call i32 @mmc_host_is_spi(%struct.mmc_host* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %124
  %129 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %130 = call i32 @mmc_select_card(%struct.mmc_card* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %289

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %124
  %136 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %137 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %138 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %139 = icmp ne %struct.mmc_card* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @mmc_sd_setup_card(%struct.mmc_host* %136, %struct.mmc_card* %137, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %289

145:                                              ; preds = %135
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %201, label %148

148:                                              ; preds = %145
  %149 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %150 = call i32 @mmc_host_is_spi(%struct.mmc_host* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %201, label %152

152:                                              ; preds = %148
  %153 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %154 = call i64 @mmc_host_uhs(%struct.mmc_host* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %152
  %157 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %158 = call i64 @mmc_sd_card_using_v18(%struct.mmc_card* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %201

160:                                              ; preds = %156
  %161 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %162 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MMC_SIGNAL_VOLTAGE_180, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %201

167:                                              ; preds = %160
  %168 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %169 = icmp ne %struct.mmc_card* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %172 = call i32 @mmc_read_switch(%struct.mmc_card* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %289

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %167
  %178 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %179 = call i64 @mmc_sd_card_using_v18(%struct.mmc_card* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %177
  %182 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %183 = call i64 @mmc_host_set_uhs_voltage(%struct.mmc_host* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %187 = call i32 @mmc_sd_init_uhs_card(%struct.mmc_card* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %185, %181
  store i32 1, i32* %12, align 4
  %190 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @mmc_power_cycle(%struct.mmc_host* %190, i32 %191)
  %193 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %194 = icmp ne %struct.mmc_card* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %197 = call i32 @mmc_remove_card(%struct.mmc_card* %196)
  br label %198

198:                                              ; preds = %195, %189
  br label %20

199:                                              ; preds = %185
  br label %285

200:                                              ; preds = %177
  br label %201

201:                                              ; preds = %200, %160, %156, %152, %148, %145
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @SD_ROCR_S18A, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %208 = call i64 @mmc_host_uhs(%struct.mmc_host* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %212 = call i32 @mmc_sd_init_uhs_card(%struct.mmc_card* %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %289

216:                                              ; preds = %210
  br label %264

217:                                              ; preds = %206, %201
  %218 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %219 = call i32 @mmc_sd_switch_hs(%struct.mmc_card* %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %224 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @MMC_TIMING_SD_HS, align 4
  %227 = call i32 @mmc_set_timing(i32 %225, i32 %226)
  br label %233

228:                                              ; preds = %217
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %289

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %232, %222
  %234 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %235 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %236 = call i32 @mmc_sd_get_max_clock(%struct.mmc_card* %235)
  %237 = call i32 @mmc_set_clock(%struct.mmc_host* %234, i32 %236)
  %238 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %239 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %233
  %245 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %246 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SD_SCR_BUS_WIDTH_4, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %244
  %253 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %254 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %255 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %253, i32 %254)
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %289

259:                                              ; preds = %252
  %260 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %261 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %262 = call i32 @mmc_set_bus_width(%struct.mmc_host* %260, i32 %261)
  br label %263

263:                                              ; preds = %259, %244, %233
  br label %264

264:                                              ; preds = %263, %216
  %265 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %266 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @MMC_CAP2_AVOID_3_3V, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %264
  %272 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %273 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @MMC_SIGNAL_VOLTAGE_330, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %280 = call i32 @mmc_hostname(%struct.mmc_host* %279)
  %281 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %9, align 4
  br label %289

284:                                              ; preds = %271, %264
  br label %285

285:                                              ; preds = %284, %199
  %286 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %287 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %288 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %287, i32 0, i32 2
  store %struct.mmc_card* %286, %struct.mmc_card** %288, align 8
  store i32 0, i32* %4, align 4
  br label %297

289:                                              ; preds = %278, %258, %231, %215, %175, %144, %133, %106, %95
  %290 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %291 = icmp ne %struct.mmc_card* %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %294 = call i32 @mmc_remove_card(%struct.mmc_card* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* %9, align 4
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %295, %285, %53, %39, %27
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_sd_get_cid(%struct.mmc_host*, i32, i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_card*) #1

declare dso_local i32 @PTR_ERR(%struct.mmc_card*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_relative_addr(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_sd_get_csd(%struct.mmc_host*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_decode_cid(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_dsr(%struct.mmc_host*) #1

declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_setup_card(%struct.mmc_host*, %struct.mmc_card*, i32) #1

declare dso_local i64 @mmc_host_uhs(%struct.mmc_host*) #1

declare dso_local i64 @mmc_sd_card_using_v18(%struct.mmc_card*) #1

declare dso_local i32 @mmc_read_switch(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_set_uhs_voltage(%struct.mmc_host*) #1

declare dso_local i32 @mmc_sd_init_uhs_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_power_cycle(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_remove_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_switch_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_timing(i32, i32) #1

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_get_max_clock(%struct.mmc_card*) #1

declare dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_set_bus_width(%struct.mmc_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
