; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.msdc_host = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.msdc_delay_phase = type { i32, i64, i32, i32 }

@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@MSDC_PAD_TUNE_CMDRRDLY = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i32 0, align 4
@MSDC_IOCON_RSPL = common dso_local global i32 0, align 4
@PAD_DELAY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Final internal delay: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Final cmd pad delay: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @msdc_tune_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_tune_response(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdc_delay_phase, align 8
  %9 = alloca %struct.msdc_delay_phase, align 8
  %10 = alloca %struct.msdc_delay_phase, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.msdc_delay_phase, align 8
  %19 = alloca %struct.msdc_delay_phase, align 8
  %20 = alloca %struct.msdc_delay_phase, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %21)
  store %struct.msdc_host* %22, %struct.msdc_host** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = bitcast %struct.msdc_delay_phase* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %24 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %2
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %35, %2
  %43 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %44 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @MSDC_PAD_TUNE_CMDRRDLY, align 4
  %49 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %50 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sdr_set_field(i32 %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %55 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MSDC_IOCON, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %60 = call i32 @sdr_clr_bits(i32 %58, i32 %59)
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %94, %53
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @PAD_DELAY_MAX, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %66, i32 %67)
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %90, %65
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @mmc_send_tuning(%struct.mmc_host* %73, i32 %74, i32* %15)
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %16, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %72
  %84 = load i32, i32* %16, align 4
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %69

93:                                               ; preds = %83, %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %61

97:                                               ; preds = %61
  %98 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %99 = load i32, i32* %6, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %18, %struct.msdc_host* %98, i32 %99)
  %100 = bitcast %struct.msdc_delay_phase* %8 to i8*
  %101 = bitcast %struct.msdc_delay_phase* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 12
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %97
  br label %163

114:                                              ; preds = %109, %105
  %115 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %116 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MSDC_IOCON, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %121 = call i32 @sdr_set_bits(i32 %119, i32 %120)
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %155, %114
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @PAD_DELAY_MAX, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %158

126:                                              ; preds = %122
  %127 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %127, i32 %128)
  store i32 0, i32* %17, align 4
  br label %130

130:                                              ; preds = %151, %126
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 3
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @mmc_send_tuning(%struct.mmc_host* %134, i32 %135, i32* %15)
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %16, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %150

144:                                              ; preds = %133
  %145 = load i32, i32* %16, align 4
  %146 = shl i32 1, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %154

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %130

154:                                              ; preds = %144, %130
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %122

158:                                              ; preds = %122
  %159 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %160 = load i32, i32* %7, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %19, %struct.msdc_host* %159, i32 %160)
  %161 = bitcast %struct.msdc_delay_phase* %9 to i8*
  %162 = bitcast %struct.msdc_delay_phase* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 24, i1 false)
  br label %163

163:                                              ; preds = %158, %113
  %164 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @max(i32 %165, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %170, 12
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %174, 4
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %176, %172, %163
  %180 = load i32, i32* %12, align 4
  %181 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %186 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MSDC_IOCON, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %191 = call i32 @sdr_clr_bits(i32 %189, i32 %190)
  %192 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %11, align 4
  br label %204

194:                                              ; preds = %179
  %195 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %196 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MSDC_IOCON, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %201 = call i32 @sdr_set_bits(i32 %199, i32 %200)
  %202 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %194, %184
  %205 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %205, i32 %206)
  %208 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %209 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %208, i32 0, i32 3
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %204
  %215 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %216 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214, %204
  br label %267

220:                                              ; preds = %214
  store i32 0, i32* %16, align 4
  br label %221

221:                                              ; preds = %245, %220
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* @PAD_DELAY_MAX, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %221
  %226 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %227 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* @MSDC_PAD_TUNE_CMDRRDLY, align 4
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @sdr_set_field(i32 %230, i32 %231, i32 %232)
  %234 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i32 @mmc_send_tuning(%struct.mmc_host* %234, i32 %235, i32* %15)
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %225
  %240 = load i32, i32* %16, align 4
  %241 = shl i32 1, %240
  %242 = load i32, i32* %13, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %239, %225
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %221

248:                                              ; preds = %221
  %249 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %250 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @dev_dbg(i32 %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %252)
  %254 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %255 = load i32, i32* %13, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %20, %struct.msdc_host* %254, i32 %255)
  %256 = bitcast %struct.msdc_delay_phase* %10 to i8*
  %257 = bitcast %struct.msdc_delay_phase* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 24, i1 false)
  %258 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %259 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* @MSDC_PAD_TUNE_CMDRRDLY, align 4
  %264 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %10, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @sdr_set_field(i32 %262, i32 %263, i32 %265)
  br label %267

267:                                              ; preds = %248, %219
  %268 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %269 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @dev_dbg(i32 %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = icmp eq i32 %273, 255
  br i1 %274, label %275, label %278

275:                                              ; preds = %267
  %276 = load i32, i32* @EIO, align 4
  %277 = sub nsw i32 0, %276
  br label %279

278:                                              ; preds = %267
  br label %279

279:                                              ; preds = %278, %275
  %280 = phi i32 [ %277, %275 ], [ 0, %278 ]
  ret i32 %280
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_field(i32, i32, i32) #1

declare dso_local i32 @sdr_clr_bits(i32, i32) #1

declare dso_local i32 @msdc_set_cmd_delay(%struct.msdc_host*, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local void @get_best_delay(%struct.msdc_delay_phase* sret, %struct.msdc_host*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_bits(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
