; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i64 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.thermal_zone_device = type { i32 }

@SDHCI_OMAP_CAPA2 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@CAPA2_TSDR50 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"cpu_thermal\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to get thermal zone for tuning\0A\00", align 1
@SDHCI_OMAP_DLL = common dso_local global i32 0, align 4
@DLL_SWT = common dso_local global i64 0, align 8
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@MAX_PHASE_DELAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to find match\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SDHCI_OMAP_AC12 = common dso_local global i32 0, align 4
@AC12_SCLK_SEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Tuning failed\0A\00", align 1
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i64)* @sdhci_omap_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_execute_tuning(%struct.mmc_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_omap_host*, align 8
  %9 = alloca %struct.thermal_zone_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.mmc_ios*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %25)
  store %struct.sdhci_host* %26, %struct.sdhci_host** %6, align 8
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %28 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %27)
  store %struct.sdhci_pltfm_host* %28, %struct.sdhci_pltfm_host** %7, align 8
  %29 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %30 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %29)
  store %struct.sdhci_omap_host* %30, %struct.sdhci_omap_host** %8, align 8
  %31 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %32 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %31, i32 0, i32 1
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %10, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 0
  store %struct.mmc_ios* %35, %struct.mmc_ios** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %11, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 52000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %419

41:                                               ; preds = %2
  %42 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %43 = load i32, i32* @SDHCI_OMAP_CAPA2, align 4
  %44 = call i64 @sdhci_omap_readl(%struct.sdhci_omap_host* %42, i32 %43)
  store i64 %44, i64* %23, align 8
  %45 = load %struct.mmc_ios*, %struct.mmc_ios** %11, align 8
  %46 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i64, i64* %23, align 8
  %52 = load i64, i64* @CAPA2_TSDR50, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %419

56:                                               ; preds = %50, %41
  %57 = call %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.thermal_zone_device* %57, %struct.thermal_zone_device** %9, align 8
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %59 = call i64 @IS_ERR(%struct.thermal_zone_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %65 = call i32 @PTR_ERR(%struct.thermal_zone_device* %64)
  store i32 %65, i32* %3, align 4
  br label %419

66:                                               ; preds = %56
  %67 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %68 = call i32 @thermal_zone_get_temp(%struct.thermal_zone_device* %67, i32* %21)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %22, align 4
  store i32 %72, i32* %3, align 4
  br label %419

73:                                               ; preds = %66
  %74 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %75 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %76 = call i64 @sdhci_omap_readl(%struct.sdhci_omap_host* %74, i32 %75)
  store i64 %76, i64* %23, align 8
  %77 = load i64, i64* @DLL_SWT, align 8
  %78 = load i64, i64* %23, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %23, align 8
  %80 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %81 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %82 = load i64, i64* %23, align 8
  %83 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %80, i32 %81, i64 %82)
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %85 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %73
  %91 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %94 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  store i32 1, i32* %15, align 4
  br label %97

97:                                               ; preds = %90, %73
  %98 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %99 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %141, %97
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* @MAX_PHASE_DELAY, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %100
  %105 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %106 = load i64, i64* %20, align 8
  %107 = call i32 @sdhci_omap_set_dll(%struct.sdhci_omap_host* %105, i64 %106)
  %108 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @mmc_send_tuning(%struct.mmc_host* %108, i64 %109, i32* null)
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %104
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, i64* %18, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %18, align 8
  br label %131

122:                                              ; preds = %116
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* %18, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %130

128:                                              ; preds = %122
  %129 = load i64, i64* %20, align 8
  store i64 %129, i64* %12, align 8
  store i64 1, i64* %18, align 8
  br label %130

130:                                              ; preds = %128, %125
  br label %131

131:                                              ; preds = %130, %119
  br label %134

132:                                              ; preds = %104
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %132, %131
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %18, align 8
  store i64 %140, i64* %19, align 8
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %17, align 4
  %143 = load i64, i64* %20, align 8
  %144 = add nsw i64 %143, 4
  store i64 %144, i64* %20, align 8
  br label %100

145:                                              ; preds = %100
  %146 = load i64, i64* %19, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load %struct.device*, %struct.device** %10, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %22, align 4
  br label %384

153:                                              ; preds = %145
  %154 = load i32, i32* %21, align 4
  %155 = icmp slt i32 %154, -20000
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* %19, align 8
  %159 = sub nsw i64 %158, 1
  %160 = mul nsw i64 4, %159
  %161 = add nsw i64 %157, %160
  %162 = sub nsw i64 %161, 24
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %19, align 8
  %165 = mul nsw i64 13, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @DIV_ROUND_UP(i32 %166, i32 16)
  %168 = mul nsw i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %163, %169
  %171 = call i64 @min(i64 %162, i64 %170)
  store i64 %171, i64* %20, align 8
  br label %246

