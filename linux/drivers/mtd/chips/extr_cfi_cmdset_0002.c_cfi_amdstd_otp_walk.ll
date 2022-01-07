; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_amdstd_otp_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_amdstd_otp_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32, i32, i32, %struct.flchip* }
%struct.flchip = type { i64, i32 }
%struct.otp_info = type { i64, i64, i32 }

@FL_CFI_QUERY = common dso_local global i32 0, align 4
@FL_LOCKING = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*, i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)*, i32)* @cfi_amdstd_otp_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_amdstd_otp_walk(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4, i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.map_info*, align 8
  %17 = alloca %struct.cfi_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.flchip*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.otp_info*, align 8
  %34 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)* %5, i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)** %14, align 8
  store i32 %6, i32* %15, align 4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load %struct.map_info*, %struct.map_info** %36, align 8
  store %struct.map_info* %37, %struct.map_info** %16, align 8
  %38 = load %struct.map_info*, %struct.map_info** %16, align 8
  %39 = getelementptr inbounds %struct.map_info, %struct.map_info* %38, i32 0, i32 0
  %40 = load %struct.cfi_private*, %struct.cfi_private** %39, align 8
  store %struct.cfi_private* %40, %struct.cfi_private** %17, align 8
  %41 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %42 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %45 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %18, align 4
  store i32 0, i32* %31, align 4
  %48 = load i64*, i64** %12, align 8
  store i64 0, i64* %48, align 8
  store i32 0, i32* %20, align 4
  br label %49

49:                                               ; preds = %302, %7
  %50 = load i32, i32* %20, align 4
  %51 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %52 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %305

