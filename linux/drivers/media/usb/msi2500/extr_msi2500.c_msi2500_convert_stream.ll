; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_convert_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_convert_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { i32, i32, i32, i32, i64 }
%struct.anon = type { i16, [2 x i8] }

@.str = private unnamed_addr constant [31 x i8] c"%d samples lost, %d %08x:%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"size=%u samples=%u msecs=%u sample rate=%lu\0A\00", align 1
@MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi2500_dev*, i32*, i32*, i32)* @msi2500_convert_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_convert_stream(%struct.msi2500_dev* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.msi2500_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.anon, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = udiv i32 %22, 1024
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %244, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %247

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 0
  %47 = or i32 %42, %46
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %28
  %54 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %55 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %62 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %67 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %65, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %72 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dev_dbg_ratelimited(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %60, %53, %28
  %78 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %79 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = call i32 (i32, i8*, i32, ...) @dev_dbg_ratelimited(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 12, i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 16
  store i32* %85, i32** %7, align 8
  %86 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %87 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %242 [
    i32 128, label %89
    i32 129, label %119
    i32 133, label %168
    i32 130, label %191
    i32 132, label %208
    i32 131, label %225
  ]

89:                                               ; preds = %77
  %90 = load i32*, i32** %7, align 8
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %6, align 8
  store i32* %91, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %102, %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp ult i32 %93, 1008
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* %96, align 4
  %99 = add nsw i32 %98, 128
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %15, align 8
  store i32 %99, i32* %100, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %92

105:                                              ; preds = %92
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1008
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1008
  store i32* %109, i32** %6, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add i32 %110, 1008
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 504
  %117 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %118 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %243

119:                                              ; preds = %77
  %120 = load i32*, i32** %7, align 8
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %6, align 8
  store i32* %121, i32** %17, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %151, %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp ult i32 %123, 1008
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = load i32*, i32** %16, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %16, align 8
  %128 = load i32, i32* %126, align 4
  %129 = bitcast %struct.anon* %18 to i16*
  %130 = trunc i32 %128 to i16
  %131 = load i16, i16* %129, align 4
  %132 = and i16 %130, 16383
  %133 = and i16 %131, -16384
  %134 = or i16 %133, %132
  store i16 %134, i16* %129, align 4
  %135 = shl i16 %132, 2
  %136 = ashr i16 %135, 2
  %137 = sext i16 %136 to i32
  %138 = bitcast %struct.anon* %18 to i16*
  %139 = load i16, i16* %138, align 4
  %140 = shl i16 %139, 2
  %141 = ashr i16 %140, 2
  %142 = sext i16 %141 to i32
  %143 = add nsw i32 %142, 8192
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = shl i32 %144, 2
  %146 = load i32, i32* %19, align 4
  %147 = lshr i32 %146, 12
  %148 = or i32 %145, %147
  %149 = load i32*, i32** %17, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %17, align 8
  store i32 %148, i32* %149, align 4
  br label %151

151:                                              ; preds = %125
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 2
  store i32 %153, i32* %10, align 4
  br label %122

154:                                              ; preds = %122
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1008
  store i32* %156, i32** %7, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1008
  store i32* %158, i32** %6, align 8
  %159 = load i32, i32* %12, align 4
  %160 = add i32 %159, 1008
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %9, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 252
  %166 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %167 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %243

168:                                              ; preds = %77
  %169 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %170 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1000
  %174 = call i32 (i32, i8*, i32, ...) @dev_dbg_ratelimited(i32 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 24, i32* %173)
  %175 = load i32*, i32** %6, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @memcpy(i32* %175, i32* %176, i32 984)
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1008
  store i32* %179, i32** %7, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 984
  store i32* %181, i32** %6, align 8
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %182, 984
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %9, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 384
  %189 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %190 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %243

191:                                              ; preds = %77
  %192 = load i32*, i32** %6, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @memcpy(i32* %192, i32* %193, i32 1008)
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1008
  store i32* %196, i32** %7, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1008
  store i32* %198, i32** %6, align 8
  %199 = load i32, i32* %12, align 4
  %200 = add i32 %199, 1008
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %9, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 504
  %206 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %207 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %243

208:                                              ; preds = %77
  %209 = load i32*, i32** %6, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @memcpy(i32* %209, i32* %210, i32 1008)
  %212 = load i32*, i32** %7, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1008
  store i32* %213, i32** %7, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1008
  store i32* %215, i32** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = add i32 %216, 1008
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 336
  %223 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %224 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %243

225:                                              ; preds = %77
  %226 = load i32*, i32** %6, align 8
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @memcpy(i32* %226, i32* %227, i32 1008)
  %229 = load i32*, i32** %7, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1008
  store i32* %230, i32** %7, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1008
  store i32* %232, i32** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = add i32 %233, 1008
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %9, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 252
  %240 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %241 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %243

242:                                              ; preds = %77
  br label %243

243:                                              ; preds = %242, %225, %208, %191, %168, %154, %105
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %9, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %24

247:                                              ; preds = %24
  %248 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %249 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @time_is_before_jiffies(i64 %250)
  %252 = call i64 @unlikely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %294

254:                                              ; preds = %247
  %255 = load i64, i64* @jiffies, align 8
  %256 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %257 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  %260 = call i64 @msecs_to_jiffies(i32 10000)
  %261 = add nsw i64 %259, %260
  %262 = call i32 @jiffies_to_msecs(i64 %261)
  store i32 %262, i32* %20, align 4
  %263 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %264 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %267 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = sub i32 %265, %268
  store i32 %269, i32* %21, align 4
  %270 = load i64, i64* @jiffies, align 8
  %271 = call i64 @msecs_to_jiffies(i32 10000)
  %272 = add nsw i64 %270, %271
  %273 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %274 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  %275 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %276 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %279 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.msi2500_dev*, %struct.msi2500_dev** %5, align 8
  %281 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* %21, align 4
  %287 = zext i32 %286 to i64
  %288 = mul i64 %287, 1000
  %289 = load i32, i32* %20, align 4
  %290 = zext i32 %289 to i64
  %291 = udiv i64 %288, %290
  %292 = trunc i64 %291 to i32
  %293 = call i32 @dev_dbg(i32 %282, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %283, i32 %284, i32 %285, i32 %292)
  br label %294

294:                                              ; preds = %254, %247
  %295 = load i32, i32* %12, align 4
  ret i32 %295
}

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
