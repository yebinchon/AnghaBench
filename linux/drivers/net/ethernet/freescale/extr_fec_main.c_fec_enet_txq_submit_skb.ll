; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_txq_submit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_txq_submit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_priv_tx_q = type { %struct.TYPE_7__, %struct.sk_buff**, i8** }
%struct.TYPE_7__ = type { i32, %struct.bufdesc*, i32 }
%struct.bufdesc = type { i8*, i8*, i8* }
%struct.sk_buff = type { i64, i8* }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i64, i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bufdesc_ex = type { i8*, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NOT enough BD for SG!\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@BD_ENET_TX_STATS = common dso_local global i16 0, align 2
@FEC_QUIRK_SWAP_FRAME = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Tx DMA memory map failed\0A\00", align 1
@BD_ENET_TX_INTR = common dso_local global i16 0, align 2
@BD_ENET_TX_LAST = common dso_local global i16 0, align 2
@BD_ENET_TX_INT = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@BD_ENET_TX_TS = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_AVB = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@BD_ENET_TX_PINS = common dso_local global i32 0, align 4
@BD_ENET_TX_IINS = common dso_local global i32 0, align 4
@BD_ENET_TX_READY = common dso_local global i16 0, align 2
@BD_ENET_TX_TC = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fec_enet_priv_tx_q*, %struct.sk_buff*, %struct.net_device*)* @fec_enet_txq_submit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_txq_submit_skb(%struct.fec_enet_priv_tx_q* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.fec_enet_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bufdesc*, align 8
  %11 = alloca %struct.bufdesc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bufdesc_ex*, align 8
  store %struct.fec_enet_priv_tx_q* %0, %struct.fec_enet_priv_tx_q** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %20)
  store %struct.fec_enet_private* %21, %struct.fec_enet_private** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %27 = call i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %33)
  %35 = call i64 (...) @net_ratelimit()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %327

