; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bitmap_iterator = type { i32 }

@NUM_ALL_STATS = common dso_local global i32 0, align 4
@MLX4_EN_NUM_SELF_TEST = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@mlx4_en_test_names = common dso_local global i32* null, align 8
@MLX4_DEV_CAP_FLAG_UC_LOOPBACK = common dso_local global i32 0, align 4
@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@main_strings = common dso_local global i32* null, align 8
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PF_STATS = common dso_local global i32 0, align 4
@NUM_FLOW_STATS = common dso_local global i32 0, align 4
@NUM_PKT_STATS = common dso_local global i32 0, align 4
@NUM_XDP_STATS = common dso_local global i32 0, align 4
@NUM_PHY_STATS = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"tx%d_packets\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx%d_bytes\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rx%d_packets\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rx%d_bytes\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rx%d_dropped\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"rx%d_xdp_drop\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rx%d_xdp_tx\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"rx%d_xdp_tx_full\00", align 1
@mlx4_en_priv_flags = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @mlx4_en_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bitmap_iterator, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NUM_ALL_STATS, align 4
  %19 = call i32 @bitmap_iterator_init(%struct.bitmap_iterator* %11, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %402 [
    i32 128, label %21
    i32 129, label %78
    i32 130, label %379
  ]

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32*, i32** @mlx4_en_test_names, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcpy(i32* %33, i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_DEV_CAP_FLAG_UC_LOOPBACK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32*, i32** @mlx4_en_test_names, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcpy(i32* %66, i32 %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %43
  br label %402

78:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @NUM_MAIN_STATS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %91 = mul nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32*, i32** @main_strings, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strcpy(i32* %93, i32 %98)
  br label %100

100:                                              ; preds = %86, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %79

107:                                              ; preds = %79
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @NUM_PORT_STATS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %120 = mul nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32*, i32** @main_strings, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcpy(i32* %122, i32 %127)
  br label %129

129:                                              ; preds = %115, %112
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %108

136:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %159, %136
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @NUM_PF_STATS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %137
  %142 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %149 = mul nsw i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  %152 = load i32*, i32** @main_strings, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @strcpy(i32* %151, i32 %156)
  br label %158

158:                                              ; preds = %144, %141
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  %164 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %137

165:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %188, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @NUM_FLOW_STATS, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %166
  %171 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %178 = mul nsw i32 %175, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32*, i32** @main_strings, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @strcpy(i32* %180, i32 %185)
  br label %187

187:                                              ; preds = %173, %170
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  %193 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %166

194:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %217, %194
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @NUM_PKT_STATS, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %195
  %200 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %207 = mul nsw i32 %204, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %203, i64 %208
  %210 = load i32*, i32** @main_strings, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @strcpy(i32* %209, i32 %214)
  br label %216

216:                                              ; preds = %202, %199
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  %222 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %195

223:                                              ; preds = %195
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %246, %223
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @NUM_XDP_STATS, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %252

228:                                              ; preds = %224
  %229 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %228
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %236 = mul nsw i32 %233, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %232, i64 %237
  %239 = load i32*, i32** @main_strings, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @strcpy(i32* %238, i32 %243)
  br label %245

245:                                              ; preds = %231, %228
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  %251 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %224

252:                                              ; preds = %224
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %275, %252
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @NUM_PHY_STATS, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %281

257:                                              ; preds = %253
  %258 = call i32 @bitmap_iterator_test(%struct.bitmap_iterator* %11)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %265 = mul nsw i32 %262, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32*, i32** @main_strings, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @strcpy(i32* %267, i32 %272)
  br label %274

274:                                              ; preds = %260, %257
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %10, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %10, align 4
  %280 = call i32 @bitmap_iterator_inc(%struct.bitmap_iterator* %11)
  br label %253

281:                                              ; preds = %253
  store i32 0, i32* %9, align 4
  br label %282

282:                                              ; preds = %310, %281
  %283 = load i32, i32* %9, align 4
  %284 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %285 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* @TX, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %283, %289
  br i1 %290, label %291, label %313

291:                                              ; preds = %282
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %296 = mul nsw i32 %293, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %292, i64 %297
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @sprintf(i32* %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %299)
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %305 = mul nsw i32 %302, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %301, i64 %306
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @sprintf(i32* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %291
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  br label %282

313:                                              ; preds = %282
  store i32 0, i32* %9, align 4
  br label %314

314:                                              ; preds = %375, %313
  %315 = load i32, i32* %9, align 4
  %316 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %317 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = icmp slt i32 %315, %318
  br i1 %319, label %320, label %378

320:                                              ; preds = %314
  %321 = load i32*, i32** %6, align 8
  %322 = load i32, i32* %8, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %325 = mul nsw i32 %322, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %321, i64 %326
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @sprintf(i32* %327, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %328)
  %330 = load i32*, i32** %6, align 8
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %334 = mul nsw i32 %331, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %330, i64 %335
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @sprintf(i32* %336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %337)
  %339 = load i32*, i32** %6, align 8
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %343 = mul nsw i32 %340, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %339, i64 %344
  %346 = load i32, i32* %9, align 4
  %347 = call i32 @sprintf(i32* %345, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %346)
  %348 = load i32*, i32** %6, align 8
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  %351 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %352 = mul nsw i32 %349, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %348, i64 %353
  %355 = load i32, i32* %9, align 4
  %356 = call i32 @sprintf(i32* %354, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %355)
  %357 = load i32*, i32** %6, align 8
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %361 = mul nsw i32 %358, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %357, i64 %362
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @sprintf(i32* %363, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  %366 = load i32*, i32** %6, align 8
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %370 = mul nsw i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %366, i64 %371
  %373 = load i32, i32* %9, align 4
  %374 = call i32 @sprintf(i32* %372, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %373)
  br label %375

375:                                              ; preds = %320
  %376 = load i32, i32* %9, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %9, align 4
  br label %314

378:                                              ; preds = %314
  br label %402

379:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  br label %380

380:                                              ; preds = %398, %379
  %381 = load i32, i32* %9, align 4
  %382 = load i32*, i32** @mlx4_en_priv_flags, align 8
  %383 = call i32 @ARRAY_SIZE(i32* %382)
  %384 = icmp slt i32 %381, %383
  br i1 %384, label %385, label %401

385:                                              ; preds = %380
  %386 = load i32*, i32** %6, align 8
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %389 = mul nsw i32 %387, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %386, i64 %390
  %392 = load i32*, i32** @mlx4_en_priv_flags, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @strcpy(i32* %391, i32 %396)
  br label %398

398:                                              ; preds = %385
  %399 = load i32, i32* %9, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %9, align 4
  br label %380

401:                                              ; preds = %380
  br label %402

402:                                              ; preds = %3, %401, %378, %77
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bitmap_iterator_init(%struct.bitmap_iterator*, i32, i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @bitmap_iterator_test(%struct.bitmap_iterator*) #1

declare dso_local i32 @bitmap_iterator_inc(%struct.bitmap_iterator*) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
