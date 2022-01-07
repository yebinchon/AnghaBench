; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_ee_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at25.c_at25_ee_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at25_data = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@io_limit = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AT25_WREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"WREN --> %d\0A\00", align 1
@AT25_WRITE = common dso_local global i32 0, align 4
@EE_INSTR_BIT3_IS_ADDR = common dso_local global i32 0, align 4
@AT25_INSTR_BIT3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"write %u bytes at %u --> %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@EE_TIMEOUT = common dso_local global i64 0, align 8
@AT25_RDSR = common dso_local global i32 0, align 4
@AT25_SR_nRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rdsr --> %d (%02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"write %u bytes offset %u, timeout after %u msecs\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @at25_ee_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at25_ee_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.at25_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.at25_data*
  store %struct.at25_data* %23, %struct.at25_data** %10, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %27 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EFBIG, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %288

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %43 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %50 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %52, %53
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %48, %37
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %288

66:                                               ; preds = %56
  %67 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %68 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @io_limit, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @io_limit, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %66
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %79 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %77, %80
  %82 = add i32 %81, 1
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32* @kmalloc(i32 %82, i32 %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %288

90:                                               ; preds = %76
  %91 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %92 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  br label %94

94:                                               ; preds = %278, %90
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %18, align 4
  %96 = load i32*, i32** %14, align 8
  store i32* %96, i32** %19, align 8
  %97 = load i32, i32* @AT25_WREN, align 4
  %98 = load i32*, i32** %19, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %100 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @spi_write(%struct.TYPE_5__* %101, i32* %102, i32 1)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %108 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %281

113:                                              ; preds = %94
  %114 = load i32, i32* @AT25_WRITE, align 4
  store i32 %114, i32* %21, align 4
  %115 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %116 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @EE_INSTR_BIT3_IS_ADDR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %113
  %123 = load i32, i32* %18, align 4
  %124 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %125 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul i32 %126, 8
  %128 = shl i32 1, %127
  %129 = icmp uge i32 %123, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* @AT25_INSTR_BIT3, align 4
  %132 = load i32, i32* %21, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %130, %122
  br label %135

135:                                              ; preds = %134, %113
  %136 = load i32, i32* %21, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %19, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %140 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %142 [
    i32 2, label %147
    i32 1, label %152
    i32 0, label %152
  ]

142:                                              ; preds = %135
  %143 = load i32, i32* %18, align 4
  %144 = lshr i32 %143, 16
  %145 = load i32*, i32** %19, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %19, align 8
  store i32 %144, i32* %145, align 4
  br label %147

147:                                              ; preds = %135, %142
  %148 = load i32, i32* %18, align 4
  %149 = lshr i32 %148, 8
  %150 = load i32*, i32** %19, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %19, align 8
  store i32 %149, i32* %150, align 4
  br label %152

152:                                              ; preds = %135, %135, %147
  %153 = load i32, i32* %18, align 4
  %154 = lshr i32 %153, 0
  %155 = load i32*, i32** %19, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %19, align 8
  store i32 %154, i32* %155, align 4
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %13, align 4
  %161 = urem i32 %159, %160
  %162 = sub i32 %158, %161
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* %9, align 8
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load i64, i64* %9, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %167, %157
  %171 = load i32*, i32** %19, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @memcpy(i32* %171, i8* %172, i32 %173)
  %175 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %176 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %175, i32 0, i32 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %181 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add i32 %179, %182
  %184 = add i32 %183, 1
  %185 = call i32 @spi_write(%struct.TYPE_5__* %177, i32* %178, i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %187 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %186, i32 0, i32 2
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %12, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %170
  br label %281

197:                                              ; preds = %170
  %198 = load i64, i64* @jiffies, align 8
  %199 = load i64, i64* @EE_TIMEOUT, align 8
  %200 = call i64 @msecs_to_jiffies(i64 %199)
  %201 = add i64 %198, %200
  store i64 %201, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %202

202:                                              ; preds = %240, %197
  %203 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %204 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %203, i32 0, i32 2
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* @AT25_RDSR, align 4
  %207 = call i32 @spi_w8r8(%struct.TYPE_5__* %205, i32 %206)
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* @AT25_SR_nRDY, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %210, %202
  %216 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %217 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %219, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %220, i32 %221)
  %223 = call i32 @msleep(i32 1)
  br label %231

224:                                              ; preds = %210
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* @AT25_SR_nRDY, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  br label %242

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230, %215
  %232 = load i64, i64* %16, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %16, align 8
  %234 = icmp ult i64 %232, 3
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = load i64, i64* @jiffies, align 8
  %237 = load i64, i64* %15, align 8
  %238 = call i64 @time_before_eq(i64 %236, i64 %237)
  %239 = icmp ne i64 %238, 0
  br label %240

240:                                              ; preds = %235, %231
  %241 = phi i1 [ true, %231 ], [ %239, %235 ]
  br i1 %241, label %202, label %242

242:                                              ; preds = %240, %229
  %243 = load i32, i32* %20, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* @AT25_SR_nRDY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %245, %242
  %251 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %252 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %251, i32 0, i32 2
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load i64, i64* @jiffies, align 8
  %258 = load i64, i64* %15, align 8
  %259 = load i64, i64* @EE_TIMEOUT, align 8
  %260 = sub i64 %258, %259
  %261 = sub i64 %257, %260
  %262 = call i32 @jiffies_to_msecs(i64 %261)
  %263 = call i32 @dev_err(i32* %254, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %256, i32 %262)
  %264 = load i32, i32* @ETIMEDOUT, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %12, align 4
  br label %281

266:                                              ; preds = %245
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %7, align 4
  %269 = add i32 %268, %267
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i8*, i8** %11, align 8
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %11, align 8
  %274 = load i32, i32* %17, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %9, align 8
  %277 = sub i64 %276, %275
  store i64 %277, i64* %9, align 8
  br label %278

278:                                              ; preds = %266
  %279 = load i64, i64* %9, align 8
  %280 = icmp ugt i64 %279, 0
  br i1 %280, label %94, label %281

281:                                              ; preds = %278, %250, %196, %106
  %282 = load %struct.at25_data*, %struct.at25_data** %10, align 8
  %283 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %282, i32 0, i32 1
  %284 = call i32 @mutex_unlock(i32* %283)
  %285 = load i32*, i32** %14, align 8
  %286 = call i32 @kfree(i32* %285)
  %287 = load i32, i32* %12, align 4
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %281, %87, %63, %34
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spi_w8r8(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