42:                                               ; preds = %3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call i64 @fec_enet_clear_csum(%struct.sk_buff* %43, %struct.net_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  %50 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %50, i32* %4, align 4
  br label %327

51:                                               ; preds = %42
  %52 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %53 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.bufdesc*, %struct.bufdesc** %54, align 8
  store %struct.bufdesc* %55, %struct.bufdesc** %10, align 8
  %56 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  store %struct.bufdesc* %56, %struct.bufdesc** %11, align 8
  %57 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %58 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call zeroext i16 @fec16_to_cpu(i8* %59)
  store i16 %60, i16* %14, align 2
  %61 = load i16, i16* @BD_ENET_TX_STATS, align 2
  %62 = zext i16 %61 to i32
  %63 = xor i32 %62, -1
  %64 = load i16, i16* %14, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %14, align 2
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %12, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call zeroext i16 @skb_headlen(%struct.sk_buff* %71)
  store i16 %72, i16* %15, align 2
  %73 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %74 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %75 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %74, i32 0, i32 0
  %76 = call i32 @fec_enet_get_bd_index(%struct.bufdesc* %73, %struct.TYPE_7__* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %80 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %78, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %51
  %85 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %86 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FEC_QUIRK_SWAP_FRAME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %84, %51
  %92 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %93 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i16, i16* %15, align 2
  %103 = call i32 @memcpy(i8* %98, i8* %101, i16 zeroext %102)
  %104 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %105 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %104, i32 0, i32 2
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %12, align 8
  %111 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %112 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FEC_QUIRK_SWAP_FRAME, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %91
  %118 = load i8*, i8** %12, align 8
  %119 = load i16, i16* %15, align 2
  %120 = call i32 @swap_buffer(i8* %118, i16 zeroext %119)
  br label %121

121:                                              ; preds = %117, %91
  br label %122

122:                                              ; preds = %121, %84
  %123 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %124 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %12, align 8
  %128 = load i16, i16* %15, align 2
  %129 = load i32, i32* @DMA_TO_DEVICE, align 4
  %130 = call i32 @dma_map_single(i32* %126, i8* %127, i16 zeroext %128, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %132 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %131, i32 0, i32 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %13, align 4
  %136 = call i64 @dma_mapping_error(i32* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %122
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %139)
  %141 = call i64 (...) @net_ratelimit()
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.net_device*, %struct.net_device** %7, align 8
  %145 = call i32 @netdev_err(%struct.net_device* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %327

148:                                              ; preds = %122
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = load %struct.net_device*, %struct.net_device** %7, align 8
  %155 = call %struct.bufdesc* @fec_enet_txq_submit_frag_skb(%struct.fec_enet_priv_tx_q* %152, %struct.sk_buff* %153, %struct.net_device* %154)
  store %struct.bufdesc* %155, %struct.bufdesc** %11, align 8
  %156 = load %struct.bufdesc*, %struct.bufdesc** %11, align 8
  %157 = call i64 @IS_ERR(%struct.bufdesc* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %151
  %160 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %161 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %160, i32 0, i32 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %13, align 4
  %165 = load i16, i16* %15, align 2
  %166 = load i32, i32* @DMA_TO_DEVICE, align 4
  %167 = call i32 @dma_unmap_single(i32* %163, i32 %164, i16 zeroext %165, i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %168)
  %170 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %170, i32* %4, align 4
  br label %327

171:                                              ; preds = %151
  br label %211

172:                                              ; preds = %148
  %173 = load i16, i16* @BD_ENET_TX_INTR, align 2
  %174 = zext i16 %173 to i32
  %175 = load i16, i16* @BD_ENET_TX_LAST, align 2
  %176 = zext i16 %175 to i32
  %177 = or i32 %174, %176
  %178 = load i16, i16* %14, align 2
  %179 = zext i16 %178 to i32
  %180 = or i32 %179, %177
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %14, align 2
  %182 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %183 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %172
  %187 = load i32, i32* @BD_ENET_TX_INT, align 4
  store i32 %187, i32* %16, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %189 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %186
  %196 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %197 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %195, %186
  %201 = phi i1 [ false, %186 ], [ %199, %195 ]
  %202 = zext i1 %201 to i32
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @BD_ENET_TX_TS, align 4
  %207 = load i32, i32* %16, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %16, align 4
  br label %209

209:                                              ; preds = %205, %200
  br label %210

210:                                              ; preds = %209, %172
  br label %211

211:                                              ; preds = %210, %171
  %212 = load i32, i32* %13, align 4
  %213 = call i8* @cpu_to_fec32(i32 %212)
  %214 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %215 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load i16, i16* %15, align 2
  %217 = call i8* @cpu_to_fec16(i16 zeroext %216)
  %218 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %219 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %221 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %285

224:                                              ; preds = %211
  %225 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %226 = bitcast %struct.bufdesc* %225 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %226, %struct.bufdesc_ex** %19, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %227)
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %224
  %235 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %236 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br label %239

239:                                              ; preds = %234, %224
  %240 = phi i1 [ false, %224 ], [ %238, %234 ]
  %241 = zext i1 %240 to i32
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %247 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %246)
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %245
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %244, %239
  %252 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %253 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @FEC_QUIRK_HAS_AVB, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %260 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @FEC_TX_BD_FTYPE(i32 %262)
  %264 = load i32, i32* %16, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %16, align 4
  br label %266

266:                                              ; preds = %258, %251
  %267 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = load i32, i32* @BD_ENET_TX_PINS, align 4
  %274 = load i32, i32* @BD_ENET_TX_IINS, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* %16, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %272, %266
  %279 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %19, align 8
  %280 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %279, i32 0, i32 1
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %16, align 4
  %282 = call i8* @cpu_to_fec32(i32 %281)
  %283 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %19, align 8
  %284 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %278, %211
  %286 = load %struct.bufdesc*, %struct.bufdesc** %11, align 8
  %287 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %288 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %287, i32 0, i32 0
  %289 = call i32 @fec_enet_get_bd_index(%struct.bufdesc* %286, %struct.TYPE_7__* %288)
  store i32 %289, i32* %17, align 4
  %290 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %291 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %292 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %291, i32 0, i32 1
  %293 = load %struct.sk_buff**, %struct.sk_buff*** %292, align 8
  %294 = load i32, i32* %17, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %293, i64 %295
  store %struct.sk_buff* %290, %struct.sk_buff** %296, align 8
  %297 = call i32 (...) @wmb()
  %298 = load i16, i16* @BD_ENET_TX_READY, align 2
  %299 = zext i16 %298 to i32
  %300 = load i16, i16* @BD_ENET_TX_TC, align 2
  %301 = zext i16 %300 to i32
  %302 = or i32 %299, %301
  %303 = load i16, i16* %14, align 2
  %304 = zext i16 %303 to i32
  %305 = or i32 %304, %302
  %306 = trunc i32 %305 to i16
  store i16 %306, i16* %14, align 2
  %307 = load i16, i16* %14, align 2
  %308 = call i8* @cpu_to_fec16(i16 zeroext %307)
  %309 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %310 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  %311 = load %struct.bufdesc*, %struct.bufdesc** %11, align 8
  %312 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %313 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %312, i32 0, i32 0
  %314 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %311, %struct.TYPE_7__* %313)
  store %struct.bufdesc* %314, %struct.bufdesc** %10, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %316 = call i32 @skb_tx_timestamp(%struct.sk_buff* %315)
  %317 = call i32 (...) @wmb()
  %318 = load %struct.bufdesc*, %struct.bufdesc** %10, align 8
  %319 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %320 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  store %struct.bufdesc* %318, %struct.bufdesc** %321, align 8
  %322 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %323 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @writel(i32 0, i32 %325)
  store i32 0, i32* %4, align 4
  br label %327

327:                                              ; preds = %285, %159, %146, %47, %40
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @fec_enet_clear_csum(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local zeroext i16 @fec16_to_cpu(i8*) #1

declare dso_local zeroext i16 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @fec_enet_get_bd_index(%struct.bufdesc*, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @swap_buffer(i8*, i16 zeroext) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i16 zeroext, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local %struct.bufdesc* @fec_enet_txq_submit_frag_skb(%struct.fec_enet_priv_tx_q*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.bufdesc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i16 zeroext, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @cpu_to_fec32(i32) #1

declare dso_local i8* @cpu_to_fec16(i16 zeroext) #1

declare dso_local i32 @FEC_TX_BD_FTYPE(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_7__*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
