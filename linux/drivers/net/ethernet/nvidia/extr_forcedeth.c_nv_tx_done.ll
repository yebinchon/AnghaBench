; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.ring_desc* }
%struct.ring_desc = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ring_desc* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ring_desc* }

@NV_TX_VALID = common dso_local global i32 0, align 4
@DESC_VER_1 = common dso_local global i64 0, align 8
@NV_TX_LASTPACKET = common dso_local global i32 0, align 4
@NV_TX_ERROR = common dso_local global i32 0, align 4
@NV_TX_RETRYERROR = common dso_local global i32 0, align 4
@NV_TX_RETRYCOUNT_MASK = common dso_local global i32 0, align 4
@stat_tx_packets = common dso_local global i32 0, align 4
@stat_tx_bytes = common dso_local global i32 0, align 4
@NV_TX2_LASTPACKET = common dso_local global i32 0, align 4
@NV_TX2_ERROR = common dso_local global i32 0, align 4
@NV_TX2_RETRYERROR = common dso_local global i32 0, align 4
@NV_TX2_RETRYCOUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nv_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_tx_done(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.fe_priv* %13, %struct.fe_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %15 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.ring_desc*, %struct.ring_desc** %16, align 8
  store %struct.ring_desc* %17, %struct.ring_desc** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %234, %2
  %19 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.ring_desc*, %struct.ring_desc** %21, align 8
  %23 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %24 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.ring_desc*, %struct.ring_desc** %25, align 8
  %27 = icmp ne %struct.ring_desc* %22, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %18
  %29 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %30 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.ring_desc*, %struct.ring_desc** %31, align 8
  %33 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @NV_TX_VALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %28, %18
  %44 = phi i1 [ false, %28 ], [ false, %18 ], [ %42, %39 ]
  br i1 %44, label %45, label %235

45:                                               ; preds = %43
  %46 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %47 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %48 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %47, i32 0, i32 5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = call i32 @nv_unmap_txskb(%struct.fe_priv* %46, %struct.TYPE_11__* %49)
  %51 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %52 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DESC_VER_1, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NV_TX_LASTPACKET, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NV_TX_ERROR, align 4
  %64 = and i32 %62, %63
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @NV_TX_RETRYERROR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @NV_TX_RETRYCOUNT_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @nv_legacybackoff_reseed(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %77, %72, %67
  br label %100

81:                                               ; preds = %61
  %82 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %83 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %82, i32 0, i32 9
  %84 = call i32 @u64_stats_update_begin(i32* %83)
  %85 = load i32, i32* @stat_tx_packets, align 4
  %86 = call i32 @nv_txrx_stats_inc(i32 %85)
  %87 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %88 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %87, i32 0, i32 5
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @stat_tx_bytes, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @nv_txrx_stats_add(i32 %94, i32 %95)
  %97 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %98 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %97, i32 0, i32 9
  %99 = call i32 @u64_stats_update_end(i32* %98)
  br label %100

100:                                              ; preds = %81, %80
  %101 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %102 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %101, i32 0, i32 5
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %111 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %110, i32 0, i32 5
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = call i32 @dev_kfree_skb_any(%struct.TYPE_12__* %114)
  %116 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %117 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %116, i32 0, i32 5
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %100, %56
  br label %190

123:                                              ; preds = %45
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @NV_TX2_LASTPACKET, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %189

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NV_TX2_ERROR, align 4
  %131 = and i32 %129, %130
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @NV_TX2_RETRYERROR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @NV_TX2_RETRYCOUNT_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = call i32 @nv_legacybackoff_reseed(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %144, %139, %134
  br label %167

148:                                              ; preds = %128
  %149 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %150 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %149, i32 0, i32 9
  %151 = call i32 @u64_stats_update_begin(i32* %150)
  %152 = load i32, i32* @stat_tx_packets, align 4
  %153 = call i32 @nv_txrx_stats_inc(i32 %152)
  %154 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %155 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %154, i32 0, i32 5
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @stat_tx_bytes, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @nv_txrx_stats_add(i32 %161, i32 %162)
  %164 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %165 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %164, i32 0, i32 9
  %166 = call i32 @u64_stats_update_end(i32* %165)
  br label %167

167:                                              ; preds = %148, %147
  %168 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %169 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %168, i32 0, i32 5
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, %174
  store i32 %176, i32* %9, align 4
  %177 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %178 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %177, i32 0, i32 5
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = call i32 @dev_kfree_skb_any(%struct.TYPE_12__* %181)
  %183 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %184 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %183, i32 0, i32 5
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %186, align 8
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %167, %123
  br label %190

190:                                              ; preds = %189, %122
  %191 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %192 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load %struct.ring_desc*, %struct.ring_desc** %193, align 8
  %195 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %194, i32 1
  store %struct.ring_desc* %195, %struct.ring_desc** %193, align 8
  %196 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %197 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to %struct.ring_desc*
  %202 = icmp eq %struct.ring_desc* %194, %201
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %190
  %207 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %208 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load %struct.ring_desc*, %struct.ring_desc** %209, align 8
  %211 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %212 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store %struct.ring_desc* %210, %struct.ring_desc** %213, align 8
  br label %214

214:                                              ; preds = %206, %190
  %215 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %216 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %215, i32 0, i32 5
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 1
  store %struct.TYPE_11__* %218, %struct.TYPE_11__** %216, align 8
  %219 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %220 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.TYPE_11__*
  %224 = icmp eq %struct.TYPE_11__* %217, %223
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %214
  %229 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %230 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %229, i32 0, i32 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %233 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %232, i32 0, i32 5
  store %struct.TYPE_11__* %231, %struct.TYPE_11__** %233, align 8
  br label %234

234:                                              ; preds = %228, %214
  br label %18

235:                                              ; preds = %43
  %236 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %237 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @netdev_completed_queue(i32 %238, i32 %239, i32 %240)
  %242 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %243 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %253

246:                                              ; preds = %235
  %247 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %248 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load %struct.ring_desc*, %struct.ring_desc** %249, align 8
  %251 = load %struct.ring_desc*, %struct.ring_desc** %8, align 8
  %252 = icmp ne %struct.ring_desc* %250, %251
  br label %253

253:                                              ; preds = %246, %235
  %254 = phi i1 [ false, %235 ], [ %252, %246 ]
  %255 = zext i1 %254 to i32
  %256 = call i64 @unlikely(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %260 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %259, i32 0, i32 1
  store i32 0, i32* %260, align 8
  %261 = load %struct.net_device*, %struct.net_device** %3, align 8
  %262 = call i32 @netif_wake_queue(%struct.net_device* %261)
  br label %263

263:                                              ; preds = %258, %253
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nv_unmap_txskb(%struct.fe_priv*, %struct.TYPE_11__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_legacybackoff_reseed(%struct.net_device*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @nv_txrx_stats_inc(i32) #1

declare dso_local i32 @nv_txrx_stats_add(i32, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_12__*) #1

declare dso_local i32 @netdev_completed_queue(i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
