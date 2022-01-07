; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.bnad = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i64, i64, i64*, i64, i32, i64, i32, %struct.bnad_tx_unmap* }
%struct.bnad_tx_unmap = type { i64, i32*, %struct.sk_buff* }
%struct.bna_txq_entry = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i32* }

@ETH_HLEN = common dso_local global i64 0, align 8
@tx_skb_too_short = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@BFI_TX_MAX_DATA_PER_VECTOR = common dso_local global i64 0, align 8
@tx_skb_headlen_zero = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@tx_skb_stopping = common dso_local global i32 0, align 4
@BFI_TX_MAX_VECTORS_PER_PKT = common dso_local global i64 0, align 8
@tx_skb_max_vectors = common dso_local global i32 0, align 4
@BNAD_TXQ_FREE_SENT = common dso_local global i32 0, align 4
@netif_queue_stop = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@netif_queue_wakeup = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@tx_skb_map_failed = common dso_local global i32 0, align 4
@tx_skb_frag_zero = common dso_local global i32 0, align 4
@BFI_TX_MAX_VECTORS_PER_WI = common dso_local global i64 0, align 8
@BNA_TXQ_WI_EXTENSION = common dso_local global i64 0, align 8
@dma_len = common dso_local global i32 0, align 4
@tx_skb_len_mismatch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bnad_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bna_tcb*, align 8
  %9 = alloca %struct.bnad_tx_unmap*, align 8
  %10 = alloca %struct.bnad_tx_unmap*, align 8
  %11 = alloca %struct.bnad_tx_unmap*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bna_txq_entry*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.bnad* @netdev_priv(%struct.net_device* %24)
  store %struct.bnad* %25, %struct.bnad** %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.bna_tcb* null, %struct.bna_tcb** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff* %26)
  store i64 %27, i64* %17, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_HLEN, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %37)
  %39 = load %struct.bnad*, %struct.bnad** %6, align 8
  %40 = load i32, i32* @tx_skb_too_short, align 4
  %41 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %39, i32 %40)
  %42 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %472

43:                                               ; preds = %2
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* @BFI_TX_MAX_DATA_PER_VECTOR, align 8
  %46 = icmp sgt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %51)
  %53 = load %struct.bnad*, %struct.bnad** %6, align 8
  %54 = load i32, i32* @tx_skb_headlen_zero, align 4
  %55 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %53, i32 %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %472

57:                                               ; preds = %43
  %58 = load i64, i64* %17, align 8
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %64)
  %66 = load %struct.bnad*, %struct.bnad** %6, align 8
  %67 = load i32, i32* @tx_skb_headlen_zero, align 4
  %68 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %66, i32 %67)
  %69 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %472

70:                                               ; preds = %57
  %71 = load %struct.bnad*, %struct.bnad** %6, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.bna_tcb**, %struct.bna_tcb*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %76, i64 %77
  %79 = load %struct.bna_tcb*, %struct.bna_tcb** %78, align 8
  store %struct.bna_tcb* %79, %struct.bna_tcb** %8, align 8
  %80 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %81 = icmp ne %struct.bna_tcb* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %84 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %85 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %84, i32 0, i32 4
  %86 = call i32 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %82, %70
  %90 = phi i1 [ true, %70 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load %struct.bnad*, %struct.bnad** %6, align 8
  %98 = load i32, i32* @tx_skb_stopping, align 4
  %99 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %97, i32 %98)
  %100 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %100, i32* %3, align 4
  br label %472

101:                                              ; preds = %89
  %102 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %103 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %13, align 8
  %105 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %106 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %12, align 8
  %108 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %109 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %108, i32 0, i32 7
  %110 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %109, align 8
  store %struct.bnad_tx_unmap* %110, %struct.bnad_tx_unmap** %9, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 1, %114
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i64 @BNA_TXQ_WI_NEEDED(i64 %116)
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* @BFI_TX_MAX_VECTORS_PER_PKT, align 8
  %120 = icmp sgt i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %101
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %125)
  %127 = load %struct.bnad*, %struct.bnad** %6, align 8
  %128 = load i32, i32* @tx_skb_max_vectors, align 4
  %129 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %127, i32 %128)
  %130 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %472

131:                                              ; preds = %101
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @BNA_QE_FREE_CNT(%struct.bna_tcb* %133, i64 %134)
  %136 = icmp sgt i64 %132, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %205

