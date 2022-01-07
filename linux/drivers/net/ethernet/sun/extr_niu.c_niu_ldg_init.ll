; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ldg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ldg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_parent*, %struct.TYPE_2__*, %struct.niu_ldg* }
%struct.niu_parent = type { i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.niu_ldg = type { i32, i32, %struct.niu*, i32, i32 }

@NIU_NUM_LDG = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@niu_poll = common dso_local global i32 0, align 4
@LDN_MIF = common dso_local global i32 0, align 4
@LDN_DEVICE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_ldg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_ldg_init(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.niu_ldg*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 2
  %17 = load %struct.niu_parent*, %struct.niu_parent** %16, align 8
  store %struct.niu_parent* %17, %struct.niu_parent** %4, align 8
  %18 = load i32, i32* @NIU_NUM_LDG, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load %struct.niu*, %struct.niu** %3, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 4
  %31 = load %struct.niu_ldg*, %struct.niu_ldg** %30, align 8
  %32 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %31, i64 0
  %33 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %32, i32 0, i32 4
  store i32 %28, i32* %33, align 4
  %34 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %35 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.niu*, %struct.niu** %3, align 8
  %41 = call i32 @niu_n2_irq_init(%struct.niu* %40, i32* %21)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.niu*, %struct.niu** %3, align 8
  %49 = call i32 @niu_try_msix(%struct.niu* %48, i32* %21)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.niu*, %struct.niu** %3, align 8
  %52 = getelementptr inbounds %struct.niu, %struct.niu* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %106, %50
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.niu*, %struct.niu** %3, align 8
  %57 = getelementptr inbounds %struct.niu, %struct.niu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 4
  %63 = load %struct.niu_ldg*, %struct.niu_ldg** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %63, i64 %65
  store %struct.niu_ldg* %66, %struct.niu_ldg** %14, align 8
  %67 = load %struct.niu*, %struct.niu** %3, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load %struct.niu_ldg*, %struct.niu_ldg** %14, align 8
  %71 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %70, i32 0, i32 3
  %72 = load i32, i32* @niu_poll, align 4
  %73 = call i32 @netif_napi_add(%struct.TYPE_2__* %69, i32* %71, i32 %72, i32 64)
  %74 = load %struct.niu*, %struct.niu** %3, align 8
  %75 = load %struct.niu_ldg*, %struct.niu_ldg** %14, align 8
  %76 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %75, i32 0, i32 2
  store %struct.niu* %74, %struct.niu** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %21, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.niu_ldg*, %struct.niu_ldg** %14, align 8
  %82 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.niu_ldg*, %struct.niu_ldg** %14, align 8
  %84 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %83, i32 0, i32 1
  store i32 2, i32* %84, align 4
  %85 = load %struct.niu*, %struct.niu** %3, align 8
  %86 = getelementptr inbounds %struct.niu, %struct.niu* %85, i32 0, i32 2
  %87 = load %struct.niu_parent*, %struct.niu_parent** %86, align 8
  %88 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %60
  %93 = load %struct.niu*, %struct.niu** %3, align 8
  %94 = load %struct.niu_ldg*, %struct.niu_ldg** %14, align 8
  %95 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @niu_set_ldg_sid(%struct.niu* %93, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %54

109:                                              ; preds = %54
  store i32 0, i32* %11, align 4
  %110 = load %struct.niu*, %struct.niu** %3, align 8
  %111 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %21, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @LDN_MAC(i32 %116)
  %118 = call i32 @niu_ldg_assign_ldn(%struct.niu* %110, %struct.niu_parent* %111, i32 %115, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

123:                                              ; preds = %109
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.niu*, %struct.niu** %3, align 8
  %128 = getelementptr inbounds %struct.niu, %struct.niu* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %180

135:                                              ; preds = %132
  %136 = load %struct.niu*, %struct.niu** %3, align 8
  %137 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %21, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @LDN_MIF, align 4
  %143 = call i32 @niu_ldg_assign_ldn(%struct.niu* %136, %struct.niu_parent* %137, i32 %141, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

148:                                              ; preds = %135
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.niu*, %struct.niu** %3, align 8
  %153 = getelementptr inbounds %struct.niu, %struct.niu* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %156, %148
  %158 = load %struct.niu*, %struct.niu** %3, align 8
  %159 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %21, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @LDN_DEVICE_ERROR, align 4
  %165 = call i32 @niu_ldg_assign_ldn(%struct.niu* %158, %struct.niu_parent* %159, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

170:                                              ; preds = %157
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.niu*, %struct.niu** %3, align 8
  %175 = getelementptr inbounds %struct.niu, %struct.niu* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %178, %170
  br label %180

180:                                              ; preds = %179, %132
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %195, %180
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %187 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %185
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %181

198:                                              ; preds = %181
  %199 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %200 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %237, %198
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %209, %210
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %240

213:                                              ; preds = %207
  %214 = load %struct.niu*, %struct.niu** %3, align 8
  %215 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %21, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @LDN_RXDMA(i32 %220)
  %222 = call i32 @niu_ldg_assign_ldn(%struct.niu* %214, %struct.niu_parent* %215, i32 %219, i32 %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %213
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

227:                                              ; preds = %213
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.niu*, %struct.niu** %3, align 8
  %232 = getelementptr inbounds %struct.niu, %struct.niu* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %235, %227
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %9, align 4
  br label %207

240:                                              ; preds = %207
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %241

241:                                              ; preds = %255, %240
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %241
  %246 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %247 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %245
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %241

258:                                              ; preds = %241
  %259 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %260 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %9, align 4
  br label %267

267:                                              ; preds = %297, %258
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %269, %270
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %267
  %274 = load %struct.niu*, %struct.niu** %3, align 8
  %275 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %21, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @LDN_TXDMA(i32 %280)
  %282 = call i32 @niu_ldg_assign_ldn(%struct.niu* %274, %struct.niu_parent* %275, i32 %279, i32 %281)
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %273
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

287:                                              ; preds = %273
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.niu*, %struct.niu** %3, align 8
  %292 = getelementptr inbounds %struct.niu, %struct.niu* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  store i32 0, i32* %11, align 4
  br label %296

296:                                              ; preds = %295, %287
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %267

300:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %301

301:                                              ; preds = %300, %285, %225, %168, %146, %121, %102, %44
  %302 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @niu_n2_irq_init(%struct.niu*, i32*) #2

declare dso_local i32 @niu_try_msix(%struct.niu*, i32*) #2

declare dso_local i32 @netif_napi_add(%struct.TYPE_2__*, i32*, i32, i32) #2

declare dso_local i32 @niu_set_ldg_sid(%struct.niu*, i32, i32, i32) #2

declare dso_local i32 @niu_ldg_assign_ldn(%struct.niu*, %struct.niu_parent*, i32, i32) #2

declare dso_local i32 @LDN_MAC(i32) #2

declare dso_local i32 @LDN_RXDMA(i32) #2

declare dso_local i32 @LDN_TXDMA(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