55:                                               ; preds = %49
  %56 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %57 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %56, i32 0, i32 5
  %58 = load %struct.flchip*, %struct.flchip** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %58, i64 %60
  store %struct.flchip* %61, %struct.flchip** %21, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %25, align 8
  %62 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %63 = call i64 @is_m29ew(%struct.cfi_private* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %192

65:                                               ; preds = %55
  %66 = load %struct.flchip*, %struct.flchip** %21, align 8
  %67 = getelementptr inbounds %struct.flchip, %struct.flchip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %19, align 8
  %69 = load %struct.flchip*, %struct.flchip** %21, align 8
  %70 = getelementptr inbounds %struct.flchip, %struct.flchip* %69, i32 0, i32 1
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.map_info*, %struct.map_info** %16, align 8
  %73 = load %struct.flchip*, %struct.flchip** %21, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i32, i32* @FL_CFI_QUERY, align 4
  %76 = call i32 @get_chip(%struct.map_info* %72, %struct.flchip* %73, i64 %74, i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.flchip*, %struct.flchip** %21, align 8
  %81 = getelementptr inbounds %struct.flchip, %struct.flchip* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %24, align 4
  store i32 %83, i32* %8, align 4
  br label %306

84:                                               ; preds = %65
  %85 = load i64, i64* %19, align 8
  %86 = load %struct.map_info*, %struct.map_info** %16, align 8
  %87 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %88 = call i32 @cfi_qry_mode_on(i64 %85, %struct.map_info* %86, %struct.cfi_private* %87)
  %89 = load %struct.map_info*, %struct.map_info** %16, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i32, i32* %18, align 4
  %92 = mul nsw i32 3, %91
  %93 = sext i32 %92 to i64
  %94 = add i64 %90, %93
  %95 = call i32 @cfi_read_query(%struct.map_info* %89, i64 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i64, i64* %19, align 8
  %97 = load %struct.map_info*, %struct.map_info** %16, align 8
  %98 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %99 = call i32 @cfi_qry_mode_off(i64 %96, %struct.map_info* %97, %struct.cfi_private* %98)
  %100 = load %struct.map_info*, %struct.map_info** %16, align 8
  %101 = load %struct.flchip*, %struct.flchip** %21, align 8
  %102 = load i64, i64* %19, align 8
  %103 = call i32 @put_chip(%struct.map_info* %100, %struct.flchip* %101, i64 %102)
  %104 = load %struct.flchip*, %struct.flchip** %21, align 8
  %105 = getelementptr inbounds %struct.flchip, %struct.flchip* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %22, align 4
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %84
  store i64 0, i64* %29, align 8
  store i64 256, i64* %26, align 8
  br label %191

111:                                              ; preds = %84
  store i64 0, i64* %28, align 8
  store i64 256, i64* %25, align 8
  %112 = load %struct.flchip*, %struct.flchip** %21, align 8
  %113 = getelementptr inbounds %struct.flchip, %struct.flchip* %112, i32 0, i32 1
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load %struct.map_info*, %struct.map_info** %16, align 8
  %116 = load %struct.flchip*, %struct.flchip** %21, align 8
  %117 = load i64, i64* %19, align 8
  %118 = load i32, i32* @FL_LOCKING, align 4
  %119 = call i32 @get_chip(%struct.map_info* %115, %struct.flchip* %116, i64 %117, i32 %118)
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %24, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load %struct.flchip*, %struct.flchip** %21, align 8
  %124 = getelementptr inbounds %struct.flchip, %struct.flchip* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %24, align 4
  store i32 %126, i32* %8, align 4
  br label %306

127:                                              ; preds = %111
  %128 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %129 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.flchip*, %struct.flchip** %21, align 8
  %132 = getelementptr inbounds %struct.flchip, %struct.flchip* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.map_info*, %struct.map_info** %16, align 8
  %135 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %136 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %137 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @cfi_send_gen_cmd(i32 170, i32 %130, i64 %133, %struct.map_info* %134, %struct.cfi_private* %135, i32 %138, i32* null)
  %140 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %141 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.flchip*, %struct.flchip** %21, align 8
  %144 = getelementptr inbounds %struct.flchip, %struct.flchip* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.map_info*, %struct.map_info** %16, align 8
  %147 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %148 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %149 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @cfi_send_gen_cmd(i32 85, i32 %142, i64 %145, %struct.map_info* %146, %struct.cfi_private* %147, i32 %150, i32* null)
  %152 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %153 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.flchip*, %struct.flchip** %21, align 8
  %156 = getelementptr inbounds %struct.flchip, %struct.flchip* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.map_info*, %struct.map_info** %16, align 8
  %159 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %160 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  %161 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cfi_send_gen_cmd(i32 64, i32 %154, i64 %157, %struct.map_info* %158, %struct.cfi_private* %159, i32 %162, i32* null)
  %164 = load %struct.map_info*, %struct.map_info** %16, align 8
  %165 = call i32 @cfi_read_query(%struct.map_info* %164, i64 0)
  store i32 %165, i32* %23, align 4
  %166 = load %struct.map_info*, %struct.map_info** %16, align 8
  %167 = call i32 @CMD(i32 144)
  %168 = load %struct.flchip*, %struct.flchip** %21, align 8
  %169 = getelementptr inbounds %struct.flchip, %struct.flchip* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @map_write(%struct.map_info* %166, i32 %167, i64 %170)
  %172 = load %struct.map_info*, %struct.map_info** %16, align 8
  %173 = call i32 @CMD(i32 0)
  %174 = load %struct.flchip*, %struct.flchip** %21, align 8
  %175 = getelementptr inbounds %struct.flchip, %struct.flchip* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @map_write(%struct.map_info* %172, i32 %173, i64 %176)
  %178 = load %struct.map_info*, %struct.map_info** %16, align 8
  %179 = load %struct.flchip*, %struct.flchip** %21, align 8
  %180 = load %struct.flchip*, %struct.flchip** %21, align 8
  %181 = getelementptr inbounds %struct.flchip, %struct.flchip* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @put_chip(%struct.map_info* %178, %struct.flchip* %179, i64 %182)
  %184 = load %struct.flchip*, %struct.flchip** %21, align 8
  %185 = getelementptr inbounds %struct.flchip, %struct.flchip* %184, i32 0, i32 1
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* %23, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %31, align 4
  br label %191

191:                                              ; preds = %127, %110
  br label %192

192:                                              ; preds = %191, %55
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i64, i64* %25, align 8
  br label %199

197:                                              ; preds = %192
  %198 = load i64, i64* %26, align 8
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i64 [ %196, %195 ], [ %198, %197 ]
  store i64 %200, i64* %27, align 8
  %201 = load i64, i64* %27, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  br label %302

204:                                              ; preds = %199
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i64, i64* %28, align 8
  br label %211

209:                                              ; preds = %204
  %210 = load i64, i64* %29, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %208, %207 ], [ %210, %209 ]
  store i64 %212, i64* %30, align 8
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* %31, align 4
  br label %218

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %215
  %219 = phi i32 [ %216, %215 ], [ 1, %217 ]
  store i32 %219, i32* %32, align 4
  %220 = load i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)*, i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)** %14, align 8
  %221 = icmp ne i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)* %220, null
  br i1 %221, label %250, label %222

222:                                              ; preds = %218
  %223 = load i64, i64* %11, align 8
  %224 = sub i64 %223, 24
  store i64 %224, i64* %11, align 8
  %225 = load i64, i64* %11, align 8
  %226 = icmp ule i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32, i32* @ENOSPC, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %8, align 4
  br label %306

