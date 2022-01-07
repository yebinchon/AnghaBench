; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_set_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32, i32, i32, i8, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_8__, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"set mclk to 0\0A\00", align 1
@MSDC_CFG = common dso_local global i32 0, align 4
@MSDC_CFG_CKPDN = common dso_local global i32 0, align 4
@MSDC_INTEN = common dso_local global i32 0, align 4
@MSDC_CFG_HS400_CK_MODE = common dso_local global i32 0, align 4
@MSDC_CFG_HS400_CK_MODE_EXTRA = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i8 0, align 1
@MMC_TIMING_MMC_DDR52 = common dso_local global i8 0, align 1
@MMC_TIMING_MMC_HS400 = common dso_local global i8 0, align 1
@MSDC_CFG_CKMOD = common dso_local global i32 0, align 4
@MSDC_CFG_CKDIV = common dso_local global i32 0, align 4
@MSDC_CFG_CKMOD_EXTRA = common dso_local global i32 0, align 4
@MSDC_CFG_CKDIV_EXTRA = common dso_local global i32 0, align 4
@MSDC_CFG_CKSTB = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i32 0, align 4
@EMMC_TOP_CONTROL = common dso_local global i32 0, align 4
@EMMC_TOP_CMD = common dso_local global i32 0, align 4
@PAD_CMD_TUNE = common dso_local global i32 0, align 4
@MSDC_PAD_TUNE_CMDRRDLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"sclk: %d, timing: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, i8, i32)* @msdc_set_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_set_mclk(%struct.msdc_host* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %12 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %13 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %12, i32 0, i32 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %3
  %20 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %21 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %25 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %27 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %26, i32 0, i32 6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %31 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MSDC_CFG, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @MSDC_CFG_CKPDN, align 4
  %36 = call i32 @sdr_clr_bits(i32 %34, i32 %35)
  br label %483

