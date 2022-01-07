; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_ethtool.c_gve_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.gve_priv = type { %struct.TYPE_4__, %struct.gve_tx_ring*, %struct.TYPE_3__, %struct.gve_rx_ring*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.gve_tx_ring = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gve_rx_ring = type { i64, i64, i64, i64, i32 }

@GVE_MAIN_STATS_LEN = common dso_local global i32 0, align 4
@NUM_GVE_RX_CNTS = common dso_local global i32 0, align 4
@NUM_GVE_TX_CNTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @gve_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gve_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gve_rx_ring*, align 8
  %16 = alloca %struct.gve_tx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.gve_priv* %18, %struct.gve_priv** %7, align 8
  %19 = call i32 (...) @ASSERT_RTNL()
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %75, %3
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %20
  %28 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %29 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %28, i32 0, i32 3
  %30 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %29, align 8
  %31 = icmp ne %struct.gve_rx_ring* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %62, %32
  %34 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %35 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %34, i32 0, i32 3
  %36 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %36, i64 %38
  %40 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %39, i32 0, i32 4
  %41 = call i32 @u64_stats_fetch_begin(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %43 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %42, i32 0, i32 3
  %44 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %44, i64 %46
  %48 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %53 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %52, i32 0, i32 3
  %54 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %54, i64 %56
  %58 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %33
  %63 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %64 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %63, i32 0, i32 3
  %65 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %65, i64 %67
  %69 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %68, i32 0, i32 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @u64_stats_fetch_retry(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %33, label %73

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %20

78:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %134, %78
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %82 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %79
  %87 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %88 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %87, i32 0, i32 1
  %89 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %88, align 8
  %90 = icmp ne %struct.gve_tx_ring* %89, null
  br i1 %90, label %91, label %133

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %121, %91
  %93 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %94 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %93, i32 0, i32 1
  %95 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %95, i64 %97
  %99 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %98, i32 0, i32 6
  %100 = call i32 @u64_stats_fetch_begin(i32* %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %102 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %101, i32 0, i32 1
  %103 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %103, i64 %105
  %107 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %112 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %111, i32 0, i32 1
  %113 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %113, i64 %115
  %117 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %92
  %122 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %123 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %122, i32 0, i32 1
  %124 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %124, i64 %126
  %128 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %127, i32 0, i32 6
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @u64_stats_fetch_retry(i32* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %92, label %132

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %86
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %79

137:                                              ; preds = %79
  store i32 0, i32* %14, align 4
  %138 = load i64, i64* %8, align 8
  %139 = load i64*, i64** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  store i64 %138, i64* %143, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64*, i64** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  store i64 %144, i64* %149, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64*, i64** %6, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  store i64 %150, i64* %155, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64*, i64** %6, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  store i64 %156, i64* %161, align 8
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %14, align 4
  %164 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %165 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %6, align 8
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  store i64 %166, i64* %171, align 8
  %172 = load i32, i32* @GVE_MAIN_STATS_LEN, align 4
  store i32 %172, i32* %14, align 4
  %173 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %174 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %173, i32 0, i32 3
  %175 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %174, align 8
  %176 = icmp ne %struct.gve_rx_ring* %175, null
  br i1 %176, label %177, label %212

177:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %208, %177
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %181 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %178
  %186 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %187 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %186, i32 0, i32 3
  %188 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %188, i64 %190
  store %struct.gve_rx_ring* %191, %struct.gve_rx_ring** %15, align 8
  %192 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %15, align 8
  %193 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %6, align 8
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  store i64 %194, i64* %199, align 8
  %200 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %15, align 8
  %201 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %6, align 8
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  store i64 %202, i64* %207, align 8
  br label %208

208:                                              ; preds = %185
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %178

211:                                              ; preds = %178
  br label %221

212:                                              ; preds = %137
  %213 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %214 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @NUM_GVE_RX_CNTS, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %212, %211
  %222 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %223 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %222, i32 0, i32 1
  %224 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %223, align 8
  %225 = icmp ne %struct.gve_tx_ring* %224, null
  br i1 %225, label %226, label %286

226:                                              ; preds = %221
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %282, %226
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %230 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %228, %232
  br i1 %233, label %234, label %285

234:                                              ; preds = %227
  %235 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %236 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %235, i32 0, i32 1
  %237 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %237, i64 %239
  store %struct.gve_tx_ring* %240, %struct.gve_tx_ring** %16, align 8
  %241 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %16, align 8
  %242 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64*, i64** %6, align 8
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i64, i64* %244, i64 %247
  store i64 %243, i64* %248, align 8
  %249 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %16, align 8
  %250 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64*, i64** %6, align 8
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i64, i64* %252, i64 %255
  store i64 %251, i64* %256, align 8
  %257 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %16, align 8
  %258 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** %6, align 8
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i64, i64* %260, i64 %263
  store i64 %259, i64* %264, align 8
  %265 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %16, align 8
  %266 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64*, i64** %6, align 8
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i64, i64* %268, i64 %271
  store i64 %267, i64* %272, align 8
  %273 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %274 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %16, align 8
  %275 = call i32 @gve_tx_load_event_counter(%struct.gve_priv* %273, %struct.gve_tx_ring* %274)
  %276 = call i64 @be32_to_cpu(i32 %275)
  %277 = load i64*, i64** %6, align 8
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i64, i64* %277, i64 %280
  store i64 %276, i64* %281, align 8
  br label %282

282:                                              ; preds = %234
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %227

285:                                              ; preds = %227
  br label %295

286:                                              ; preds = %221
  %287 = load %struct.gve_priv*, %struct.gve_priv** %7, align 8
  %288 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @NUM_GVE_TX_CNTS, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %14, align 4
  br label %295

295:                                              ; preds = %286, %285
  ret void
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @gve_tx_load_event_counter(%struct.gve_priv*, %struct.gve_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