172:                                              ; preds = %153
  %173 = load i32, i32* %21, align 4
  %174 = icmp slt i32 %173, 20000
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %19, align 8
  %178 = mul nsw i64 9, %177
  %179 = trunc i64 %178 to i32
  %180 = call i32 @DIV_ROUND_UP(i32 %179, i32 16)
  %181 = mul nsw i32 %180, 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %176, %182
  store i64 %183, i64* %20, align 8
  br label %245

184:                                              ; preds = %172
  %185 = load i32, i32* %21, align 4
  %186 = icmp slt i32 %185, 40000
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* %19, align 8
  %190 = mul nsw i64 8, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @DIV_ROUND_UP(i32 %191, i32 16)
  %193 = mul nsw i32 %192, 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %188, %194
  store i64 %195, i64* %20, align 8
  br label %244

196:                                              ; preds = %184
  %197 = load i32, i32* %21, align 4
  %198 = icmp slt i32 %197, 70000
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %19, align 8
  %202 = mul nsw i64 7, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @DIV_ROUND_UP(i32 %203, i32 16)
  %205 = mul nsw i32 %204, 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %200, %206
  store i64 %207, i64* %20, align 8
  br label %243

208:                                              ; preds = %196
  %209 = load i32, i32* %21, align 4
  %210 = icmp slt i32 %209, 90000
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %19, align 8
  %214 = mul nsw i64 5, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @DIV_ROUND_UP(i32 %215, i32 16)
  %217 = mul nsw i32 %216, 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %212, %218
  store i64 %219, i64* %20, align 8
  br label %242

220:                                              ; preds = %208
  %221 = load i32, i32* %21, align 4
  %222 = icmp slt i32 %221, 120000
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* %19, align 8
  %226 = mul nsw i64 4, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 @DIV_ROUND_UP(i32 %227, i32 16)
  %229 = mul nsw i32 %228, 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %224, %230
  store i64 %231, i64* %20, align 8
  br label %241

232:                                              ; preds = %220
  %233 = load i64, i64* %13, align 8
  %234 = load i64, i64* %19, align 8
  %235 = mul nsw i64 3, %234
  %236 = trunc i64 %235 to i32
  %237 = call i32 @DIV_ROUND_UP(i32 %236, i32 16)
  %238 = mul nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %233, %239
  store i64 %240, i64* %20, align 8
  br label %241

241:                                              ; preds = %232, %223
  br label %242

242:                                              ; preds = %241, %211
  br label %243

243:                                              ; preds = %242, %199
  br label %244

244:                                              ; preds = %243, %187
  br label %245

245:                                              ; preds = %244, %175
  br label %246

246:                                              ; preds = %245, %156
  store i32 3, i32* %24, align 4
  br label %247

247:                                              ; preds = %298, %246
  %248 = load i32, i32* %24, align 4
  %249 = icmp sle i32 %248, 10
  br i1 %249, label %250, label %301

250:                                              ; preds = %247
  %251 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %252 = load i64, i64* %20, align 8
  %253 = load i32, i32* %24, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %252, %254
  %256 = call i32 @sdhci_omap_set_dll(%struct.sdhci_omap_host* %251, i64 %255)
  %257 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %258 = load i64, i64* %5, align 8
  %259 = call i64 @mmc_send_tuning(%struct.mmc_host* %257, i64 %258, i32* null)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %297

261:                                              ; preds = %250
  %262 = load i32, i32* %21, align 4
  %263 = icmp slt i32 %262, 10000
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %265, 6
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %20, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %20, align 8
  br label %296

270:                                              ; preds = %261
  %271 = load i32, i32* %21, align 4
  %272 = icmp slt i32 %271, 20000
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load i32, i32* %24, align 4
  %275 = sub nsw i32 %274, 12
  %276 = sext i32 %275 to i64
  %277 = load i64, i64* %20, align 8
  %278 = add nsw i64 %277, %276
  store i64 %278, i64* %20, align 8
  br label %295

279:                                              ; preds = %270
  %280 = load i32, i32* %21, align 4
  %281 = icmp slt i32 %280, 70000
  br i1 %281, label %282, label %288

282:                                              ; preds = %279
  %283 = load i32, i32* %24, align 4
  %284 = sub nsw i32 %283, 8
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* %20, align 8
  %287 = add nsw i64 %286, %285
  store i64 %287, i64* %20, align 8
  br label %294

288:                                              ; preds = %279
  %289 = load i32, i32* %24, align 4
  %290 = sub nsw i32 %289, 6
  %291 = sext i32 %290 to i64
  %292 = load i64, i64* %20, align 8
  %293 = add nsw i64 %292, %291
  store i64 %293, i64* %20, align 8
  br label %294

294:                                              ; preds = %288, %282
  br label %295

295:                                              ; preds = %294, %273
  br label %296

296:                                              ; preds = %295, %264
  br label %367

297:                                              ; preds = %250
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %24, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %24, align 4
  br label %247

301:                                              ; preds = %247
  store i32 2, i32* %24, align 4
  br label %302

