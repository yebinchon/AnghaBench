; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_txq_submit_frag_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_txq_submit_frag_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdesc = type { i8*, i8*, i8* }
%struct.fec_enet_priv_tx_q = type { %struct.TYPE_7__, i8** }
%struct.TYPE_7__ = type { %struct.bufdesc*, i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.bufdesc_ex = type { i8*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32* }

@BD_ENET_TX_STATS = common dso_local global i16 0, align 2
@BD_ENET_TX_TC = common dso_local global i16 0, align 2
@BD_ENET_TX_READY = common dso_local global i16 0, align 2
@BD_ENET_TX_INTR = common dso_local global i16 0, align 2
@BD_ENET_TX_LAST = common dso_local global i16 0, align 2
@BD_ENET_TX_INT = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@BD_ENET_TX_TS = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_AVB = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@BD_ENET_TX_PINS = common dso_local global i32 0, align 4
@BD_ENET_TX_IINS = common dso_local global i32 0, align 4
@FEC_QUIRK_SWAP_FRAME = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Tx DMA memory map failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufdesc* (%struct.fec_enet_priv_tx_q*, %struct.sk_buff*, %struct.net_device*)* @fec_enet_txq_submit_frag_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufdesc* @fec_enet_txq_submit_frag_skb(%struct.fec_enet_priv_tx_q* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.bufdesc*, align 8
  %5 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.fec_enet_private*, align 8
  %9 = alloca %struct.bufdesc*, align 8
  %10 = alloca %struct.bufdesc_ex*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fec_enet_priv_tx_q* %0, %struct.fec_enet_priv_tx_q** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %21)
  store %struct.fec_enet_private* %22, %struct.fec_enet_private** %8, align 8
  %23 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.bufdesc*, %struct.bufdesc** %25, align 8
  store %struct.bufdesc* %26, %struct.bufdesc** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %249, %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %252

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %16, align 8
  %43 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %44 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %45 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %44, i32 0, i32 0
  %46 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %43, %struct.TYPE_7__* %45)
  store %struct.bufdesc* %46, %struct.bufdesc** %9, align 8
  %47 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %48 = bitcast %struct.bufdesc* %47 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %48, %struct.bufdesc_ex** %10, align 8
  %49 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %50 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call zeroext i16 @fec16_to_cpu(i8* %51)
  store i16 %52, i16* %14, align 2
  %53 = load i16, i16* @BD_ENET_TX_STATS, align 2
  %54 = zext i16 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i16, i16* %14, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %14, align 2
  %60 = load i16, i16* @BD_ENET_TX_TC, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @BD_ENET_TX_READY, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %61, %63
  %65 = load i16, i16* %14, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %14, align 2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @skb_frag_size(i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %35
  %82 = load i16, i16* @BD_ENET_TX_INTR, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @BD_ENET_TX_LAST, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %83, %85
  %87 = load i16, i16* %14, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %14, align 2
  %91 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %92 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %81
  %96 = load i32, i32* @BD_ENET_TX_INT, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %108 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %106, %95
  %112 = phi i1 [ false, %95 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @BD_ENET_TX_TS, align 4
  %118 = load i32, i32* %15, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %116, %111
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %35
  %123 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %124 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %122
  %128 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %129 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FEC_QUIRK_HAS_AVB, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %136 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @FEC_TX_BD_FTYPE(i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* @BD_ENET_TX_PINS, align 4
  %150 = load i32, i32* @BD_ENET_TX_IINS, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %15, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %148, %142
  %155 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %10, align 8
  %156 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i8* @cpu_to_fec32(i32 %157)
  %159 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %10, align 8
  %160 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %154, %122
  %162 = load i32*, i32** %16, align 8
  %163 = call i8* @skb_frag_address(i32* %162)
  store i8* %163, i8** %18, align 8
  %164 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %165 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %166 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %165, i32 0, i32 0
  %167 = call i32 @fec_enet_get_bd_index(%struct.bufdesc* %164, %struct.TYPE_7__* %166)
  store i32 %167, i32* %17, align 4
  %168 = load i8*, i8** %18, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %171 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = and i64 %169, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %161
  %176 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %177 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FEC_QUIRK_SWAP_FRAME, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %175, %161
  %183 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %184 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %183, i32 0, i32 1
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @memcpy(i8* %189, i8* %190, i32 %191)
  %193 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %194 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %193, i32 0, i32 1
  %195 = load i8**, i8*** %194, align 8
  %196 = load i32, i32* %17, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %18, align 8
  %200 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %201 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @FEC_QUIRK_SWAP_FRAME, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %182
  %207 = load i8*, i8** %18, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @swap_buffer(i8* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %182
  br label %211

211:                                              ; preds = %210, %175
  %212 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %213 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %212, i32 0, i32 2
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i8*, i8** %18, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* @DMA_TO_DEVICE, align 4
  %219 = call i32 @dma_map_single(i32* %215, i8* %216, i32 %217, i32 %218)
  store i32 %219, i32* %19, align 4
  %220 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %221 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %19, align 4
  %225 = call i64 @dma_mapping_error(i32* %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %211
  %228 = call i64 (...) @net_ratelimit()
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load %struct.net_device*, %struct.net_device** %7, align 8
  %232 = call i32 @netdev_err(%struct.net_device* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %227
  br label %254

234:                                              ; preds = %211
  %235 = load i32, i32* %19, align 4
  %236 = call i8* @cpu_to_fec32(i32 %235)
  %237 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %238 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* %13, align 4
  %240 = trunc i32 %239 to i16
  %241 = call i8* @cpu_to_fec16(i16 zeroext %240)
  %242 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %243 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = call i32 (...) @wmb()
  %245 = load i16, i16* %14, align 2
  %246 = call i8* @cpu_to_fec16(i16 zeroext %245)
  %247 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %248 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %31

252:                                              ; preds = %31
  %253 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  store %struct.bufdesc* %253, %struct.bufdesc** %4, align 8
  br label %289

254:                                              ; preds = %233
  %255 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %256 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load %struct.bufdesc*, %struct.bufdesc** %257, align 8
  store %struct.bufdesc* %258, %struct.bufdesc** %9, align 8
  store i32 0, i32* %20, align 4
  br label %259

259:                                              ; preds = %282, %254
  %260 = load i32, i32* %20, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %285

263:                                              ; preds = %259
  %264 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %265 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %5, align 8
  %266 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %265, i32 0, i32 0
  %267 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %264, %struct.TYPE_7__* %266)
  store %struct.bufdesc* %267, %struct.bufdesc** %9, align 8
  %268 = load %struct.fec_enet_private*, %struct.fec_enet_private** %8, align 8
  %269 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %268, i32 0, i32 2
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %273 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @fec32_to_cpu(i8* %274)
  %276 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %277 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = call zeroext i16 @fec16_to_cpu(i8* %278)
  %280 = load i32, i32* @DMA_TO_DEVICE, align 4
  %281 = call i32 @dma_unmap_single(i32* %271, i32 %275, i16 zeroext %279, i32 %280)
  br label %282

282:                                              ; preds = %263
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %20, align 4
  br label %259

285:                                              ; preds = %259
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = sub nsw i32 0, %286
  %288 = call %struct.bufdesc* @ERR_PTR(i32 %287)
  store %struct.bufdesc* %288, %struct.bufdesc** %4, align 8
  br label %289

289:                                              ; preds = %285, %252
  %290 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  ret %struct.bufdesc* %290
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_7__*) #1

declare dso_local zeroext i16 @fec16_to_cpu(i8*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @FEC_TX_BD_FTYPE(i32) #1

declare dso_local i8* @cpu_to_fec32(i32) #1

declare dso_local i8* @skb_frag_address(i32*) #1

declare dso_local i32 @fec_enet_get_bd_index(%struct.bufdesc*, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @swap_buffer(i8*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @cpu_to_fec16(i16 zeroext) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i16 zeroext, i32) #1

declare dso_local i32 @fec32_to_cpu(i8*) #1

declare dso_local %struct.bufdesc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
