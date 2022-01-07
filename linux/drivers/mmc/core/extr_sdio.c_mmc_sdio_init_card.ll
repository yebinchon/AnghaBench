; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_card*, %struct.TYPE_12__, %struct.TYPE_7__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.mmc_host*, %struct.mmc_card*)* }
%struct.mmc_card = type { i64, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@R4_18V_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Skipping voltage switch\0A\00", align 1
@use_spi_crc = common dso_local global i32 0, align 4
@R4_MEMORY_PRESENT = common dso_local global i32 0, align 4
@MMC_TYPE_SD_COMBO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Perhaps the card was replaced\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MMC_QUIRK_NONSTD_SDIO = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i32 0, align 4
@sdio_fixup_methods = common dso_local global i32 0, align 4
@sd_type = common dso_local global i32 0, align 4
@MMC_CAP2_AVOID_3_3V = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: Host failed to negotiate down from 3.3V\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, %struct.mmc_card*)* @mmc_sdio_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_init_card(%struct.mmc_host* %0, i32 %1, %struct.mmc_card* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mmc_card* %2, %struct.mmc_card** %7, align 8
  store i32 10, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %23 = call i64 @mmc_host_uhs(%struct.mmc_host* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @R4_18V_PRESENT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %3
  br label %30

30:                                               ; preds = %275, %166, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %35 = call i32 @mmc_hostname(%struct.mmc_host* %34)
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @R4_18V_PRESENT, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %42, i32 %43, i32* %11)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %448

48:                                               ; preds = %41
  %49 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %50 = call i64 @mmc_host_is_spi(%struct.mmc_host* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %54 = load i32, i32* @use_spi_crc, align 4
  %55 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %448

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %62 = call %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %61, i32* null)
  store %struct.mmc_card* %62, %struct.mmc_card** %8, align 8
  %63 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %64 = call i64 @IS_ERR(%struct.mmc_card* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %68 = call i32 @PTR_ERR(%struct.mmc_card* %67)
  store i32 %68, i32* %9, align 4
  br label %448

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @R4_MEMORY_PRESENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %69
  %75 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %80 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @mmc_sd_get_cid(%struct.mmc_host* %75, i32 %78, i32 %81, i32* null)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %74
  %85 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %86 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %87 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %89 = icmp ne %struct.mmc_card* %88, null
  br i1 %89, label %90, label %113

90:                                               ; preds = %84
  %91 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %92 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %98 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %101 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @memcmp(i32 %99, i32 %102, i32 4)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %96, %90
  %106 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %107 = call i32 @mmc_remove_card(%struct.mmc_card* %106)
  %108 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %109 = call i32 @mmc_hostname(%struct.mmc_host* %108)
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %450

113:                                              ; preds = %96, %84
  br label %135

114:                                              ; preds = %74, %69
  %115 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %116 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %117 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %119 = icmp ne %struct.mmc_card* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %122 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %128 = call i32 @mmc_remove_card(%struct.mmc_card* %127)
  %129 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %130 = call i32 @mmc_hostname(%struct.mmc_host* %129)
  %131 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %450

134:                                              ; preds = %120, %114
  br label %135

135:                                              ; preds = %134, %113
  %136 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %137 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32 (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_card*)** %139, align 8
  %141 = icmp ne i32 (%struct.mmc_host*, %struct.mmc_card*)* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %144 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32 (%struct.mmc_host*, %struct.mmc_card*)*, i32 (%struct.mmc_host*, %struct.mmc_card*)** %146, align 8
  %148 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %149 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %150 = call i32 %147(%struct.mmc_host* %148, %struct.mmc_card* %149)
  br label %151

151:                                              ; preds = %142, %135
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @R4_18V_PRESENT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %151
  %159 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @mmc_set_uhs_voltage(%struct.mmc_host* %159, i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %168 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %169 = call i32 @mmc_sdio_resend_if_cond(%struct.mmc_host* %167, %struct.mmc_card* %168)
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %10, align 4
  br label %30

172:                                              ; preds = %158
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32, i32* @R4_18V_PRESENT, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %6, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %175, %172
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181, %151
  %183 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %184 = call i64 @mmc_host_is_spi(%struct.mmc_host* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %204, label %186

186:                                              ; preds = %182
  %187 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %188 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %189 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %188, i32 0, i32 8
  %190 = call i32 @mmc_send_relative_addr(%struct.mmc_host* %187, i32* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %441

194:                                              ; preds = %186
  %195 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %196 = icmp ne %struct.mmc_card* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %199 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %202 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %201, i32 0, i32 8
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %197, %194
  br label %204

204:                                              ; preds = %203, %182
  %205 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %206 = icmp ne %struct.mmc_card* %205, null
  br i1 %206, label %224, label %207

207:                                              ; preds = %204
  %208 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %209 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %215 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %216 = call i32 @mmc_sd_get_csd(%struct.mmc_host* %214, %struct.mmc_card* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %4, align 4
  br label %450

221:                                              ; preds = %213
  %222 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %223 = call i32 @mmc_decode_cid(%struct.mmc_card* %222)
  br label %224

224:                                              ; preds = %221, %207, %204
  %225 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %226 = call i64 @mmc_host_is_spi(%struct.mmc_host* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %230 = call i32 @mmc_select_card(%struct.mmc_card* %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %441

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %234, %224
  %236 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %237 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @MMC_QUIRK_NONSTD_SDIO, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %235
  %243 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %244 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %245 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @mmc_set_clock(%struct.mmc_host* %243, i32 %247)
  %249 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %250 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %242
  %255 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %256 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MMC_TIMING_SD_HS, align 4
  %259 = call i32 @mmc_set_timing(i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %242
  br label %433

261:                                              ; preds = %235
  %262 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @sdio_read_cccr(%struct.mmc_card* %262, i32 %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %261
  %268 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %269 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %270 = call i32 @mmc_sdio_resend_if_cond(%struct.mmc_host* %268, %struct.mmc_card* %269)
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @R4_18V_PRESENT, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  store i32 0, i32* %10, align 4
  br label %30

276:                                              ; preds = %267
  br label %441

277:                                              ; preds = %261
  %278 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %279 = call i32 @sdio_read_common_cis(%struct.mmc_card* %278)
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %441

283:                                              ; preds = %277
  %284 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %285 = icmp ne %struct.mmc_card* %284, null
  br i1 %285, label %286, label %321

286:                                              ; preds = %283
  %287 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %288 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %292 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %290, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %286
  %297 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %298 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %302 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %301, i32 0, i32 6
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %300, %304
  br label %306

306:                                              ; preds = %296, %286
  %307 = phi i1 [ false, %286 ], [ %305, %296 ]
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %13, align 4
  %309 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %310 = call i32 @mmc_remove_card(%struct.mmc_card* %309)
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %306
  %314 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %315 = call i32 @mmc_hostname(%struct.mmc_host* %314)
  %316 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @ENOENT, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %4, align 4
  br label %450

319:                                              ; preds = %306
  %320 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %320, %struct.mmc_card** %8, align 8
  br label %321

321:                                              ; preds = %319, %283
  %322 = load i32, i32* %12, align 4
  %323 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %324 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %323, i32 0, i32 2
  store i32 %322, i32* %324, align 4
  %325 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %326 = load i32, i32* @sdio_fixup_methods, align 4
  %327 = call i32 @mmc_fixup_device(%struct.mmc_card* %325, i32 %326)
  %328 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %329 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %361

333:                                              ; preds = %321
  %334 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %335 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %336 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %337 = icmp ne %struct.mmc_card* %336, null
  %338 = zext i1 %337 to i32
  %339 = call i32 @mmc_sd_setup_card(%struct.mmc_host* %334, %struct.mmc_card* %335, i32 %338)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %356

342:                                              ; preds = %333
  %343 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %344 = call i32 @mmc_go_idle(%struct.mmc_host* %343)
  %345 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %346 = call i64 @mmc_host_is_spi(%struct.mmc_host* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %342
  %349 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %350 = load i32, i32* @use_spi_crc, align 4
  %351 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %342
  %353 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %354 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %355 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %354, i32 0, i32 0
  store i64 %353, i64* %355, align 8
  br label %360

356:                                              ; preds = %333
  %357 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %358 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i32* @sd_type, i32** %359, align 8
  br label %360

360:                                              ; preds = %356, %352
  br label %361

361:                                              ; preds = %360, %321
  %362 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %363 = call i32 @sdio_disable_cd(%struct.mmc_card* %362)
  store i32 %363, i32* %9, align 4
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  br label %441

367:                                              ; preds = %361
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* @R4_18V_PRESENT, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %367
  %373 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %374 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %372
  %379 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %380 = call i32 @mmc_sdio_init_uhs_card(%struct.mmc_card* %379)
  store i32 %380, i32* %9, align 4
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378
  br label %441

384:                                              ; preds = %378
  br label %412

385:                                              ; preds = %372, %367
  %386 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %387 = call i32 @sdio_enable_hs(%struct.mmc_card* %386)
  store i32 %387, i32* %9, align 4
  %388 = load i32, i32* %9, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %392 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @MMC_TIMING_SD_HS, align 4
  %395 = call i32 @mmc_set_timing(i32 %393, i32 %394)
  br label %401

396:                                              ; preds = %385
  %397 = load i32, i32* %9, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  br label %441

400:                                              ; preds = %396
  br label %401

401:                                              ; preds = %400, %390
  %402 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %403 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %404 = call i32 @mmc_sdio_get_max_clock(%struct.mmc_card* %403)
  %405 = call i32 @mmc_set_clock(%struct.mmc_host* %402, i32 %404)
  %406 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %407 = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %406)
  store i32 %407, i32* %9, align 4
  %408 = load i32, i32* %9, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %401
  br label %441

411:                                              ; preds = %401
  br label %412

412:                                              ; preds = %411, %384
  %413 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %414 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @MMC_CAP2_AVOID_3_3V, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %432

419:                                              ; preds = %412
  %420 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %421 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @MMC_SIGNAL_VOLTAGE_330, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %432

426:                                              ; preds = %419
  %427 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %428 = call i32 @mmc_hostname(%struct.mmc_host* %427)
  %429 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* @EINVAL, align 4
  %431 = sub nsw i32 0, %430
  store i32 %431, i32* %9, align 4
  br label %441

432:                                              ; preds = %419, %412
  br label %433

433:                                              ; preds = %432, %260
  %434 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %435 = icmp ne %struct.mmc_card* %434, null
  br i1 %435, label %440, label %436

436:                                              ; preds = %433
  %437 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %438 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %439 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %438, i32 0, i32 1
  store %struct.mmc_card* %437, %struct.mmc_card** %439, align 8
  br label %440

440:                                              ; preds = %436, %433
  store i32 0, i32* %4, align 4
  br label %450

441:                                              ; preds = %426, %410, %399, %383, %366, %282, %276, %233, %193
  %442 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %443 = icmp ne %struct.mmc_card* %442, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %446 = call i32 @mmc_remove_card(%struct.mmc_card* %445)
  br label %447

447:                                              ; preds = %444, %441
  br label %448

448:                                              ; preds = %447, %66, %58, %47
  %449 = load i32, i32* %9, align 4
  store i32 %449, i32* %4, align 4
  br label %450

450:                                              ; preds = %448, %440, %313, %219, %126, %105
  %451 = load i32, i32* %4, align 4
  ret i32 %451
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mmc_host_uhs(%struct.mmc_host*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_io_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_spi_set_crc(%struct.mmc_host*, i32) #1

declare dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_card*) #1

declare dso_local i32 @PTR_ERR(%struct.mmc_card*) #1

declare dso_local i64 @mmc_sd_get_cid(%struct.mmc_host*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mmc_remove_card(%struct.mmc_card*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_set_uhs_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sdio_resend_if_cond(%struct.mmc_host*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_send_relative_addr(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_sd_get_csd(%struct.mmc_host*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_decode_cid(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_set_timing(i32, i32) #1

declare dso_local i32 @sdio_read_cccr(%struct.mmc_card*, i32) #1

declare dso_local i32 @sdio_read_common_cis(%struct.mmc_card*) #1

declare dso_local i32 @mmc_fixup_device(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_sd_setup_card(%struct.mmc_host*, %struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @sdio_disable_cd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sdio_init_uhs_card(%struct.mmc_card*) #1

declare dso_local i32 @sdio_enable_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sdio_get_max_clock(%struct.mmc_card*) #1

declare dso_local i32 @sdio_enable_4bit_bus(%struct.mmc_card*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