302:                                              ; preds = %363, %301
  %303 = load i32, i32* %24, align 4
  %304 = icmp sge i32 %303, -10
  br i1 %304, label %305, label %366

305:                                              ; preds = %302
  %306 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %307 = load i64, i64* %20, align 8
  %308 = load i32, i32* %24, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %307, %309
  %311 = call i32 @sdhci_omap_set_dll(%struct.sdhci_omap_host* %306, i64 %310)
  %312 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %313 = load i64, i64* %5, align 8
  %314 = call i64 @mmc_send_tuning(%struct.mmc_host* %312, i64 %313, i32* null)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %362

316:                                              ; preds = %305
  %317 = load i32, i32* %21, align 4
  %318 = icmp slt i32 %317, 10000
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load i32, i32* %24, align 4
  %321 = add nsw i32 %320, 12
  %322 = sext i32 %321 to i64
  %323 = load i64, i64* %20, align 8
  %324 = add nsw i64 %323, %322
  store i64 %324, i64* %20, align 8
  br label %361

325:                                              ; preds = %316
  %326 = load i32, i32* %21, align 4
  %327 = icmp slt i32 %326, 20000
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32, i32* %24, align 4
  %330 = add nsw i32 %329, 8
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %20, align 8
  %333 = add nsw i64 %332, %331
  store i64 %333, i64* %20, align 8
  br label %360

334:                                              ; preds = %325
  %335 = load i32, i32* %21, align 4
  %336 = icmp slt i32 %335, 70000
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i32, i32* %24, align 4
  %339 = add nsw i32 %338, 8
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %20, align 8
  %342 = add nsw i64 %341, %340
  store i64 %342, i64* %20, align 8
  br label %359

343:                                              ; preds = %334
  %344 = load i32, i32* %21, align 4
  %345 = icmp slt i32 %344, 90000
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i32, i32* %24, align 4
  %348 = add nsw i32 %347, 10
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %20, align 8
  %351 = add nsw i64 %350, %349
  store i64 %351, i64* %20, align 8
  br label %358

352:                                              ; preds = %343
  %353 = load i32, i32* %24, align 4
  %354 = add nsw i32 %353, 12
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %20, align 8
  %357 = add nsw i64 %356, %355
  store i64 %357, i64* %20, align 8
  br label %358

358:                                              ; preds = %352, %346
  br label %359

359:                                              ; preds = %358, %337
  br label %360

360:                                              ; preds = %359, %328
  br label %361

361:                                              ; preds = %360, %319
  br label %367

362:                                              ; preds = %305
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %24, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %24, align 4
  br label %302

366:                                              ; preds = %302
  br label %367

367:                                              ; preds = %366, %361, %296
  %368 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %369 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %370 = call i64 @sdhci_omap_readl(%struct.sdhci_omap_host* %368, i32 %369)
  store i64 %370, i64* %23, align 8
  %371 = load i64, i64* %23, align 8
  %372 = load i64, i64* @AC12_SCLK_SEL, align 8
  %373 = and i64 %371, %372
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %367
  %376 = load i32, i32* @EIO, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %22, align 4
  br label %384

378:                                              ; preds = %367
  %379 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %380 = load i64, i64* %20, align 8
  %381 = call i32 @sdhci_omap_set_dll(%struct.sdhci_omap_host* %379, i64 %380)
  %382 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %383 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %382, i32 0, i32 0
  store i32 0, i32* %383, align 8
  br label %391

384:                                              ; preds = %375, %148
  %385 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %386 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %385, i32 0, i32 0
  store i32 0, i32* %386, align 8
  %387 = load %struct.device*, %struct.device** %10, align 8
  %388 = call i32 @dev_err(%struct.device* %387, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %389 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %8, align 8
  %390 = call i32 @sdhci_omap_disable_tuning(%struct.sdhci_omap_host* %389)
  br label %391

391:                                              ; preds = %384, %378
  %392 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %393 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %394 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %395 = or i32 %393, %394
  %396 = call i32 @sdhci_reset(%struct.sdhci_host* %392, i32 %395)
  %397 = load i32, i32* %15, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %391
  %400 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %401 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %402 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %399, %391
  %406 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %407 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %408 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %411 = call i32 @sdhci_writel(%struct.sdhci_host* %406, i32 %409, i32 %410)
  %412 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %413 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %414 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %417 = call i32 @sdhci_writel(%struct.sdhci_host* %412, i32 %415, i32 %416)
  %418 = load i32, i32* %22, align 4
  store i32 %418, i32* %3, align 4
  br label %419

419:                                              ; preds = %405, %71, %61, %55, %40
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i8*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @thermal_zone_get_temp(%struct.thermal_zone_device*, i32*) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i64) #1

declare dso_local i32 @sdhci_omap_set_dll(%struct.sdhci_omap_host*, i64) #1

declare dso_local i64 @mmc_send_tuning(%struct.mmc_host*, i64, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sdhci_omap_disable_tuning(%struct.sdhci_omap_host*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