140:                                              ; preds = %131
  %141 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %142 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %146 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %140
  %150 = load i32, i32* @BNAD_TXQ_FREE_SENT, align 4
  %151 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %152 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %151, i32 0, i32 4
  %153 = call i32 @test_and_set_bit(i32 %150, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %177, label %155

155:                                              ; preds = %149
  %156 = load %struct.bnad*, %struct.bnad** %6, align 8
  %157 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %158 = call i64 @bnad_txcmpl_process(%struct.bnad* %156, %struct.bna_tcb* %157)
  store i64 %158, i64* %21, align 8
  %159 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %160 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %161 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %160, i32 0, i32 4
  %162 = call i32 @test_bit(i32 %159, i32* %161)
  %163 = call i64 @likely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %167 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %21, align 8
  %170 = call i32 @bna_ib_ack(i32 %168, i64 %169)
  br label %171

171:                                              ; preds = %165, %155
  %172 = call i32 (...) @smp_mb__before_atomic()
  %173 = load i32, i32* @BNAD_TXQ_FREE_SENT, align 4
  %174 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %175 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %174, i32 0, i32 4
  %176 = call i32 @clear_bit(i32 %173, i32* %175)
  br label %183

177:                                              ; preds = %149, %140
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = call i32 @netif_stop_queue(%struct.net_device* %178)
  %180 = load %struct.bnad*, %struct.bnad** %6, align 8
  %181 = load i32, i32* @netif_queue_stop, align 4
  %182 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %171
  %184 = call i32 (...) @smp_mb()
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i64 @BNA_QE_FREE_CNT(%struct.bna_tcb* %186, i64 %187)
  %189 = icmp sgt i64 %185, %188
  %190 = zext i1 %189 to i32
  %191 = call i64 @likely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load %struct.bnad*, %struct.bnad** %6, align 8
  %195 = load i32, i32* @netif_queue_stop, align 4
  %196 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %194, i32 %195)
  %197 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %197, i32* %3, align 4
  br label %472

198:                                              ; preds = %183
  %199 = load %struct.net_device*, %struct.net_device** %5, align 8
  %200 = call i32 @netif_wake_queue(%struct.net_device* %199)
  %201 = load %struct.bnad*, %struct.bnad** %6, align 8
  %202 = load i32, i32* @netif_queue_wakeup, align 4
  %203 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %201, i32 %202)
  br label %204

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %131
  %206 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %207 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to %struct.bna_txq_entry*
  %210 = load i64, i64* %12, align 8
  %211 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %209, i64 %210
  store %struct.bna_txq_entry* %211, %struct.bna_txq_entry** %20, align 8
  %212 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %213 = load i64, i64* %12, align 8
  %214 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %212, i64 %213
  store %struct.bnad_tx_unmap* %214, %struct.bnad_tx_unmap** %11, align 8
  %215 = load %struct.bnad*, %struct.bnad** %6, align 8
  %216 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %219 = call i64 @bnad_txq_wi_prepare(%struct.bnad* %215, %struct.bna_tcb* %216, %struct.sk_buff* %217, %struct.bna_txq_entry* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %205
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %222)
  %224 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %224, i32* %3, align 4
  br label %472

225:                                              ; preds = %205
  %226 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %227 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load i64, i64* %16, align 8
  %231 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %232 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i64 %230, i64* %234, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %236 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %237 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %236, i32 0, i32 2
  store %struct.sk_buff* %235, %struct.sk_buff** %237, align 8
  %238 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %239 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  store %struct.bnad_tx_unmap* %240, %struct.bnad_tx_unmap** %10, align 8
  %241 = load %struct.bnad*, %struct.bnad** %6, align 8
  %242 = getelementptr inbounds %struct.bnad, %struct.bnad* %241, i32 0, i32 0
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i64, i64* %17, align 8
  %249 = load i32, i32* @DMA_TO_DEVICE, align 4
  %250 = call i32 @dma_map_single(i32* %244, i32 %247, i64 %248, i32 %249)
  store i32 %250, i32* %19, align 4
  %251 = load %struct.bnad*, %struct.bnad** %6, align 8
  %252 = getelementptr inbounds %struct.bnad, %struct.bnad* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %19, align 4
  %256 = call i64 @dma_mapping_error(i32* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %225
  %259 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %260 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %259)
  %261 = load %struct.bnad*, %struct.bnad** %6, align 8
  %262 = load i32, i32* @tx_skb_map_failed, align 4
  %263 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %261, i32 %262)
  %264 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %264, i32* %3, align 4
  br label %472

