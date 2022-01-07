; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rhine_private = type { i32, i32, i32, %struct.sk_buff**, i64*, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.sk_buff = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tx scavenge %d status %08x\0A\00", align 1
@DescOwn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Transmit error, Tx status %08x\0A\00", align 1
@rqRhineI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"collisions: %1.1x:%1.1x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rhine_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rhine_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %12)
  store %struct.rhine_private* %13, %struct.rhine_private** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %19 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @smp_rmb()
  %22 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %23 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %229, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %249

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TX_RING_SIZE, align 4
  %32 = urem i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %34 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %33, i32 0, i32 6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %43 = load i32, i32* @tx_done, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.rhine_private* %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @DescOwn, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %29
  br label %249

53:                                               ; preds = %29
  %54 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %55 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %54, i32 0, i32 3
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 32768
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %149

64:                                               ; preds = %53
  %65 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %66 = load i32, i32* @tx_done, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.rhine_private* %65, i32 %66, %struct.net_device* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 1024
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %64
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 512
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 256
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %116 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @rqRhineI, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 2
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %121, %114
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 2048
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 4096
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %129, %125, %121
  %134 = load %struct.net_device*, %struct.net_device** %2, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @DescOwn, align 4
  %140 = call i32 @cpu_to_le32(i32 %139)
  %141 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %142 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %141, i32 0, i32 6
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  br label %249

148:                                              ; preds = %129
  br label %206

149:                                              ; preds = %53
  %150 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %151 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @rqRhineI, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %157, 3
  %159 = and i32 %158, 15
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %159
  store i32 %164, i32* %162, align 8
  br label %173

165:                                              ; preds = %149
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 15
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, %167
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %165, %156
  %174 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %175 = load i32, i32* @tx_done, align 4
  %176 = load %struct.net_device*, %struct.net_device** %2, align 8
  %177 = load i32, i32* %11, align 4
  %178 = ashr i32 %177, 3
  %179 = and i32 %178, 15
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, 15
  %182 = call i32 (%struct.rhine_private*, i32, %struct.net_device*, i8*, i32, ...) @netif_dbg(%struct.rhine_private* %174, i32 %175, %struct.net_device* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %181)
  %183 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %184 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = call i32 @u64_stats_update_begin(i32* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %191 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %189
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  %197 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %198 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %203 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = call i32 @u64_stats_update_end(i32* %204)
  br label %206

206:                                              ; preds = %173, %148
  %207 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %208 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %207, i32 0, i32 4
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %206
  %216 = load %struct.device*, %struct.device** %4, align 8
  %217 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %218 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @DMA_TO_DEVICE, align 4
  %228 = call i32 @dma_unmap_single(%struct.device* %216, i64 %223, i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %215, %206
  %230 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = zext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %5, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %5, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %240 = call i32 @dev_consume_skb_any(%struct.sk_buff* %239)
  %241 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %242 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %241, i32 0, i32 3
  %243 = load %struct.sk_buff**, %struct.sk_buff*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %243, i64 %245
  store %struct.sk_buff* null, %struct.sk_buff** %246, align 8
  %247 = load i32, i32* %7, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %25

249:                                              ; preds = %133, %52, %25
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %252 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = call i32 (...) @smp_wmb()
  %254 = load %struct.net_device*, %struct.net_device** %2, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @netdev_completed_queue(%struct.net_device* %254, i32 %255, i32 %256)
  %258 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %259 = call i64 @rhine_tx_queue_full(%struct.rhine_private* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %276, label %261

261:                                              ; preds = %249
  %262 = load %struct.net_device*, %struct.net_device** %2, align 8
  %263 = call i64 @netif_queue_stopped(%struct.net_device* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %261
  %266 = load %struct.net_device*, %struct.net_device** %2, align 8
  %267 = call i32 @netif_wake_queue(%struct.net_device* %266)
  %268 = call i32 (...) @smp_rmb()
  %269 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %270 = call i64 @rhine_tx_queue_full(%struct.rhine_private* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.net_device*, %struct.net_device** %2, align 8
  %274 = call i32 @netif_stop_queue(%struct.net_device* %273)
  br label %275

275:                                              ; preds = %272, %265
  br label %276

276:                                              ; preds = %275, %261, %249
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_dbg(%struct.rhine_private*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i64 @rhine_tx_queue_full(%struct.rhine_private*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
