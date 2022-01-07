; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_get_hw_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_get_hw_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.de4x5_private = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@PCI = common dso_local global i64 0, align 8
@DC21040 = common dso_local global i64 0, align 8
@DE4X5_APROM = common dso_local global i32 0, align 4
@SMC = common dso_local global i32 0, align 4
@ACCTON = common dso_local global i32 0, align 4
@EISA_APROM = common dso_local global i32 0, align 4
@dec_only = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@powermac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @get_hw_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hw_addr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.de4x5_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %15)
  store %struct.de4x5_private* %16, %struct.de4x5_private** %11, align 8
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %18 = call i32 @de4x5_bad_srom(%struct.de4x5_private* %17)
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %215, %1
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %218

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 65535
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %172

36:                                               ; preds = %30
  %37 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %38 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DC21040, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* @DE4X5_APROM, align 4
  %45 = call i32 @inl(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %43

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %71, %48
  %68 = load i32, i32* @DE4X5_APROM, align 4
  %69 = call i32 @inl(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %67

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %80, i32* %87, align 4
  br label %171

88:                                               ; preds = %36
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %128, label %91

91:                                               ; preds = %88
  %92 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %93 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  %110 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %111 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %170

128:                                              ; preds = %88
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @SMC, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @ACCTON, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %169

136:                                              ; preds = %132, %128
  %137 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %138 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %137, i32 0, i32 2
  %139 = bitcast %struct.TYPE_2__* %138 to i8**
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %154 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %153, i32 0, i32 2
  %155 = bitcast %struct.TYPE_2__* %154 to i8**
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %136, %132
  br label %170

170:                                              ; preds = %169, %91
  br label %171

171:                                              ; preds = %170, %72
  br label %208

172:                                              ; preds = %30
  %173 = load i32, i32* @EISA_APROM, align 4
  %174 = call i32 @inb(i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr i8, i8* %176, i64 %178
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* @EISA_APROM, align 4
  %193 = call i32 @inb(i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = shl i32 %193, 8
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 %200, i32* %207, align 4
  br label %208

208:                                              ; preds = %172, %171
  %209 = load i32, i32* %6, align 4
  %210 = icmp sgt i32 %209, 65535
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = sub nsw i32 %212, 65535
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %19

218:                                              ; preds = %19
  %219 = load i32, i32* %6, align 4
  %220 = icmp eq i32 %219, 65535
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %221, %218
  %223 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %224 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PCI, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %264

228:                                              ; preds = %222
  %229 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %230 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @DC21040, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %263

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %239, %234
  %236 = load i32, i32* @DE4X5_APROM, align 4
  %237 = call i32 @inl(i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %235

240:                                              ; preds = %235
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = ptrtoint i8* %243 to i32
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %249, %240
  %246 = load i32, i32* @DE4X5_APROM, align 4
  %247 = call i32 @inl(i32 %246)
  store i32 %247, i32* %7, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %245

250:                                              ; preds = %245
  %251 = load i32, i32* %7, align 4
  %252 = shl i32 %251, 8
  %253 = load i32, i32* %10, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load i64, i64* @dec_only, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 -1, i32* %8, align 4
  br label %262

262:                                              ; preds = %261, %258, %250
  br label %263

263:                                              ; preds = %262, %228
  br label %283

264:                                              ; preds = %222
  %265 = load i32, i32* @EISA_APROM, align 4
  %266 = call i32 @inb(i32 %265)
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* @EISA_APROM, align 4
  %271 = call i32 @inb(i32 %270)
  %272 = shl i32 %271, 8
  %273 = load i32, i32* %10, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %264
  %279 = load i64, i64* @dec_only, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 -1, i32* %8, align 4
  br label %282

282:                                              ; preds = %281, %278, %264
  br label %283

283:                                              ; preds = %282, %263
  %284 = load %struct.net_device*, %struct.net_device** %2, align 8
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @srom_repair(%struct.net_device* %284, i32 %285)
  %287 = load %struct.net_device*, %struct.net_device** %2, align 8
  %288 = load i32, i32* %8, align 4
  %289 = call i32 @test_bad_enet(%struct.net_device* %287, i32 %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  ret i32 %290
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_bad_srom(%struct.de4x5_private*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @srom_repair(%struct.net_device*, i32) #1

declare dso_local i32 @test_bad_enet(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