265:                                              ; preds = %225
  %266 = load i32, i32* %19, align 4
  %267 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %268 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %267, i32 0, i32 0
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = call i32 @BNA_SET_DMA_ADDR(i32 %266, i32* %271)
  %273 = load i64, i64* %17, align 8
  %274 = call i8* @htons(i64 %273)
  %275 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %276 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %275, i32 0, i32 0
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  store i8* %274, i8** %279, align 8
  %280 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %10, align 8
  %281 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* %19, align 4
  %286 = call i32 @dma_unmap_addr_set(i32* %283, i32 %284, i32 %285)
  %287 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %288 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %288, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %14, align 8
  br label %291

291:                                              ; preds = %421, %265
  %292 = load i32, i32* %18, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %16, align 8
  %295 = sub nsw i64 %294, 1
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %297, label %424

297:                                              ; preds = %291
  %298 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %299 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %298)
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32* %304, i32** %22, align 8
  %305 = load i32*, i32** %22, align 8
  %306 = call i64 @skb_frag_size(i32* %305)
  store i64 %306, i64* %23, align 8
  %307 = load i64, i64* %23, align 8
  %308 = icmp eq i64 %307, 0
  %309 = zext i1 %308 to i32
  %310 = call i64 @unlikely(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %297
  %313 = load %struct.bnad*, %struct.bnad** %6, align 8
  %314 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %315 = load i64, i64* %13, align 8
  %316 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %317 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %313, %struct.bnad_tx_unmap* %314, i64 %315, i64 %318)
  %320 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %321 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %320)
  %322 = load %struct.bnad*, %struct.bnad** %6, align 8
  %323 = load i32, i32* @tx_skb_frag_zero, align 4
  %324 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %322, i32 %323)
  %325 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %325, i32* %3, align 4
  br label %472

326:                                              ; preds = %297
  %327 = load i64, i64* %23, align 8
  %328 = load i64, i64* %17, align 8
  %329 = add nsw i64 %328, %327
  store i64 %329, i64* %17, align 8
  %330 = load i64, i64* %14, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %14, align 8
  %332 = load i64, i64* %14, align 8
  %333 = load i64, i64* @BFI_TX_MAX_VECTORS_PER_WI, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %326
  store i64 0, i64* %14, align 8
  %336 = load i64, i64* %12, align 8
  %337 = load i64, i64* %13, align 8
  %338 = call i32 @BNA_QE_INDX_INC(i64 %336, i64 %337)
  %339 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %340 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %339, i32 0, i32 5
  %341 = load i64, i64* %340, align 8
  %342 = inttoptr i64 %341 to %struct.bna_txq_entry*
  %343 = load i64, i64* %12, align 8
  %344 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %342, i64 %343
  store %struct.bna_txq_entry* %344, %struct.bna_txq_entry** %20, align 8
  %345 = load i64, i64* @BNA_TXQ_WI_EXTENSION, align 8
  %346 = call i8* @htons(i64 %345)
  %347 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %348 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  store i8* %346, i8** %350, align 8
  %351 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %352 = load i64, i64* %12, align 8
  %353 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %351, i64 %352
  store %struct.bnad_tx_unmap* %353, %struct.bnad_tx_unmap** %10, align 8
  br label %354

354:                                              ; preds = %335, %326
  %355 = load %struct.bnad*, %struct.bnad** %6, align 8
  %356 = getelementptr inbounds %struct.bnad, %struct.bnad* %355, i32 0, i32 0
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load i32*, i32** %22, align 8
  %360 = load i64, i64* %23, align 8
  %361 = load i32, i32* @DMA_TO_DEVICE, align 4
  %362 = call i32 @skb_frag_dma_map(i32* %358, i32* %359, i32 0, i64 %360, i32 %361)
  store i32 %362, i32* %19, align 4
  %363 = load %struct.bnad*, %struct.bnad** %6, align 8
  %364 = getelementptr inbounds %struct.bnad, %struct.bnad* %363, i32 0, i32 0
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i32, i32* %19, align 4
  %368 = call i64 @dma_mapping_error(i32* %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %384

370:                                              ; preds = %354
  %371 = load %struct.bnad*, %struct.bnad** %6, align 8
  %372 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %373 = load i64, i64* %13, align 8
  %374 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %375 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %371, %struct.bnad_tx_unmap* %372, i64 %373, i64 %376)
  %378 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %379 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %378)
  %380 = load %struct.bnad*, %struct.bnad** %6, align 8
  %381 = load i32, i32* @tx_skb_map_failed, align 4
  %382 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %380, i32 %381)
  %383 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %383, i32* %3, align 4
  br label %472

