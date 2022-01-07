; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.macb_queue = type { i32, %struct.macb_tx_skb* }
%struct.macb_tx_skb = type { i32, i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.macb_dma_desc = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i64 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@MACB_LSO_UFO_ENABLE = common dso_local global i64 0, align 8
@MACB_LSO_TSO_ENABLE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"BUG! empty skb!\0A\00", align 1
@TX_USED = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@TX_LAST = common dso_local global i32 0, align 4
@TX_WRAP = common dso_local global i32 0, align 4
@TX_LSO = common dso_local global i32 0, align 4
@TX_TCP_SEQ_SRC = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_NOCRC = common dso_local global i32 0, align 4
@MSS_MFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*, %struct.macb_queue*, %struct.sk_buff*, i32)* @macb_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_tx_map(%struct.macb* %0, %struct.macb_queue* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.macb*, align 8
  %7 = alloca %struct.macb_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.macb_tx_skb*, align 8
  %16 = alloca %struct.macb_dma_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  store %struct.macb* %0, %struct.macb** %6, align 8
  store %struct.macb_queue* %1, %struct.macb_queue** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %28 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %29 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  store %struct.macb_tx_skb* null, %struct.macb_tx_skb** %15, align 8
  store i32 0, i32* %19, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_UDP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @MACB_LSO_UFO_ENABLE, align 8
  store i64 %48, i64* %25, align 8
  br label %51

49:                                               ; preds = %40
  %50 = load i64, i64* @MACB_LSO_TSO_ENABLE, align 8
  store i64 %50, i64* %25, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @skb_headlen(%struct.sk_buff* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %90, %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %56
  %60 = load %struct.macb*, %struct.macb** %6, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @macb_tx_ring_wrap(%struct.macb* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %64 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %63, i32 0, i32 1
  %65 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %65, i64 %67
  store %struct.macb_tx_skb* %68, %struct.macb_tx_skb** %15, align 8
  %69 = load %struct.macb*, %struct.macb** %6, align 8
  %70 = getelementptr inbounds %struct.macb, %struct.macb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i8* @dma_map_single(i32* %72, i64 %78, i32 %79, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load %struct.macb*, %struct.macb** %6, align 8
  %83 = getelementptr inbounds %struct.macb, %struct.macb* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i8*, i8** %10, align 8
  %87 = call i64 @dma_mapping_error(i32* %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %59
  br label %353

90:                                               ; preds = %59
  %91 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %92 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %91, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %95 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %98 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %100 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %19, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.macb*, %struct.macb** %6, align 8
  %113 = getelementptr inbounds %struct.macb, %struct.macb* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @min(i32 %111, i32 %114)
  store i32 %115, i32* %18, align 4
  br label %56

116:                                              ; preds = %56
  store i32 0, i32* %20, align 4
  br label %117

117:                                              ; preds = %188, %116
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %191

121:                                              ; preds = %117
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %20, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32* %128, i32** %27, align 8
  %129 = load i32*, i32** %27, align 8
  %130 = call i32 @skb_frag_size(i32* %129)
  store i32 %130, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %166, %121
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %187

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.macb*, %struct.macb** %6, align 8
  %137 = getelementptr inbounds %struct.macb, %struct.macb* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @min(i32 %135, i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.macb*, %struct.macb** %6, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @macb_tx_ring_wrap(%struct.macb* %140, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %144 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %143, i32 0, i32 1
  %145 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %145, i64 %147
  store %struct.macb_tx_skb* %148, %struct.macb_tx_skb** %15, align 8
  %149 = load %struct.macb*, %struct.macb** %6, align 8
  %150 = getelementptr inbounds %struct.macb, %struct.macb* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32*, i32** %27, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* @DMA_TO_DEVICE, align 4
  %157 = call i8* @skb_frag_dma_map(i32* %152, i32* %153, i32 %154, i32 %155, i32 %156)
  store i8* %157, i8** %10, align 8
  %158 = load %struct.macb*, %struct.macb** %6, align 8
  %159 = getelementptr inbounds %struct.macb, %struct.macb* %158, i32 0, i32 2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i8*, i8** %10, align 8
  %163 = call i64 @dma_mapping_error(i32* %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %134
  br label %353

166:                                              ; preds = %134
  %167 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %168 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %167, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %168, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %171 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %174 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %176 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %19, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %19, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %131

187:                                              ; preds = %131
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %20, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %20, align 4
  br label %117

191:                                              ; preds = %117
  %192 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %193 = icmp ne %struct.macb_tx_skb* %192, null
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load %struct.macb*, %struct.macb** %6, align 8
  %200 = getelementptr inbounds %struct.macb, %struct.macb* %199, i32 0, i32 1
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = call i32 @netdev_err(%struct.TYPE_7__* %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %376

203:                                              ; preds = %191
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %206 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %205, i32 0, i32 3
  store %struct.sk_buff* %204, %struct.sk_buff** %206, align 8
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %13, align 4
  %208 = load %struct.macb*, %struct.macb** %6, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @macb_tx_ring_wrap(%struct.macb* %208, i32 %209)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* @TX_USED, align 4
  %212 = call i64 @MACB_BIT(i32 %211)
  store i64 %212, i64* %24, align 8
  %213 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %214 = load i32, i32* %12, align 4
  %215 = call %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue* %213, i32 %214)
  store %struct.macb_dma_desc* %215, %struct.macb_dma_desc** %16, align 8
  %216 = load i64, i64* %24, align 8
  %217 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %16, align 8
  %218 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %25, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %203
  %222 = load i64, i64* %25, align 8
  %223 = load i64, i64* @MACB_LSO_UFO_ENABLE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %221
  %226 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %227 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %226)
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %231 = call i32 @skb_transport_offset(%struct.sk_buff* %230)
  %232 = add i32 %229, %231
  %233 = load i32, i32* @ETH_FCS_LEN, align 4
  %234 = add i32 %232, %233
  store i32 %234, i32* %23, align 4
  br label %240

235:                                              ; preds = %221
  %236 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %237 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %23, align 4
  store i64 0, i64* %26, align 8
  br label %240

240:                                              ; preds = %235, %225
  br label %241

241:                                              ; preds = %240, %203
  br label %242

242:                                              ; preds = %342, %241
  %243 = load i32, i32* %13, align 4
  %244 = add i32 %243, -1
  store i32 %244, i32* %13, align 4
  %245 = load %struct.macb*, %struct.macb** %6, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @macb_tx_ring_wrap(%struct.macb* %245, i32 %246)
  store i32 %247, i32* %12, align 4
  %248 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %249 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %248, i32 0, i32 1
  %250 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %250, i64 %252
  store %struct.macb_tx_skb* %253, %struct.macb_tx_skb** %15, align 8
  %254 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %255 = load i32, i32* %12, align 4
  %256 = call %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue* %254, i32 %255)
  store %struct.macb_dma_desc* %256, %struct.macb_dma_desc** %16, align 8
  %257 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %258 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %24, align 8
  %261 = load i32, i32* %22, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %242
  %264 = load i32, i32* @TX_LAST, align 4
  %265 = call i64 @MACB_BIT(i32 %264)
  %266 = load i64, i64* %24, align 8
  %267 = or i64 %266, %265
  store i64 %267, i64* %24, align 8
  store i32 0, i32* %22, align 4
  br label %268

268:                                              ; preds = %263, %242
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.macb*, %struct.macb** %6, align 8
  %271 = getelementptr inbounds %struct.macb, %struct.macb* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sub nsw i32 %272, 1
  %274 = icmp eq i32 %269, %273
  %275 = zext i1 %274 to i32
  %276 = call i64 @unlikely(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %268
  %279 = load i32, i32* @TX_WRAP, align 4
  %280 = call i64 @MACB_BIT(i32 %279)
  %281 = load i64, i64* %24, align 8
  %282 = or i64 %281, %280
  store i64 %282, i64* %24, align 8
  br label %283

283:                                              ; preds = %278, %268
  %284 = load i32, i32* %13, align 4
  %285 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %286 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %284, %287
  br i1 %288, label %289, label %325

289:                                              ; preds = %283
  %290 = load i32, i32* @TX_LSO, align 4
  %291 = load i64, i64* %25, align 8
  %292 = trunc i64 %291 to i32
  %293 = call i64 @MACB_BF(i32 %290, i32 %292)
  %294 = load i64, i64* %24, align 8
  %295 = or i64 %294, %293
  store i64 %295, i64* %24, align 8
  %296 = load i32, i32* @TX_TCP_SEQ_SRC, align 4
  %297 = load i64, i64* %26, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i64 @MACB_BF(i32 %296, i32 %298)
  %300 = load i64, i64* %24, align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* %24, align 8
  %302 = load %struct.macb*, %struct.macb** %6, align 8
  %303 = getelementptr inbounds %struct.macb, %struct.macb* %302, i32 0, i32 1
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %324

310:                                              ; preds = %289
  %311 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %324

316:                                              ; preds = %310
  %317 = load i64, i64* %25, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* @TX_NOCRC, align 4
  %321 = call i64 @MACB_BIT(i32 %320)
  %322 = load i64, i64* %24, align 8
  %323 = or i64 %322, %321
  store i64 %323, i64* %24, align 8
  br label %324

324:                                              ; preds = %319, %316, %310, %289
  br label %331

325:                                              ; preds = %283
  %326 = load i32, i32* @MSS_MFS, align 4
  %327 = load i32, i32* %23, align 4
  %328 = call i64 @MACB_BF(i32 %326, i32 %327)
  %329 = load i64, i64* %24, align 8
  %330 = or i64 %329, %328
  store i64 %330, i64* %24, align 8
  br label %331

331:                                              ; preds = %325, %324
  %332 = load %struct.macb*, %struct.macb** %6, align 8
  %333 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %16, align 8
  %334 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %335 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %334, i32 0, i32 2
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @macb_set_addr(%struct.macb* %332, %struct.macb_dma_desc* %333, i8* %336)
  %338 = call i32 (...) @wmb()
  %339 = load i64, i64* %24, align 8
  %340 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %16, align 8
  %341 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  br label %342

342:                                              ; preds = %331
  %343 = load i32, i32* %13, align 4
  %344 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %345 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %343, %346
  br i1 %347, label %242, label %348

348:                                              ; preds = %342
  %349 = load i32, i32* %14, align 4
  %350 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %351 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 8
  %352 = load i32, i32* %19, align 4
  store i32 %352, i32* %5, align 4
  br label %376

353:                                              ; preds = %165, %89
  %354 = load %struct.macb*, %struct.macb** %6, align 8
  %355 = getelementptr inbounds %struct.macb, %struct.macb* %354, i32 0, i32 1
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = call i32 @netdev_err(%struct.TYPE_7__* %356, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %358 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %359 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  store i32 %360, i32* %13, align 4
  br label %361

361:                                              ; preds = %372, %353
  %362 = load i32, i32* %13, align 4
  %363 = load i32, i32* %14, align 4
  %364 = icmp ne i32 %362, %363
  br i1 %364, label %365, label %375

365:                                              ; preds = %361
  %366 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %367 = load i32, i32* %13, align 4
  %368 = call %struct.macb_tx_skb* @macb_tx_skb(%struct.macb_queue* %366, i32 %367)
  store %struct.macb_tx_skb* %368, %struct.macb_tx_skb** %15, align 8
  %369 = load %struct.macb*, %struct.macb** %6, align 8
  %370 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %15, align 8
  %371 = call i32 @macb_tx_unmap(%struct.macb* %369, %struct.macb_tx_skb* %370)
  br label %372

372:                                              ; preds = %365
  %373 = load i32, i32* %13, align 4
  %374 = add i32 %373, 1
  store i32 %374, i32* %13, align 4
  br label %361

375:                                              ; preds = %361
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %375, %348, %198
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @macb_tx_ring_wrap(%struct.macb*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @MACB_BIT(i32) #1

declare dso_local %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @MACB_BF(i32, i32) #1

declare dso_local i32 @macb_set_addr(%struct.macb*, %struct.macb_dma_desc*, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.macb_tx_skb* @macb_tx_skb(%struct.macb_queue*, i32) #1

declare dso_local i32 @macb_tx_unmap(%struct.macb*, %struct.macb_tx_skb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
