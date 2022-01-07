; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_mpeg1_frame_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_mpeg1_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i64, i32, i64, i64 }

@c = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG2 = common dso_local global i64 0, align 8
@addrinctab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i8*, i32, i32, i32)* @mpeg1_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg1_frame_header(%struct.go7007* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.go7007*, %struct.go7007** %6, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.go7007*, %struct.go7007** %6, align 8
  %22 = getelementptr inbounds %struct.go7007, %struct.go7007* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 32
  br label %30

25:                                               ; preds = %5
  %26 = load %struct.go7007*, %struct.go7007** %6, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 16
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ]
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @c, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = call i32 @CODE_GEN(i32 %32, i8* %34)
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %41 [
    i32 128, label %37
    i32 129, label %38
    i32 130, label %39
    i32 131, label %40
  ]

37:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %42

38:                                               ; preds = %30
  store i32 2, i32* %13, align 4
  store i32 4, i32* %14, align 4
  br label %42

39:                                               ; preds = %30
  store i32 2, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %42

40:                                               ; preds = %30
  store i32 2, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37
  %43 = load i32, i32* @c, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 128
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 3
  %48 = call i32 @CODE_ADD(i32 %43, i32 %47, i32 13)
  %49 = load i32, i32* @c, align 4
  %50 = call i32 @CODE_ADD(i32 %49, i32 65535, i32 16)
  %51 = load i32, i32* @c, align 4
  %52 = load %struct.go7007*, %struct.go7007** %6, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_PIX_FMT_MPEG2, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 7, i32 4
  %59 = call i32 @CODE_ADD(i32 %51, i32 %58, i32 4)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 128
  br i1 %61, label %62, label %72

62:                                               ; preds = %42
  %63 = load i32, i32* @c, align 4
  %64 = load %struct.go7007*, %struct.go7007** %6, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_PIX_FMT_MPEG2, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 7, i32 4
  %71 = call i32 @CODE_ADD(i32 %63, i32 %70, i32 4)
  br label %75

