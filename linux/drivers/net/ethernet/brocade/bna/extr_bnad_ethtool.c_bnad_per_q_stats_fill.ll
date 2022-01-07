; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_per_q_stats_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_per_q_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_12__* }
%struct.TYPE_7__ = type { %struct.bna_tcb**, i32 }
%struct.bna_tcb = type { i32*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.bna_rcb**, i32*, i32 }
%struct.bna_rcb = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, i32*, i32)* @bnad_per_q_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_per_q_stats_fill(%struct.bnad* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bna_rcb*, align 8
  %10 = alloca %struct.bna_tcb*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.bna_rcb* null, %struct.bna_rcb** %9, align 8
  store %struct.bna_tcb* null, %struct.bna_tcb** %10, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %232, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bnad*, %struct.bnad** %4, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %235

17:                                               ; preds = %11
  %18 = load %struct.bnad*, %struct.bnad** %4, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %232

28:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %228, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bnad*, %struct.bnad** %4, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %231

35:                                               ; preds = %29
  %36 = load %struct.bnad*, %struct.bnad** %4, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %227

50:                                               ; preds = %35
  %51 = load %struct.bnad*, %struct.bnad** %4, align 8
  %52 = getelementptr inbounds %struct.bnad, %struct.bnad* %51, i32 0, i32 5
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.bna_rcb**, %struct.bna_rcb*** %64, align 8
  %66 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %65, i64 0
  %67 = load %struct.bna_rcb*, %struct.bna_rcb** %66, align 8
  %68 = icmp ne %struct.bna_rcb* %67, null
  br i1 %68, label %69, label %227

69:                                               ; preds = %50
  %70 = load %struct.bnad*, %struct.bnad** %4, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.bna_rcb**, %struct.bna_rcb*** %83, align 8
  %85 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %84, i64 0
  %86 = load %struct.bna_rcb*, %struct.bna_rcb** %85, align 8
  %87 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %227

90:                                               ; preds = %69
  %91 = load %struct.bnad*, %struct.bnad** %4, align 8
  %92 = getelementptr inbounds %struct.bnad, %struct.bnad* %91, i32 0, i32 5
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 0, i32* %115, align 4
  %116 = load %struct.bnad*, %struct.bnad** %4, align 8
  %117 = getelementptr inbounds %struct.bnad, %struct.bnad* %116, i32 0, i32 5
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.bnad*, %struct.bnad** %4, align 8
  %138 = getelementptr inbounds %struct.bnad, %struct.bnad* %137, i32 0, i32 5
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load %struct.bnad*, %struct.bnad** %4, align 8
  %156 = getelementptr inbounds %struct.bnad, %struct.bnad* %155, i32 0, i32 5
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.bnad*, %struct.bnad** %4, align 8
  %174 = getelementptr inbounds %struct.bnad, %struct.bnad* %173, i32 0, i32 5
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = load %struct.bnad*, %struct.bnad** %4, align 8
  %192 = getelementptr inbounds %struct.bnad, %struct.bnad* %191, i32 0, i32 5
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load %struct.bnad*, %struct.bnad** %4, align 8
  %210 = getelementptr inbounds %struct.bnad, %struct.bnad* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  br label %227

227:                                              ; preds = %90, %69, %50, %35
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %29

231:                                              ; preds = %29
  br label %232

232:                                              ; preds = %231, %27
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %11

235:                                              ; preds = %11
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %529, %235
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.bnad*, %struct.bnad** %4, align 8
  %239 = getelementptr inbounds %struct.bnad, %struct.bnad* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %532

242:                                              ; preds = %236
  %243 = load %struct.bnad*, %struct.bnad** %4, align 8
  %244 = getelementptr inbounds %struct.bnad, %struct.bnad* %243, i32 0, i32 5
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %242
  br label %529

253:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %525, %253
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.bnad*, %struct.bnad** %4, align 8
  %257 = getelementptr inbounds %struct.bnad, %struct.bnad* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %528

260:                                              ; preds = %254
  %261 = load %struct.bnad*, %struct.bnad** %4, align 8
  %262 = getelementptr inbounds %struct.bnad, %struct.bnad* %261, i32 0, i32 5
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = icmp ne %struct.TYPE_10__* %273, null
  br i1 %274, label %275, label %524

275:                                              ; preds = %260
  %276 = load %struct.bnad*, %struct.bnad** %4, align 8
  %277 = getelementptr inbounds %struct.bnad, %struct.bnad* %276, i32 0, i32 5
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load %struct.bna_rcb**, %struct.bna_rcb*** %289, align 8
  %291 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %290, i64 0
  %292 = load %struct.bna_rcb*, %struct.bna_rcb** %291, align 8
  %293 = icmp ne %struct.bna_rcb* %292, null
  br i1 %293, label %294, label %399

294:                                              ; preds = %275
  %295 = load %struct.bnad*, %struct.bnad** %4, align 8
  %296 = getelementptr inbounds %struct.bnad, %struct.bnad* %295, i32 0, i32 5
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load %struct.bna_rcb**, %struct.bna_rcb*** %308, align 8
  %310 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %309, i64 0
  %311 = load %struct.bna_rcb*, %struct.bna_rcb** %310, align 8
  %312 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %311, i32 0, i32 2
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = icmp ne %struct.TYPE_9__* %313, null
  br i1 %314, label %315, label %399

315:                                              ; preds = %294
  %316 = load %struct.bnad*, %struct.bnad** %4, align 8
  %317 = getelementptr inbounds %struct.bnad, %struct.bnad* %316, i32 0, i32 5
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load %struct.bna_rcb**, %struct.bna_rcb*** %329, align 8
  %331 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %330, i64 0
  %332 = load %struct.bna_rcb*, %struct.bna_rcb** %331, align 8
  store %struct.bna_rcb* %332, %struct.bna_rcb** %9, align 8
  %333 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %334 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %333, i32 0, i32 2
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %5, align 8
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %6, align 4
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %337, i32* %342, align 4
  %343 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %344 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %343, i32 0, i32 2
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** %5, align 8
  %349 = load i32, i32* %6, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %6, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32 %347, i32* %352, align 4
  %353 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %354 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %353, i32 0, i32 2
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %364 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %363, i32 0, i32 2
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %5, align 8
  %369 = load i32, i32* %6, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %6, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  store i32 %367, i32* %372, align 4
  %373 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %374 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %373, i32 0, i32 2
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %5, align 8
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  %381 = sext i32 %379 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  store i32 %377, i32* %382, align 4
  %383 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %384 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32*, i32** %5, align 8
  %387 = load i32, i32* %6, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %6, align 4
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  store i32 %385, i32* %390, align 4
  %391 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %392 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32*, i32** %5, align 8
  %395 = load i32, i32* %6, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %6, align 4
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  store i32 %393, i32* %398, align 4
  br label %399

399:                                              ; preds = %315, %294, %275
  %400 = load %struct.bnad*, %struct.bnad** %4, align 8
  %401 = getelementptr inbounds %struct.bnad, %struct.bnad* %400, i32 0, i32 5
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %406, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = load %struct.bna_rcb**, %struct.bna_rcb*** %413, align 8
  %415 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %414, i64 1
  %416 = load %struct.bna_rcb*, %struct.bna_rcb** %415, align 8
  %417 = icmp ne %struct.bna_rcb* %416, null
  br i1 %417, label %418, label %523

418:                                              ; preds = %399
  %419 = load %struct.bnad*, %struct.bnad** %4, align 8
  %420 = getelementptr inbounds %struct.bnad, %struct.bnad* %419, i32 0, i32 5
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %420, align 8
  %422 = load i32, i32* %7, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %425, align 8
  %427 = load i32, i32* %8, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 0
  %433 = load %struct.bna_rcb**, %struct.bna_rcb*** %432, align 8
  %434 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %433, i64 1
  %435 = load %struct.bna_rcb*, %struct.bna_rcb** %434, align 8
  %436 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %435, i32 0, i32 2
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %436, align 8
  %438 = icmp ne %struct.TYPE_9__* %437, null
  br i1 %438, label %439, label %523

439:                                              ; preds = %418
  %440 = load %struct.bnad*, %struct.bnad** %4, align 8
  %441 = getelementptr inbounds %struct.bnad, %struct.bnad* %440, i32 0, i32 5
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %441, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** %446, align 8
  %448 = load i32, i32* %8, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 0
  %454 = load %struct.bna_rcb**, %struct.bna_rcb*** %453, align 8
  %455 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %454, i64 1
  %456 = load %struct.bna_rcb*, %struct.bna_rcb** %455, align 8
  store %struct.bna_rcb* %456, %struct.bna_rcb** %9, align 8
  %457 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %458 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %457, i32 0, i32 2
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 4
  %462 = load i32*, i32** %5, align 8
  %463 = load i32, i32* %6, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %6, align 4
  %465 = sext i32 %463 to i64
  %466 = getelementptr inbounds i32, i32* %462, i64 %465
  store i32 %461, i32* %466, align 4
  %467 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %468 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %467, i32 0, i32 2
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %5, align 8
  %473 = load i32, i32* %6, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %6, align 4
  %475 = sext i32 %473 to i64
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  store i32 %471, i32* %476, align 4
  %477 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %478 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %477, i32 0, i32 2
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %5, align 8
  %483 = load i32, i32* %6, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %6, align 4
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  store i32 %481, i32* %486, align 4
  %487 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %488 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %487, i32 0, i32 2
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load i32*, i32** %5, align 8
  %493 = load i32, i32* %6, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %6, align 4
  %495 = sext i32 %493 to i64
  %496 = getelementptr inbounds i32, i32* %492, i64 %495
  store i32 %491, i32* %496, align 4
  %497 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %498 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %497, i32 0, i32 2
  %499 = load %struct.TYPE_9__*, %struct.TYPE_9__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32*, i32** %5, align 8
  %503 = load i32, i32* %6, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %6, align 4
  %505 = sext i32 %503 to i64
  %506 = getelementptr inbounds i32, i32* %502, i64 %505
  store i32 %501, i32* %506, align 4
  %507 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %508 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = load i32*, i32** %5, align 8
  %511 = load i32, i32* %6, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %6, align 4
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  store i32 %509, i32* %514, align 4
  %515 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %516 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load i32*, i32** %5, align 8
  %519 = load i32, i32* %6, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %6, align 4
  %521 = sext i32 %519 to i64
  %522 = getelementptr inbounds i32, i32* %518, i64 %521
  store i32 %517, i32* %522, align 4
  br label %523

523:                                              ; preds = %439, %418, %399
  br label %524

524:                                              ; preds = %523, %260
  br label %525

525:                                              ; preds = %524
  %526 = load i32, i32* %8, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %8, align 4
  br label %254

528:                                              ; preds = %254
  br label %529

529:                                              ; preds = %528, %252
  %530 = load i32, i32* %7, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %7, align 4
  br label %236

532:                                              ; preds = %236
  store i32 0, i32* %7, align 4
  br label %533

533:                                              ; preds = %650, %532
  %534 = load i32, i32* %7, align 4
  %535 = load %struct.bnad*, %struct.bnad** %4, align 8
  %536 = getelementptr inbounds %struct.bnad, %struct.bnad* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = icmp slt i32 %534, %537
  br i1 %538, label %539, label %653

539:                                              ; preds = %533
  %540 = load %struct.bnad*, %struct.bnad** %4, align 8
  %541 = getelementptr inbounds %struct.bnad, %struct.bnad* %540, i32 0, i32 4
  %542 = load %struct.TYPE_7__*, %struct.TYPE_7__** %541, align 8
  %543 = load i32, i32* %7, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 8
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %550, label %549

549:                                              ; preds = %539
  br label %650

550:                                              ; preds = %539
  store i32 0, i32* %8, align 4
  br label %551

551:                                              ; preds = %646, %550
  %552 = load i32, i32* %8, align 4
  %553 = load %struct.bnad*, %struct.bnad** %4, align 8
  %554 = getelementptr inbounds %struct.bnad, %struct.bnad* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 4
  %556 = icmp slt i32 %552, %555
  br i1 %556, label %557, label %649

557:                                              ; preds = %551
  %558 = load %struct.bnad*, %struct.bnad** %4, align 8
  %559 = getelementptr inbounds %struct.bnad, %struct.bnad* %558, i32 0, i32 4
  %560 = load %struct.TYPE_7__*, %struct.TYPE_7__** %559, align 8
  %561 = load i32, i32* %7, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %563, i32 0, i32 0
  %565 = load %struct.bna_tcb**, %struct.bna_tcb*** %564, align 8
  %566 = load i32, i32* %8, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %565, i64 %567
  %569 = load %struct.bna_tcb*, %struct.bna_tcb** %568, align 8
  %570 = icmp ne %struct.bna_tcb* %569, null
  br i1 %570, label %571, label %645

571:                                              ; preds = %557
  %572 = load %struct.bnad*, %struct.bnad** %4, align 8
  %573 = getelementptr inbounds %struct.bnad, %struct.bnad* %572, i32 0, i32 4
  %574 = load %struct.TYPE_7__*, %struct.TYPE_7__** %573, align 8
  %575 = load i32, i32* %7, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %577, i32 0, i32 0
  %579 = load %struct.bna_tcb**, %struct.bna_tcb*** %578, align 8
  %580 = load i32, i32* %8, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %579, i64 %581
  %583 = load %struct.bna_tcb*, %struct.bna_tcb** %582, align 8
  %584 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %583, i32 0, i32 3
  %585 = load %struct.TYPE_8__*, %struct.TYPE_8__** %584, align 8
  %586 = icmp ne %struct.TYPE_8__* %585, null
  br i1 %586, label %587, label %645

587:                                              ; preds = %571
  %588 = load %struct.bnad*, %struct.bnad** %4, align 8
  %589 = getelementptr inbounds %struct.bnad, %struct.bnad* %588, i32 0, i32 4
  %590 = load %struct.TYPE_7__*, %struct.TYPE_7__** %589, align 8
  %591 = load i32, i32* %7, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %590, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %593, i32 0, i32 0
  %595 = load %struct.bna_tcb**, %struct.bna_tcb*** %594, align 8
  %596 = load i32, i32* %8, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %595, i64 %597
  %599 = load %struct.bna_tcb*, %struct.bna_tcb** %598, align 8
  store %struct.bna_tcb* %599, %struct.bna_tcb** %10, align 8
  %600 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %601 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %600, i32 0, i32 3
  %602 = load %struct.TYPE_8__*, %struct.TYPE_8__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 4
  %605 = load i32*, i32** %5, align 8
  %606 = load i32, i32* %6, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %6, align 4
  %608 = sext i32 %606 to i64
  %609 = getelementptr inbounds i32, i32* %605, i64 %608
  store i32 %604, i32* %609, align 4
  %610 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %611 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %610, i32 0, i32 3
  %612 = load %struct.TYPE_8__*, %struct.TYPE_8__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 4
  %615 = load i32*, i32** %5, align 8
  %616 = load i32, i32* %6, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %6, align 4
  %618 = sext i32 %616 to i64
  %619 = getelementptr inbounds i32, i32* %615, i64 %618
  store i32 %614, i32* %619, align 4
  %620 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %621 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  %623 = load i32*, i32** %5, align 8
  %624 = load i32, i32* %6, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %6, align 4
  %626 = sext i32 %624 to i64
  %627 = getelementptr inbounds i32, i32* %623, i64 %626
  store i32 %622, i32* %627, align 4
  %628 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %629 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 8
  %631 = load i32*, i32** %5, align 8
  %632 = load i32, i32* %6, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %6, align 4
  %634 = sext i32 %632 to i64
  %635 = getelementptr inbounds i32, i32* %631, i64 %634
  store i32 %630, i32* %635, align 4
  %636 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %637 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %636, i32 0, i32 0
  %638 = load i32*, i32** %637, align 8
  %639 = load i32, i32* %638, align 4
  %640 = load i32*, i32** %5, align 8
  %641 = load i32, i32* %6, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %6, align 4
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds i32, i32* %640, i64 %643
  store i32 %639, i32* %644, align 4
  br label %645

645:                                              ; preds = %587, %571, %557
  br label %646

646:                                              ; preds = %645
  %647 = load i32, i32* %8, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %8, align 4
  br label %551

649:                                              ; preds = %551
  br label %650

650:                                              ; preds = %649, %549
  %651 = load i32, i32* %7, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %7, align 4
  br label %533

653:                                              ; preds = %533
  %654 = load i32, i32* %6, align 4
  ret i32 %654
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