37:                                               ; preds = %3
  %38 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %39 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSDC_INTEN, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @readl(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %45 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MSDC_INTEN, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sdr_clr_bits(i32 %48, i32 %49)
  %51 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %52 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %51, i32 0, i32 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %65

57:                                               ; preds = %37
  %58 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %59 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MSDC_CFG, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @MSDC_CFG_HS400_CK_MODE, align 4
  %64 = call i32 @sdr_clr_bits(i32 %62, i32 %63)
  br label %73

65:                                               ; preds = %37
  %66 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %67 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MSDC_CFG, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @MSDC_CFG_HS400_CK_MODE_EXTRA, align 4
  %72 = call i32 @sdr_clr_bits(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %57
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @MMC_TIMING_UHS_DDR50, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @MMC_TIMING_MMC_DDR52, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @MMC_TIMING_MMC_HS400, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %172

91:                                               ; preds = %85, %79, %73
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @MMC_TIMING_MMC_HS400, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 3, i32* %7, align 4
  br label %99

98:                                               ; preds = %91
  store i32 2, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %102 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 2
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  %107 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %108 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = ashr i32 %109, 2
  store i32 %110, i32* %10, align 4
  br label %130

111:                                              ; preds = %99
  %112 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %113 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 %115, 2
  %117 = sub nsw i32 %116, 1
  %118 = add nsw i32 %114, %117
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 %119, 2
  %121 = sdiv i32 %118, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %123 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 2
  %126 = load i32, i32* %9, align 4
  %127 = sdiv i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = ashr i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %111, %106
  %131 = load i8, i8* %5, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @MMC_TIMING_MMC_HS400, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %171

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %139 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = ashr i32 %140, 1
  %142 = icmp sge i32 %137, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %136
  %144 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %145 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %144, i32 0, i32 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %152 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MSDC_CFG, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* @MSDC_CFG_HS400_CK_MODE, align 4
  %157 = call i32 @sdr_set_bits(i32 %155, i32 %156)
  br label %166

158:                                              ; preds = %143
  %159 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %160 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MSDC_CFG, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* @MSDC_CFG_HS400_CK_MODE_EXTRA, align 4
  %165 = call i32 @sdr_set_bits(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %158, %150
  %167 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %168 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %166, %136, %130
  br label %213

172:                                              ; preds = %85
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %175 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %179 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %180 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %10, align 4
  br label %212

182:                                              ; preds = %172
  store i32 0, i32* %7, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %185 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = ashr i32 %186, 1
  %188 = icmp sge i32 %183, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %182
  store i32 0, i32* %9, align 4
  %190 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %191 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = ashr i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %211

194:                                              ; preds = %182
  %195 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %196 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = shl i32 %198, 2
  %200 = sub nsw i32 %199, 1
  %201 = add nsw i32 %197, %200
  %202 = load i32, i32* %6, align 4
  %203 = shl i32 %202, 2
  %204 = sdiv i32 %201, %203
  store i32 %204, i32* %9, align 4
  %205 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %206 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = ashr i32 %207, 2
  %209 = load i32, i32* %9, align 4
  %210 = sdiv i32 %208, %209
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %194, %189
  br label %212

212:                                              ; preds = %211, %178
  br label %213

213:                                              ; preds = %212, %171
  %214 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %215 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @MSDC_CFG, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* @MSDC_CFG_CKPDN, align 4
  %220 = call i32 @sdr_clr_bits(i32 %218, i32 %219)
  %221 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %222 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %221, i32 0, i32 14
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %213
  %226 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %227 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %226, i32 0, i32 14
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @clk_disable_unprepare(i64 %228)
  br label %236

230:                                              ; preds = %213
  %231 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %232 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %231, i32 0, i32 13
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @clk_get_parent(i32 %233)
  %235 = call i32 @clk_disable_unprepare(i64 %234)
  br label %236

236:                                              ; preds = %230, %225
  %237 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %238 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %237, i32 0, i32 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %257

243:                                              ; preds = %236
  %244 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %245 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @MSDC_CFG, align 4
  %248 = add nsw i32 %246, %247
  %249 = load i32, i32* @MSDC_CFG_CKMOD, align 4
  %250 = load i32, i32* @MSDC_CFG_CKDIV, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* %7, align 4
  %253 = shl i32 %252, 8
  %254 = load i32, i32* %9, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @sdr_set_field(i32 %248, i32 %251, i32 %255)
  br label %271

257:                                              ; preds = %236
  %258 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %259 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @MSDC_CFG, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* @MSDC_CFG_CKMOD_EXTRA, align 4
  %264 = load i32, i32* @MSDC_CFG_CKDIV_EXTRA, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %7, align 4
  %267 = shl i32 %266, 12
  %268 = load i32, i32* %9, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @sdr_set_field(i32 %262, i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %257, %243
  %272 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %273 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %272, i32 0, i32 14
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %278 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %277, i32 0, i32 14
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @clk_prepare_enable(i64 %279)
  br label %287

281:                                              ; preds = %271
  %282 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %283 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %282, i32 0, i32 13
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @clk_get_parent(i32 %284)
  %286 = call i32 @clk_prepare_enable(i64 %285)
  br label %287

287:                                              ; preds = %281, %276
  br label %288

288:                                              ; preds = %299, %287
  %289 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %290 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @MSDC_CFG, align 4
  %293 = add nsw i32 %291, %292
  %294 = call i32 @readl(i32 %293)
  %295 = load i32, i32* @MSDC_CFG_CKSTB, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  br i1 %298, label %299, label %301

299:                                              ; preds = %288
  %300 = call i32 (...) @cpu_relax()
  br label %288

301:                                              ; preds = %288
  %302 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %303 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @MSDC_CFG, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* @MSDC_CFG_CKPDN, align 4
  %308 = call i32 @sdr_set_bits(i32 %306, i32 %307)
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %311 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %310, i32 0, i32 6
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  store i32 %309, i32* %313, align 4
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %316 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load i8, i8* %5, align 1
  %318 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %319 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %318, i32 0, i32 3
  store i8 %317, i8* %319, align 4
  %320 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %321 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %322 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %321, i32 0, i32 12
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %325 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @msdc_set_timeout(%struct.msdc_host* %320, i32 %323, i32 %326)
  %328 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %329 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @MSDC_INTEN, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @sdr_set_bits(i32 %332, i32 %333)
  %335 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %336 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %335, i32 0, i32 6
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp sle i32 %339, 52000000
  br i1 %340, label %341, label %389

341:                                              ; preds = %301
  %342 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %343 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %347 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @MSDC_IOCON, align 4
  %350 = add nsw i32 %348, %349
  %351 = call i32 @writel(i32 %345, i32 %350)
  %352 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %353 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %377

356:                                              ; preds = %341
  %357 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %358 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %357, i32 0, i32 10
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %362 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %365 = add nsw i32 %363, %364
  %366 = call i32 @writel(i32 %360, i32 %365)
  %367 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %368 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %367, i32 0, i32 10
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %372 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @EMMC_TOP_CMD, align 4
  %375 = add nsw i32 %373, %374
  %376 = call i32 @writel(i32 %370, i32 %375)
  br label %388

377:                                              ; preds = %341
  %378 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %379 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %378, i32 0, i32 10
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %383 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %384, %385
  %387 = call i32 @writel(i32 %381, i32 %386)
  br label %388

388:                                              ; preds = %377, %356
  br label %447

389:                                              ; preds = %301
  %390 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %391 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %390, i32 0, i32 9
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %395 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @MSDC_IOCON, align 4
  %398 = add nsw i32 %396, %397
  %399 = call i32 @writel(i32 %393, i32 %398)
  %400 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %401 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %400, i32 0, i32 9
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %405 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @PAD_CMD_TUNE, align 4
  %408 = add nsw i32 %406, %407
  %409 = call i32 @writel(i32 %403, i32 %408)
  %410 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %411 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %435

414:                                              ; preds = %389
  %415 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %416 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %415, i32 0, i32 9
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %420 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @EMMC_TOP_CONTROL, align 4
  %423 = add nsw i32 %421, %422
  %424 = call i32 @writel(i32 %418, i32 %423)
  %425 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %426 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %425, i32 0, i32 9
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %430 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @EMMC_TOP_CMD, align 4
  %433 = add nsw i32 %431, %432
  %434 = call i32 @writel(i32 %428, i32 %433)
  br label %446

435:                                              ; preds = %389
  %436 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %437 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %436, i32 0, i32 9
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %441 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %11, align 4
  %444 = add nsw i32 %442, %443
  %445 = call i32 @writel(i32 %439, i32 %444)
  br label %446

446:                                              ; preds = %435, %414
  br label %447

447:                                              ; preds = %446, %388
  %448 = load i8, i8* %5, align 1
  %449 = zext i8 %448 to i32
  %450 = load i8, i8* @MMC_TIMING_MMC_HS400, align 1
  %451 = zext i8 %450 to i32
  %452 = icmp eq i32 %449, %451
  br i1 %452, label %453, label %471

453:                                              ; preds = %447
  %454 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %455 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %454, i32 0, i32 8
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %471

460:                                              ; preds = %453
  %461 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %462 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %11, align 4
  %465 = add nsw i32 %463, %464
  %466 = load i32, i32* @MSDC_PAD_TUNE_CMDRRDLY, align 4
  %467 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %468 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @sdr_set_field(i32 %465, i32 %466, i32 %469)
  br label %471

471:                                              ; preds = %460, %453, %447
  %472 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %473 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %472, i32 0, i32 7
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %476 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %475, i32 0, i32 6
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load i8, i8* %5, align 1
  %481 = zext i8 %480 to i32
  %482 = call i32 (i32, i8*, ...) @dev_dbg(i32 %474, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %479, i32 %481)
  br label %483

483:                                              ; preds = %471, %19
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @sdr_clr_bits(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @sdr_set_bits(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i64 @clk_get_parent(i32) #1

declare dso_local i32 @sdr_set_field(i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @msdc_set_timeout(%struct.msdc_host*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
