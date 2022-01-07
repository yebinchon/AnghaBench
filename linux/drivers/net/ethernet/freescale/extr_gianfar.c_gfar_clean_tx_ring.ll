; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_tx_q = type { i32, i32, i32, %struct.txbd8*, i64, i32, %struct.sk_buff**, %struct.txbd8*, %struct.net_device* }
%struct.sk_buff = type { i64 }
%struct.txbd8 = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.gfar_private = type { i32, i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@TXBD_READY = common dso_local global i32 0, align 4
@BD_LENGTH_MASK = common dso_local global i32 0, align 4
@GMAC_FCB_LEN = common dso_local global i64 0, align 8
@GMAC_TXPAL_LEN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFAR_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_tx_q*)* @gfar_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_clean_tx_ring(%struct.gfar_priv_tx_q* %0) #0 {
  %2 = alloca %struct.gfar_priv_tx_q*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.txbd8*, align 8
  %7 = alloca %struct.txbd8*, align 8
  %8 = alloca %struct.txbd8*, align 8
  %9 = alloca %struct.txbd8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.skb_shared_hwtstamps, align 4
  %22 = alloca i32*, align 8
  store %struct.gfar_priv_tx_q* %0, %struct.gfar_priv_tx_q** %2, align 8
  %23 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %24 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %23, i32 0, i32 8
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %26)
  store %struct.gfar_private* %27, %struct.gfar_private** %5, align 8
  store %struct.txbd8* null, %struct.txbd8** %7, align 8
  store %struct.txbd8* null, %struct.txbd8** %8, align 8
  %28 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %29 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %28, i32 0, i32 7
  %30 = load %struct.txbd8*, %struct.txbd8** %29, align 8
  store %struct.txbd8* %30, %struct.txbd8** %9, align 8
  %31 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %32 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %35 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %37, i32 %38)
  store %struct.netdev_queue* %39, %struct.netdev_queue** %4, align 8
  %40 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %41 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %40, i32 0, i32 3
  %42 = load %struct.txbd8*, %struct.txbd8** %41, align 8
  store %struct.txbd8* %42, %struct.txbd8** %6, align 8
  %43 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %44 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %199, %1
  %47 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %48 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %47, i32 0, i32 6
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %10, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %55, label %235

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %65 = and i32 %63, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %14, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call %struct.txbd8* @skip_txbd(%struct.txbd8* %75, i32 %77, %struct.txbd8* %78, i32 %79)
  store %struct.txbd8* %80, %struct.txbd8** %8, align 8
  %81 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %82 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @TXBD_READY, align 4
  %87 = call i32 @BD_LFLAG(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %74
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @BD_LENGTH_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %235

96:                                               ; preds = %90, %74
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %102 = and i32 %100, %101
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %107 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call %struct.txbd8* @next_txbd(%struct.txbd8* %106, %struct.txbd8* %107, i32 %108)
  store %struct.txbd8* %109, %struct.txbd8** %7, align 8
  %110 = load %struct.txbd8*, %struct.txbd8** %7, align 8
  %111 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @be16_to_cpu(i32 %112)
  %114 = load i64, i64* @GMAC_FCB_LEN, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* @GMAC_TXPAL_LEN, align 8
  %117 = add i64 %115, %116
  store i64 %117, i64* %20, align 8
  br label %123

118:                                              ; preds = %96
  %119 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %120 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @be16_to_cpu(i32 %121)
  store i64 %122, i64* %20, align 8
  br label %123

123:                                              ; preds = %118, %105
  %124 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %125 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %128 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be32_to_cpu(i32 %129)
  %131 = load i64, i64* %20, align 8
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(i32 %126, i32 %130, i64 %131, i32 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %139 = and i32 %137, %138
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %123
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, 16
  %147 = and i64 %146, -8
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** %22, align 8
  %149 = call i32 @memset(%struct.skb_shared_hwtstamps* %21, i32 0, i32 4)
  %150 = load i32*, i32** %22, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @be64_to_cpu(i32 %151)
  %153 = call i32 @ns_to_ktime(i32 %152)
  %154 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %21, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = load i64, i64* @GMAC_FCB_LEN, align 8
  %157 = load i64, i64* @GMAC_TXPAL_LEN, align 8
  %158 = add i64 %156, %157
  %159 = call i32 @skb_pull(%struct.sk_buff* %155, i64 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = call i32 @skb_tstamp_tx(%struct.sk_buff* %160, %struct.skb_shared_hwtstamps* %21)
  %162 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %163 = call i32 @gfar_clear_txbd_status(%struct.txbd8* %162)
  %164 = load %struct.txbd8*, %struct.txbd8** %7, align 8
  store %struct.txbd8* %164, %struct.txbd8** %6, align 8
  br label %165

165:                                              ; preds = %142, %123
  %166 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %167 = call i32 @gfar_clear_txbd_status(%struct.txbd8* %166)
  %168 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %169 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call %struct.txbd8* @next_txbd(%struct.txbd8* %168, %struct.txbd8* %169, i32 %170)
  store %struct.txbd8* %171, %struct.txbd8** %6, align 8
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %196, %165
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %178 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %181 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @be32_to_cpu(i32 %182)
  %184 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %185 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @be16_to_cpu(i32 %186)
  %188 = load i32, i32* @DMA_TO_DEVICE, align 4
  %189 = call i32 @dma_unmap_page(i32 %179, i32 %183, i64 %187, i32 %188)
  %190 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %191 = call i32 @gfar_clear_txbd_status(%struct.txbd8* %190)
  %192 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %193 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call %struct.txbd8* @next_txbd(%struct.txbd8* %192, %struct.txbd8* %193, i32 %194)
  store %struct.txbd8* %195, %struct.txbd8** %6, align 8
  br label %196

196:                                              ; preds = %176
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %172

199:                                              ; preds = %172
  %200 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %201 = call %struct.TYPE_4__* @GFAR_CB(%struct.sk_buff* %200)
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %18, align 4
  %205 = zext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %18, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %209 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %208)
  %210 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %211 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %210, i32 0, i32 6
  %212 = load %struct.sk_buff**, %struct.sk_buff*** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %212, i64 %214
  store %struct.sk_buff* null, %struct.sk_buff** %215, align 8
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @TX_RING_MOD_MASK(i32 %218)
  %220 = and i32 %217, %219
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  %223 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %224 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %223, i32 0, i32 5
  %225 = call i32 @spin_lock(i32* %224)
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %229 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, %227
  store i64 %231, i64* %229, align 8
  %232 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %233 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %232, i32 0, i32 5
  %234 = call i32 @spin_unlock(i32* %233)
  br label %46

235:                                              ; preds = %95, %46
  %236 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %237 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %235
  %241 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %242 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load i32, i32* @GFAR_DOWN, align 4
  %246 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %247 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %246, i32 0, i32 1
  %248 = call i32 @test_bit(i32 %245, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %252 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @netif_wake_subqueue(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %250, %244, %240, %235
  %257 = load i32, i32* %11, align 4
  %258 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %259 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.txbd8*, %struct.txbd8** %6, align 8
  %261 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %262 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %261, i32 0, i32 3
  store %struct.txbd8* %260, %struct.txbd8** %262, align 8
  %263 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %18, align 4
  %266 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %263, i32 %264, i32 %265)
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.txbd8* @skip_txbd(%struct.txbd8*, i32, %struct.txbd8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local %struct.txbd8* @next_txbd(%struct.txbd8*, %struct.txbd8*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @gfar_clear_txbd_status(%struct.txbd8*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @GFAR_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @TX_RING_MOD_MASK(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
