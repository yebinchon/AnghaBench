; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.igb_adapter = type { i32, i32, i32, %struct.igb_ring**, %struct.igb_ring**, %struct.rtnl_link_stats64 }
%struct.igb_ring = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.rtnl_link_stats64 = type { i32 }

@IGB_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_stats = common dso_local global %struct.TYPE_7__* null, align 8
@IGB_NETDEV_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_net_stats = common dso_local global %struct.TYPE_8__* null, align 8
@IGB_TX_QUEUE_STATS_LEN = common dso_local global i64 0, align 8
@IGB_RX_QUEUE_STATS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @igb_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca %struct.rtnl_link_stats64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.igb_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igb_adapter* %16, %struct.igb_adapter** %7, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 5
  store %struct.rtnl_link_stats64* %18, %struct.rtnl_link_stats64** %8, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %23 = call i32 @igb_update_stats(%struct.igb_adapter* %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %61, %3
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @IGB_GLOBAL_STATS_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %30 = bitcast %struct.igb_adapter* %29 to i8*
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @igb_gstrings_stats, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %30, i64 %37
  store i8* %38, i8** %13, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @igb_gstrings_stats, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 8
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  br label %55

51:                                               ; preds = %28
  %52 = load i8*, i8** %13, align 8
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i64 [ %50, %47 ], [ %54, %51 ]
  %57 = load i64*, i64** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %24

64:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %102, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @IGB_NETDEV_STATS_LEN, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %71 = bitcast %struct.rtnl_link_stats64* %70 to i8*
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @igb_gstrings_net_stats, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %71, i64 %78
  store i8* %79, i8** %13, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @igb_gstrings_net_stats, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %88, label %92

88:                                               ; preds = %69
  %89 = load i8*, i8** %13, align 8
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  br label %96

92:                                               ; preds = %69
  %93 = load i8*, i8** %13, align 8
  %94 = bitcast i8* %93 to i64*
  %95 = load i64, i64* %94, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i64 [ %91, %88 ], [ %95, %92 ]
  %98 = load i64*, i64** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %97, i64* %101, align 8
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %65

107:                                              ; preds = %65
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %187, %107
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %190

114:                                              ; preds = %108
  %115 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %116 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %115, i32 0, i32 4
  %117 = load %struct.igb_ring**, %struct.igb_ring*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %117, i64 %119
  %121 = load %struct.igb_ring*, %struct.igb_ring** %120, align 8
  store %struct.igb_ring* %121, %struct.igb_ring** %10, align 8
  br label %122

122:                                              ; preds = %152, %114
  %123 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %124 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %123, i32 0, i32 4
  %125 = call i32 @u64_stats_fetch_begin_irq(i32* %124)
  store i32 %125, i32* %9, align 4
  %126 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %127 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64 %129, i64* %133, align 8
  %134 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %135 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  store i64 %137, i64* %142, align 8
  %143 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %144 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  store i64 %146, i64* %151, align 8
  br label %152

152:                                              ; preds = %122
  %153 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %154 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %153, i32 0, i32 4
  %155 = load i32, i32* %9, align 4
  %156 = call i64 @u64_stats_fetch_retry_irq(i32* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %122, label %158

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %167, %158
  %160 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %161 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %160, i32 0, i32 3
  %162 = call i32 @u64_stats_fetch_begin_irq(i32* %161)
  store i32 %162, i32* %9, align 4
  %163 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %164 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %14, align 8
  br label %167

167:                                              ; preds = %159
  %168 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %169 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %168, i32 0, i32 3
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @u64_stats_fetch_retry_irq(i32* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %159, label %173

173:                                              ; preds = %167
  %174 = load i64, i64* %14, align 8
  %175 = load i64*, i64** %6, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %174
  store i64 %181, i64* %179, align 8
  %182 = load i64, i64* @IGB_TX_QUEUE_STATS_LEN, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %173
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %108

190:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %191

191:                                              ; preds = %265, %190
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %194 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %268

197:                                              ; preds = %191
  %198 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %199 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %198, i32 0, i32 3
  %200 = load %struct.igb_ring**, %struct.igb_ring*** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %200, i64 %202
  %204 = load %struct.igb_ring*, %struct.igb_ring** %203, align 8
  store %struct.igb_ring* %204, %struct.igb_ring** %10, align 8
  br label %205

205:                                              ; preds = %253, %197
  %206 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %207 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %206, i32 0, i32 1
  %208 = call i32 @u64_stats_fetch_begin_irq(i32* %207)
  store i32 %208, i32* %9, align 4
  %209 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %210 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %6, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  store i64 %212, i64* %216, align 8
  %217 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %218 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %6, align 8
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  store i64 %220, i64* %225, align 8
  %226 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %227 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %6, align 8
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %230, i64 %233
  store i64 %229, i64* %234, align 8
  %235 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %236 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64*, i64** %6, align 8
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %239, i64 %242
  store i64 %238, i64* %243, align 8
  %244 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %245 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** %6, align 8
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  store i64 %247, i64* %252, align 8
  br label %253

253:                                              ; preds = %205
  %254 = load %struct.igb_ring*, %struct.igb_ring** %10, align 8
  %255 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %254, i32 0, i32 1
  %256 = load i32, i32* %9, align 4
  %257 = call i64 @u64_stats_fetch_retry_irq(i32* %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %205, label %259

259:                                              ; preds = %253
  %260 = load i64, i64* @IGB_RX_QUEUE_STATS_LEN, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %11, align 4
  br label %265

265:                                              ; preds = %259
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  br label %191

268:                                              ; preds = %191
  %269 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %270 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %269, i32 0, i32 2
  %271 = call i32 @spin_unlock(i32* %270)
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @igb_update_stats(%struct.igb_adapter*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