384:                                              ; preds = %354
  %385 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %10, align 8
  %386 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* %14, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  %390 = load i32, i32* @dma_len, align 4
  %391 = load i64, i64* %23, align 8
  %392 = call i32 @dma_unmap_len_set(i32* %389, i32 %390, i64 %391)
  %393 = load i32, i32* %19, align 4
  %394 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %395 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %394, i32 0, i32 0
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %395, align 8
  %397 = load i64, i64* %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 1
  %400 = call i32 @BNA_SET_DMA_ADDR(i32 %393, i32* %399)
  %401 = load i64, i64* %23, align 8
  %402 = call i8* @htons(i64 %401)
  %403 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %404 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %403, i32 0, i32 0
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %404, align 8
  %406 = load i64, i64* %14, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 0
  store i8* %402, i8** %408, align 8
  %409 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %10, align 8
  %410 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = load i64, i64* %14, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  %414 = load i32, i32* %19, align 4
  %415 = load i32, i32* %19, align 4
  %416 = call i32 @dma_unmap_addr_set(i32* %413, i32 %414, i32 %415)
  %417 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %418 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %419, 1
  store i64 %420, i64* %418, align 8
  br label %421

421:                                              ; preds = %384
  %422 = load i32, i32* %18, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %18, align 4
  br label %291

424:                                              ; preds = %291
  %425 = load i64, i64* %17, align 8
  %426 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %427 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %425, %428
  %430 = zext i1 %429 to i32
  %431 = call i64 @unlikely(i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %447

433:                                              ; preds = %424
  %434 = load %struct.bnad*, %struct.bnad** %6, align 8
  %435 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %436 = load i64, i64* %13, align 8
  %437 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %438 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %434, %struct.bnad_tx_unmap* %435, i64 %436, i64 %439)
  %441 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %442 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %441)
  %443 = load %struct.bnad*, %struct.bnad** %6, align 8
  %444 = load i32, i32* @tx_skb_len_mismatch, align 4
  %445 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %443, i32 %444)
  %446 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %446, i32* %3, align 4
  br label %472

447:                                              ; preds = %424
  %448 = load i64, i64* %12, align 8
  %449 = load i64, i64* %13, align 8
  %450 = call i32 @BNA_QE_INDX_INC(i64 %448, i64 %449)
  %451 = load i64, i64* %12, align 8
  %452 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %453 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %452, i32 0, i32 1
  store i64 %451, i64* %453, align 8
  %454 = call i32 (...) @wmb()
  %455 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %456 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %457 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %456, i32 0, i32 4
  %458 = call i32 @test_bit(i32 %455, i32* %457)
  %459 = icmp ne i32 %458, 0
  %460 = xor i1 %459, true
  %461 = zext i1 %460 to i32
  %462 = call i64 @unlikely(i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %447
  %465 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %465, i32* %3, align 4
  br label %472

466:                                              ; preds = %447
  %467 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %468 = call i32 @skb_tx_timestamp(%struct.sk_buff* %467)
  %469 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %470 = call i32 @bna_txq_prod_indx_doorbell(%struct.bna_tcb* %469)
  %471 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %471, i32* %3, align 4
  br label %472

472:                                              ; preds = %466, %464, %433, %370, %312, %258, %221, %193, %124, %94, %63, %50, %36
  %473 = load i32, i32* %3, align 4
  ret i32 %473
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @BNA_TXQ_WI_NEEDED(i64) #1

declare dso_local i64 @BNA_QE_FREE_CNT(%struct.bna_tcb*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @bnad_txcmpl_process(%struct.bnad*, %struct.bna_tcb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bna_ib_ack(i32, i64) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @bnad_txq_wi_prepare(%struct.bnad*, %struct.bna_tcb*, %struct.sk_buff*, %struct.bna_txq_entry*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, i32*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @dma_unmap_addr_set(i32*, i32, i32) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @bnad_tx_buff_unmap(%struct.bnad*, %struct.bnad_tx_unmap*, i64, i64) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i64) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_len_set(i32*, i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @bna_txq_prod_indx_doorbell(%struct.bna_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