230:                                              ; preds = %222
  %231 = load i32*, i32** %13, align 8
  %232 = bitcast i32* %231 to %struct.otp_info*
  store %struct.otp_info* %232, %struct.otp_info** %33, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load %struct.otp_info*, %struct.otp_info** %33, align 8
  %235 = getelementptr inbounds %struct.otp_info, %struct.otp_info* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load i64, i64* %27, align 8
  %237 = load %struct.otp_info*, %struct.otp_info** %33, align 8
  %238 = getelementptr inbounds %struct.otp_info, %struct.otp_info* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* %32, align 4
  %240 = load %struct.otp_info*, %struct.otp_info** %33, align 8
  %241 = getelementptr inbounds %struct.otp_info, %struct.otp_info* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load i32*, i32** %13, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 24
  store i32* %243, i32** %13, align 8
  %244 = load i64*, i64** %12, align 8
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %245, 24
  store i64 %246, i64* %244, align 8
  %247 = load i64, i64* %27, align 8
  %248 = load i64, i64* %10, align 8
  %249 = add i64 %248, %247
  store i64 %249, i64* %10, align 8
  br label %301

250:                                              ; preds = %218
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* %27, align 8
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %296

254:                                              ; preds = %250
  %255 = load i64, i64* %11, align 8
  %256 = icmp ugt i64 %255, 0
  br i1 %256, label %257, label %296

257:                                              ; preds = %254
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* %27, align 8
  %260 = load i64, i64* %10, align 8
  %261 = sub i64 %259, %260
  %262 = icmp ult i64 %258, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load i64, i64* %11, align 8
  br label %269

265:                                              ; preds = %257
  %266 = load i64, i64* %27, align 8
  %267 = load i64, i64* %10, align 8
  %268 = sub i64 %266, %267
  br label %269

269:                                              ; preds = %265, %263
  %270 = phi i64 [ %264, %263 ], [ %268, %265 ]
  store i64 %270, i64* %34, align 8
  %271 = load i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)*, i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32*, i64)** %14, align 8
  %272 = load %struct.map_info*, %struct.map_info** %16, align 8
  %273 = load %struct.flchip*, %struct.flchip** %21, align 8
  %274 = load i64, i64* %30, align 8
  %275 = load i64, i64* %10, align 8
  %276 = add i64 %274, %275
  %277 = load i64, i64* %34, align 8
  %278 = load i32*, i32** %13, align 8
  %279 = load i64, i64* %27, align 8
  %280 = call i32 %271(%struct.map_info* %272, %struct.flchip* %273, i64 %276, i64 %277, i32* %278, i64 %279)
  store i32 %280, i32* %24, align 4
  %281 = load i32, i32* %24, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %269
  %284 = load i32, i32* %24, align 4
  store i32 %284, i32* %8, align 4
  br label %306

285:                                              ; preds = %269
  %286 = load i64, i64* %34, align 8
  %287 = load i32*, i32** %13, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 %286
  store i32* %288, i32** %13, align 8
  %289 = load i64, i64* %34, align 8
  %290 = load i64, i64* %11, align 8
  %291 = sub i64 %290, %289
  store i64 %291, i64* %11, align 8
  %292 = load i64, i64* %34, align 8
  %293 = load i64*, i64** %12, align 8
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %294, %292
  store i64 %295, i64* %293, align 8
  store i64 0, i64* %10, align 8
  br label %300

296:                                              ; preds = %254, %250
  %297 = load i64, i64* %27, align 8
  %298 = load i64, i64* %10, align 8
  %299 = sub i64 %298, %297
  store i64 %299, i64* %10, align 8
  br label %300

300:                                              ; preds = %296, %285
  br label %301

301:                                              ; preds = %300, %230
  br label %302

302:                                              ; preds = %301, %203
  %303 = load i32, i32* %20, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %20, align 4
  br label %49

305:                                              ; preds = %49
  store i32 0, i32* %8, align 4
  br label %306

306:                                              ; preds = %305, %283, %227, %122, %79
  %307 = load i32, i32* %8, align 4
  ret i32 %307
}

declare dso_local i64 @is_m29ew(%struct.cfi_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfi_qry_mode_on(i64, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i32 @cfi_read_query(%struct.map_info*, i64) #1

declare dso_local i32 @cfi_qry_mode_off(i64, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*, i64) #1

declare dso_local i32 @cfi_send_gen_cmd(i32, i32, i64, %struct.map_info*, %struct.cfi_private*, i32, i32*) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
