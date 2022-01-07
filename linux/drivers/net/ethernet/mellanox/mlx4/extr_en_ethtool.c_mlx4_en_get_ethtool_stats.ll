; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mlx4_en_priv = type { i32*, i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__***, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bitmap_iterator = type { i32 }

@NUM_ALL_STATS = common dso_local global i32 0, align 4
@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PF_STATS = common dso_local global i32 0, align 4
@NUM_FLOW_PRIORITY_STATS_RX = common dso_local global i32 0, align 4
@NUM_FLOW_STATS_RX = common dso_local global i32 0, align 4
@NUM_FLOW_PRIORITY_STATS_TX = common dso_local global i32 0, align 4
@NUM_FLOW_STATS_TX = common dso_local global i32 0, align 4
@NUM_PKT_STATS = common dso_local global i32 0, align 4
@NUM_XDP_STATS = common dso_local global i32 0, align 4
@NUM_PHY_STATS = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @mlx4_en_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_iterator, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 14
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NUM_ALL_STATS, align 4
  %18 = call i32 @bitmap_iterator_init(%struct.bitmap_iterator* %10, i32 %16, i32 %17)
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @mlx4_en_fold_software_stats(%struct.net_device* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NUM_MAIN_STATS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i64*
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 4
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %31, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %24

49:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_PORT_STATS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 13
  %60 = bitcast i32* %59 to i64*
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %50

75:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NUM_PF_STATS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %84, i32 0, i32 12
  %86 = bitcast i32* %85 to i64*
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 4
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %90, i64* %95, align 8
  br label %96

96:                                               ; preds = %83, %80
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %76

101:                                              ; preds = %76
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %123, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @NUM_FLOW_PRIORITY_STATS_RX, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 11
  %112 = bitcast i32* %111 to i64*
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  store i64 %116, i64* %121, align 8
  br label %122

122:                                              ; preds = %109, %106
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %102

127:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @NUM_FLOW_STATS_RX, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %136, i32 0, i32 10
  %138 = bitcast i32* %137 to i64*
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 4
  %143 = load i64*, i64** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %135, %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %128

153:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %175, %153
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @NUM_FLOW_PRIORITY_STATS_TX, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %163 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %162, i32 0, i32 9
  %164 = bitcast i32* %163 to i64*
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  store i64 %168, i64* %173, align 8
  br label %174

174:                                              ; preds = %161, %158
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %154

179:                                              ; preds = %154
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %201, %179
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @NUM_FLOW_STATS_TX, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %180
  %185 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %188, i32 0, i32 8
  %190 = bitcast i32* %189 to i64*
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 4
  %195 = load i64*, i64** %6, align 8
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  store i64 %194, i64* %199, align 8
  br label %200

200:                                              ; preds = %187, %184
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  %204 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %180

205:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @NUM_PKT_STATS, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %206
  %211 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %210
  %214 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %215 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %214, i32 0, i32 7
  %216 = bitcast i32* %215 to i64*
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %6, align 8
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  store i64 %220, i64* %225, align 8
  br label %226

226:                                              ; preds = %213, %210
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  %230 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %206

231:                                              ; preds = %206
  store i32 0, i32* %9, align 4
  br label %232

232:                                              ; preds = %253, %231
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @NUM_XDP_STATS, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %236
  %240 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %241 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %240, i32 0, i32 6
  %242 = bitcast i32* %241 to i64*
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 4
  %247 = load i64*, i64** %6, align 8
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i64, i64* %247, i64 %250
  store i64 %246, i64* %251, align 8
  br label %252

252:                                              ; preds = %239, %236
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  %256 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %232

257:                                              ; preds = %232
  store i32 0, i32* %9, align 4
  br label %258

258:                                              ; preds = %279, %257
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @NUM_PHY_STATS, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %283

262:                                              ; preds = %258
  %263 = call i64 @bitmap_iterator_test(%struct.bitmap_iterator* %10)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %267 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %266, i32 0, i32 5
  %268 = bitcast i32* %267 to i64*
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i64*, i64** %6, align 8
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i64, i64* %273, i64 %276
  store i64 %272, i64* %277, align 8
  br label %278

278:                                              ; preds = %265, %262
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  %282 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %10)
  br label %258

283:                                              ; preds = %258
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %328, %283
  %285 = load i32, i32* %9, align 4
  %286 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %287 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* @TX, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %285, %291
  br i1 %292, label %293, label %331

293:                                              ; preds = %284
  %294 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %295 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %294, i32 0, i32 4
  %296 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %295, align 8
  %297 = load i64, i64* @TX, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %296, i64 %297
  %299 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %299, i64 %301
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64*, i64** %6, align 8
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i64, i64* %306, i64 %309
  store i64 %305, i64* %310, align 8
  %311 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %312 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %311, i32 0, i32 4
  %313 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %312, align 8
  %314 = load i64, i64* @TX, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %313, i64 %314
  %316 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %316, i64 %318
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64*, i64** %6, align 8
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i64, i64* %323, i64 %326
  store i64 %322, i64* %327, align 8
  br label %328

328:                                              ; preds = %293
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %9, align 4
  br label %284

331:                                              ; preds = %284
  store i32 0, i32* %9, align 4
  br label %332

332:                                              ; preds = %423, %331
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %335 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %426

338:                                              ; preds = %332
  %339 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %340 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %339, i32 0, i32 3
  %341 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %340, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %341, i64 %343
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64*, i64** %6, align 8
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i64, i64* %348, i64 %351
  store i64 %347, i64* %352, align 8
  %353 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %354 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %353, i32 0, i32 3
  %355 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %355, i64 %357
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64*, i64** %6, align 8
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds i64, i64* %362, i64 %365
  store i64 %361, i64* %366, align 8
  %367 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %368 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %367, i32 0, i32 3
  %369 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %369, i64 %371
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64*, i64** %6, align 8
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %8, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i64, i64* %376, i64 %379
  store i64 %375, i64* %380, align 8
  %381 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %382 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %381, i32 0, i32 3
  %383 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %383, i64 %385
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load i64*, i64** %6, align 8
  %391 = load i32, i32* %8, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %8, align 4
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i64, i64* %390, i64 %393
  store i64 %389, i64* %394, align 8
  %395 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %396 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %395, i32 0, i32 3
  %397 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %397, i64 %399
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = load i64*, i64** %6, align 8
  %405 = load i32, i32* %8, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %8, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i64, i64* %404, i64 %407
  store i64 %403, i64* %408, align 8
  %409 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %410 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %409, i32 0, i32 3
  %411 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %410, align 8
  %412 = load i32, i32* %9, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %411, i64 %413
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = load i64*, i64** %6, align 8
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %8, align 4
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i64, i64* %418, i64 %421
  store i64 %417, i64* %422, align 8
  br label %423

423:                                              ; preds = %338
  %424 = load i32, i32* %9, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %9, align 4
  br label %332

426:                                              ; preds = %332
  %427 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %428 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %427, i32 0, i32 2
  %429 = call i32 @spin_unlock_bh(i32* %428)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bitmap_iterator_init(%struct.bitmap_iterator*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mlx4_en_fold_software_stats(%struct.net_device*) #1

declare dso_local i64 @bitmap_iterator_test(%struct.bitmap_iterator*) #1

declare dso_local i32 @bitmap_iterator_inc(%struct.bitmap_iterator*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