72:                                               ; preds = %42
  %73 = load i32, i32* @c, align 4
  %74 = call i32 @CODE_ADD(i32 %73, i32 0, i32 4)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* @c, align 4
  %77 = call i32 @CODE_ADD(i32 %76, i32 0, i32 3)
  %78 = load i32, i32* @c, align 4
  %79 = call i32 @CODE_LENGTH(i32 %78)
  %80 = srem i32 %79, 8
  %81 = sub nsw i32 8, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 8
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @c, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @CODE_ADD(i32 %85, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %84, %75
  %89 = load %struct.go7007*, %struct.go7007** %6, align 8
  %90 = getelementptr inbounds %struct.go7007, %struct.go7007* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @V4L2_PIX_FMT_MPEG2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %88
  %95 = load i32, i32* @c, align 4
  %96 = call i32 @CODE_ADD(i32 %95, i32 1, i32 24)
  %97 = load i32, i32* @c, align 4
  %98 = call i32 @CODE_ADD(i32 %97, i32 181, i32 8)
  %99 = load i32, i32* @c, align 4
  %100 = call i32 @CODE_ADD(i32 %99, i32 2116, i32 12)
  %101 = load i32, i32* @c, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 128
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 255, i32 68
  %106 = call i32 @CODE_ADD(i32 %101, i32 %105, i32 8)
  %107 = load %struct.go7007*, %struct.go7007** %6, align 8
  %108 = getelementptr inbounds %struct.go7007, %struct.go7007* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %94
  %112 = load i32, i32* @c, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @CODE_ADD(i32 %112, i32 %113, i32 4)
  %115 = load %struct.go7007*, %struct.go7007** %6, align 8
  %116 = getelementptr inbounds %struct.go7007, %struct.go7007* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* @c, align 4
  %121 = call i32 @CODE_ADD(i32 %120, i32 0, i32 11)
  br label %125

122:                                              ; preds = %111
  %123 = load i32, i32* @c, align 4
  %124 = call i32 @CODE_ADD(i32 %123, i32 512, i32 11)
  br label %125

125:                                              ; preds = %122, %119
  br label %131

126:                                              ; preds = %94
  %127 = load i32, i32* @c, align 4
  %128 = call i32 @CODE_ADD(i32 %127, i32 3, i32 4)
  %129 = load i32, i32* @c, align 4
  %130 = call i32 @CODE_ADD(i32 %129, i32 524, i32 11)
  br label %131

131:                                              ; preds = %126, %125
  %132 = load i32, i32* @c, align 4
  %133 = call i32 @CODE_LENGTH(i32 %132)
  %134 = srem i32 %133, 8
  %135 = sub nsw i32 8, %134
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 8
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* @c, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @CODE_ADD(i32 %139, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %138, %131
  br label %143

143:                                              ; preds = %142, %88
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %277, %143
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %280

148:                                              ; preds = %144
  %149 = load i32, i32* @c, align 4
  %150 = call i32 @CODE_ADD(i32 %149, i32 1, i32 24)
  %151 = load i32, i32* @c, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @CODE_ADD(i32 %151, i32 %153, i32 8)
  %155 = load i32, i32* @c, align 4
  %156 = call i32 @CODE_ADD(i32 %155, i32 2, i32 6)
  %157 = load i32, i32* @c, align 4
  %158 = call i32 @CODE_ADD(i32 %157, i32 1, i32 1)
  %159 = load i32, i32* @c, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @CODE_ADD(i32 %159, i32 %160, i32 %161)
  %163 = load %struct.go7007*, %struct.go7007** %6, align 8
  %164 = getelementptr inbounds %struct.go7007, %struct.go7007* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %148
  %168 = load i32, i32* @c, align 4
  %169 = call i32 @CODE_ADD(i32 %168, i32 1, i32 2)
  %170 = load i32, i32* @c, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 0, i32 1
  %175 = call i32 @CODE_ADD(i32 %170, i32 %174, i32 1)
  br label %176

176:                                              ; preds = %167, %148
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 131
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load i32, i32* @c, align 4
  %181 = call i32 @CODE_ADD(i32 %180, i32 3, i32 2)
  %182 = load %struct.go7007*, %struct.go7007** %6, align 8
  %183 = getelementptr inbounds %struct.go7007, %struct.go7007* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load i32, i32* @c, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 1
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 0, i32 1
  %192 = call i32 @CODE_ADD(i32 %187, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %186, %179
  br label %194

194:                                              ; preds = %193, %176
  %195 = load i32, i32* @c, align 4
  %196 = call i32 @CODE_ADD(i32 %195, i32 3, i32 2)
  %197 = load %struct.go7007*, %struct.go7007** %6, align 8
  %198 = getelementptr inbounds %struct.go7007, %struct.go7007* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = ashr i32 %199, 4
  %201 = sub nsw i32 %200, 2
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %208, %194
  %203 = load i32, i32* %12, align 4
  %204 = icmp sge i32 %203, 33
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32, i32* @c, align 4
  %207 = call i32 @CODE_ADD(i32 %206, i32 8, i32 11)
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = sub nsw i32 %209, 33
  store i32 %210, i32* %12, align 4
  br label %202

211:                                              ; preds = %202
  %212 = load i32, i32* @c, align 4
  %213 = load i32**, i32*** @addrinctab, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32**, i32*** @addrinctab, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @CODE_ADD(i32 %212, i32 %219, i32 %226)
  %228 = load i32, i32* @c, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @CODE_ADD(i32 %228, i32 %229, i32 %230)
  %232 = load %struct.go7007*, %struct.go7007** %6, align 8
  %233 = getelementptr inbounds %struct.go7007, %struct.go7007* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %211
  %237 = load i32, i32* @c, align 4
  %238 = call i32 @CODE_ADD(i32 %237, i32 1, i32 2)
  %239 = load i32, i32* @c, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 1
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i32 0, i32 1
  %244 = call i32 @CODE_ADD(i32 %239, i32 %243, i32 1)
  br label %245

245:                                              ; preds = %236, %211
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 131
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load i32, i32* @c, align 4
  %250 = call i32 @CODE_ADD(i32 %249, i32 3, i32 2)
  %251 = load %struct.go7007*, %struct.go7007** %6, align 8
  %252 = getelementptr inbounds %struct.go7007, %struct.go7007* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = load i32, i32* @c, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp eq i32 %257, 1
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 0, i32 1
  %261 = call i32 @CODE_ADD(i32 %256, i32 %260, i32 1)
  br label %262

262:                                              ; preds = %255, %248
  br label %263

263:                                              ; preds = %262, %245
  %264 = load i32, i32* @c, align 4
  %265 = call i32 @CODE_ADD(i32 %264, i32 3, i32 2)
  %266 = load i32, i32* @c, align 4
  %267 = call i32 @CODE_LENGTH(i32 %266)
  %268 = srem i32 %267, 8
  %269 = sub nsw i32 8, %268
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 8
  br i1 %271, label %272, label %276

272:                                              ; preds = %263
  %273 = load i32, i32* @c, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @CODE_ADD(i32 %273, i32 0, i32 %274)
  br label %276

276:                                              ; preds = %272, %263
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %144

280:                                              ; preds = %144
  %281 = load i32, i32* @c, align 4
  %282 = call i32 @CODE_LENGTH(i32 %281)
  %283 = add nsw i32 %282, 32
  store i32 %283, i32* %11, align 4
  %284 = load i8*, i8** %7, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 2
  store i8 0, i8* %285, align 1
  %286 = load i8*, i8** %7, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 3
  store i8 0, i8* %287, align 1
  %288 = load i8*, i8** %7, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 4
  store i8 1, i8* %289, align 1
  %290 = load i8*, i8** %7, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 5
  store i8 0, i8* %291, align 1
  %292 = load i32, i32* %11, align 4
  ret i32 %292
}

declare dso_local i32 @CODE_GEN(i32, i8*) #1

declare dso_local i32 @CODE_ADD(i32, i32, i32) #1

declare dso_local i32 @CODE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
