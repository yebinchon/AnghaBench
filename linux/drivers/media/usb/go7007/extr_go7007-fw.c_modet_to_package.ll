; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_modet_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_modet_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @modet_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modet_to_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [32 x i32], align 16
  %18 = alloca [32 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.go7007*, %struct.go7007** %5, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.go7007*, %struct.go7007** %5, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.go7007*, %struct.go7007** %5, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.go7007*, %struct.go7007** %5, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  store i32 8206, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 49026, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %3
  %50 = load %struct.go7007*, %struct.go7007** %5, align 8
  %51 = getelementptr inbounds %struct.go7007, %struct.go7007* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi i32 [ %55, %49 ], [ 32767, %56 ]
  store i32 %58, i32* %46, align 4
  %59 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 49027, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.go7007*, %struct.go7007** %5, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %63
  %72 = phi i32 [ %69, %63 ], [ 32767, %70 ]
  store i32 %72, i32* %60, align 4
  %73 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 49028, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.go7007*, %struct.go7007** %5, align 8
  %79 = getelementptr inbounds %struct.go7007, %struct.go7007* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %77
  %86 = phi i32 [ %83, %77 ], [ 32767, %84 ]
  store i32 %86, i32* %74, align 4
  %87 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 49029, i32* %87, align 4
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.go7007*, %struct.go7007** %5, align 8
  %93 = getelementptr inbounds %struct.go7007, %struct.go7007* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  br label %99

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %91
  %100 = phi i32 [ %97, %91 ], [ 32767, %98 ]
  store i32 %100, i32* %88, align 4
  %101 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 49030, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.go7007*, %struct.go7007** %5, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %105
  %114 = phi i32 [ %111, %105 ], [ 32767, %112 ]
  store i32 %114, i32* %102, align 4
  %115 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 49031, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.go7007*, %struct.go7007** %5, align 8
  %121 = getelementptr inbounds %struct.go7007, %struct.go7007* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  br label %127

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi i32 [ %125, %119 ], [ 32767, %126 ]
  store i32 %128, i32* %116, align 4
  %129 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 49032, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.go7007*, %struct.go7007** %5, align 8
  %135 = getelementptr inbounds %struct.go7007, %struct.go7007* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  br label %141

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140, %133
  %142 = phi i32 [ %139, %133 ], [ 32767, %140 ]
  store i32 %142, i32* %130, align 4
  %143 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 49033, i32* %143, align 4
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.go7007*, %struct.go7007** %5, align 8
  %149 = getelementptr inbounds %struct.go7007, %struct.go7007* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 3
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  br label %155

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %147
  %156 = phi i32 [ %153, %147 ], [ 32767, %154 ]
  store i32 %156, i32* %144, align 4
  %157 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 49034, i32* %157, align 4
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = load %struct.go7007*, %struct.go7007** %5, align 8
  %163 = getelementptr inbounds %struct.go7007, %struct.go7007* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  br label %169

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168, %161
  %170 = phi i32 [ %167, %161 ], [ 32767, %168 ]
  store i32 %170, i32* %158, align 4
  %171 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 49035, i32* %171, align 4
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.go7007*, %struct.go7007** %5, align 8
  %177 = getelementptr inbounds %struct.go7007, %struct.go7007* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  br label %183

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %175
  %184 = phi i32 [ %181, %175 ], [ 32767, %182 ]
  store i32 %184, i32* %172, align 4
  %185 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 49036, i32* %185, align 4
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.go7007*, %struct.go7007** %5, align 8
  %191 = getelementptr inbounds %struct.go7007, %struct.go7007* %190, i32 0, i32 1
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 2
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  br label %197

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %189
  %198 = phi i32 [ %195, %189 ], [ 32767, %196 ]
  store i32 %198, i32* %186, align 4
  %199 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 49037, i32* %199, align 4
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load %struct.go7007*, %struct.go7007** %5, align 8
  %205 = getelementptr inbounds %struct.go7007, %struct.go7007* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 3
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  br label %211

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210, %203
  %212 = phi i32 [ %209, %203 ], [ 32767, %210 ]
  store i32 %212, i32* %200, align 4
  %213 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 49038, i32* %213, align 4
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 49039, i32* %215, align 4
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 0, i32* %217, align 4
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 0, i32* %218, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @copy_packages(i32* %219, i32* %220, i32 1, i32 %221)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %211
  store i32 -1, i32* %4, align 4
  br label %360

226:                                              ; preds = %211
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %16, align 4
  store i32 47808, i32* %15, align 4
  %230 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %231 = call i32 @memset(i32* %230, i32 0, i32 64)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %232

232:                                              ; preds = %304, %226
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 1624
  br i1 %234, label %235, label %307

235:                                              ; preds = %232
  %236 = load i32, i32* %14, align 4
  %237 = mul nsw i32 %236, 2
  %238 = add nsw i32 %237, 3
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 2
  store i32 %242, i32* %240, align 4
  %243 = load %struct.go7007*, %struct.go7007** %5, align 8
  %244 = getelementptr inbounds %struct.go7007, %struct.go7007* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %14, align 4
  %251 = mul nsw i32 %250, 2
  %252 = add nsw i32 %251, 3
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %249
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %13, align 4
  %258 = srem i32 %257, 8
  %259 = icmp ne i32 %258, 7
  br i1 %259, label %260, label %261

260:                                              ; preds = %235
  br label %304

261:                                              ; preds = %235
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %14, align 4
  %265 = mul nsw i32 %264, 2
  %266 = add nsw i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %267
  store i32 %262, i32* %268, align 4
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = icmp eq i32 %271, 10
  br i1 %272, label %276, label %273

273:                                              ; preds = %261
  %274 = load i32, i32* %13, align 4
  %275 = icmp eq i32 %274, 1623
  br i1 %275, label %276, label %298

276:                                              ; preds = %273, %261
  %277 = load i32, i32* %14, align 4
  %278 = or i32 8192, %277
  %279 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  store i32 %278, i32* %279, align 16
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %16, align 4
  %287 = sub nsw i32 %285, %286
  %288 = call i32 @copy_packages(i32* %283, i32* %284, i32 1, i32 %287)
  store i32 %288, i32* %12, align 4
  %289 = load i32, i32* %12, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %276
  store i32 -1, i32* %4, align 4
  br label %360

292:                                              ; preds = %276
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %296 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %297 = call i32 @memset(i32* %296, i32 0, i32 64)
  br label %298

298:                                              ; preds = %292, %273
  %299 = load i32, i32* %14, align 4
  %300 = mul nsw i32 %299, 2
  %301 = add nsw i32 %300, 3
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %302
  store i32 0, i32* %303, align 4
  br label %304

304:                                              ; preds = %298, %260
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %13, align 4
  br label %232

307:                                              ; preds = %232
  %308 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %309 = call i32 @memset(i32* %308, i32 0, i32 64)
  store i32 0, i32* %14, align 4
  store i32 48016, i32* %15, align 4
  br label %310

310:                                              ; preds = %355, %307
  %311 = load i32, i32* %15, align 4
  %312 = icmp slt i32 %311, 48122
  br i1 %312, label %313, label %358

313:                                              ; preds = %310
  %314 = load i32, i32* %15, align 4
  %315 = load i32, i32* %14, align 4
  %316 = mul nsw i32 %315, 2
  %317 = add nsw i32 %316, 2
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %318
  store i32 %314, i32* %319, align 4
  %320 = load i32, i32* %14, align 4
  %321 = mul nsw i32 %320, 2
  %322 = add nsw i32 %321, 3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %323
  store i32 0, i32* %324, align 4
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %14, align 4
  %327 = load i32, i32* %14, align 4
  %328 = icmp eq i32 %327, 10
  br i1 %328, label %332, label %329

329:                                              ; preds = %313
  %330 = load i32, i32* %15, align 4
  %331 = icmp eq i32 %330, 48121
  br i1 %331, label %332, label %354

332:                                              ; preds = %329, %313
  %333 = load i32, i32* %14, align 4
  %334 = or i32 8192, %333
  %335 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  store i32 %334, i32* %335, align 16
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %16, align 4
  %343 = sub nsw i32 %341, %342
  %344 = call i32 @copy_packages(i32* %339, i32* %340, i32 1, i32 %343)
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %332
  store i32 -1, i32* %4, align 4
  br label %360

348:                                              ; preds = %332
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* %16, align 4
  %351 = add nsw i32 %350, %349
  store i32 %351, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %352 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %353 = call i32 @memset(i32* %352, i32 0, i32 64)
  br label %354

354:                                              ; preds = %348, %329
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %15, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %15, align 4
  br label %310

358:                                              ; preds = %310
  %359 = load i32, i32* %16, align 4
  store i32 %359, i32* %4, align 4
  br label %360

360:                                              ; preds = %358, %347, %291, %225
  %361 = load i32, i32* %4, align 4
  ret i32 %361
}

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
