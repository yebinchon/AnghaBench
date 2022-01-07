; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.b44 = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i64, %struct.sk_buff* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DESC_CTRL_LEN = common dso_local global i64 0, align 8
@DESC_CTRL_IOC = common dso_local global i64 0, align 8
@DESC_CTRL_SOF = common dso_local global i64 0, align 8
@DESC_CTRL_EOF = common dso_local global i64 0, align 8
@B44_TX_RING_SIZE = common dso_local global i32 0, align 4
@DESC_CTRL_EOT = common dso_local global i64 0, align 8
@B44_FLAG_TX_RING_HACK = common dso_local global i32 0, align 4
@B44_DMATX_PTR = common dso_local global i32 0, align 4
@B44_FLAG_BUGGY_TXPTR = common dso_local global i32 0, align 4
@B44_FLAG_REORDER_BUG = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @b44_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.b44* @netdev_priv(%struct.net_device* %13)
  store %struct.b44* %14, %struct.b44** %5, align 8
  %15 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.b44*, %struct.b44** %5, align 8
  %20 = getelementptr inbounds %struct.b44, %struct.b44* %19, i32 0, i32 2
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.b44*, %struct.b44** %5, align 8
  %24 = call i32 @TX_BUFFS_AVAIL(%struct.b44* %23)
  %25 = icmp slt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @netif_stop_queue(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %276

34:                                               ; preds = %2
  %35 = load %struct.b44*, %struct.b44** %5, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i64 @dma_map_single(i32 %39, i32 %42, i64 %43, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.b44*, %struct.b44** %5, align 8
  %47 = getelementptr inbounds %struct.b44, %struct.b44* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @dma_mapping_error(i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %34
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i64 @DMA_BIT_MASK(i32 30)
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %146

60:                                               ; preds = %54, %34
  %61 = load %struct.b44*, %struct.b44** %5, align 8
  %62 = getelementptr inbounds %struct.b44, %struct.b44* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @dma_mapping_error(i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = load %struct.b44*, %struct.b44** %5, align 8
  %71 = getelementptr inbounds %struct.b44, %struct.b44* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = call i32 @dma_unmap_single(i32 %74, i64 %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %60
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = load i32, i32* @GFP_DMA, align 4
  %83 = or i32 %81, %82
  %84 = call %struct.sk_buff* @alloc_skb(i64 %80, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %276

88:                                               ; preds = %79
  %89 = load %struct.b44*, %struct.b44** %5, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  %99 = call i64 @dma_map_single(i32 %93, i32 %96, i64 %97, i32 %98)
  store i64 %99, i64* %7, align 8
  %100 = load %struct.b44*, %struct.b44** %5, align 8
  %101 = getelementptr inbounds %struct.b44, %struct.b44* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @dma_mapping_error(i32 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %88
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i64 @DMA_BIT_MASK(i32 30)
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108, %88
  %115 = load %struct.b44*, %struct.b44** %5, align 8
  %116 = getelementptr inbounds %struct.b44, %struct.b44* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @dma_mapping_error(i32 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %114
  %124 = load %struct.b44*, %struct.b44** %5, align 8
  %125 = getelementptr inbounds %struct.b44, %struct.b44* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_single(i32 %128, i64 %129, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %123, %114
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  br label %276

136:                                              ; preds = %108
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @skb_put(%struct.sk_buff* %138, i64 %139)
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %137, i32 %140, i64 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call i32 @dev_consume_skb_any(%struct.sk_buff* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %3, align 8
  br label %146

146:                                              ; preds = %136, %54
  %147 = load %struct.b44*, %struct.b44** %5, align 8
  %148 = getelementptr inbounds %struct.b44, %struct.b44* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %9, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = load %struct.b44*, %struct.b44** %5, align 8
  %152 = getelementptr inbounds %struct.b44, %struct.b44* %151, i32 0, i32 7
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store %struct.sk_buff* %150, %struct.sk_buff** %156, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.b44*, %struct.b44** %5, align 8
  %159 = getelementptr inbounds %struct.b44, %struct.b44* %158, i32 0, i32 7
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i64 %157, i64* %163, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* @DESC_CTRL_LEN, align 8
  %166 = and i64 %164, %165
  store i64 %166, i64* %10, align 8
  %167 = load i64, i64* @DESC_CTRL_IOC, align 8
  %168 = load i64, i64* @DESC_CTRL_SOF, align 8
  %169 = or i64 %167, %168
  %170 = load i64, i64* @DESC_CTRL_EOF, align 8
  %171 = or i64 %169, %170
  %172 = load i64, i64* %10, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %10, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i32, i32* @B44_TX_RING_SIZE, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %146
  %180 = load i64, i64* @DESC_CTRL_EOT, align 8
  %181 = load i64, i64* %10, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %10, align 8
  br label %183

183:                                              ; preds = %179, %146
  %184 = load i64, i64* %10, align 8
  %185 = call i8* @cpu_to_le32(i64 %184)
  %186 = load %struct.b44*, %struct.b44** %5, align 8
  %187 = getelementptr inbounds %struct.b44, %struct.b44* %186, i32 0, i32 6
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i8* %185, i8** %191, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.b44*, %struct.b44** %5, align 8
  %194 = getelementptr inbounds %struct.b44, %struct.b44* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %192, %196
  %198 = call i8* @cpu_to_le32(i64 %197)
  %199 = load %struct.b44*, %struct.b44** %5, align 8
  %200 = getelementptr inbounds %struct.b44, %struct.b44* %199, i32 0, i32 6
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i8* %198, i8** %204, align 8
  %205 = load %struct.b44*, %struct.b44** %5, align 8
  %206 = getelementptr inbounds %struct.b44, %struct.b44* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @B44_FLAG_TX_RING_HACK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %183
  %212 = load %struct.b44*, %struct.b44** %5, align 8
  %213 = getelementptr inbounds %struct.b44, %struct.b44* %212, i32 0, i32 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load %struct.b44*, %struct.b44** %5, align 8
  %216 = getelementptr inbounds %struct.b44, %struct.b44* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %9, align 8
  %219 = mul i64 %218, 16
  %220 = load i32, i32* @DMA_TO_DEVICE, align 4
  %221 = call i32 @b44_sync_dma_desc_for_device(%struct.TYPE_6__* %214, i32 %217, i64 %219, i32 %220)
  br label %222

222:                                              ; preds = %211, %183
  %223 = load i64, i64* %9, align 8
  %224 = call i64 @NEXT_TX(i64 %223)
  store i64 %224, i64* %9, align 8
  %225 = load i64, i64* %9, align 8
  %226 = load %struct.b44*, %struct.b44** %5, align 8
  %227 = getelementptr inbounds %struct.b44, %struct.b44* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = call i32 (...) @wmb()
  %229 = load %struct.b44*, %struct.b44** %5, align 8
  %230 = load i32, i32* @B44_DMATX_PTR, align 4
  %231 = load i64, i64* %9, align 8
  %232 = mul i64 %231, 4
  %233 = call i32 @bw32(%struct.b44* %229, i32 %230, i64 %232)
  %234 = load %struct.b44*, %struct.b44** %5, align 8
  %235 = getelementptr inbounds %struct.b44, %struct.b44* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @B44_FLAG_BUGGY_TXPTR, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %222
  %241 = load %struct.b44*, %struct.b44** %5, align 8
  %242 = load i32, i32* @B44_DMATX_PTR, align 4
  %243 = load i64, i64* %9, align 8
  %244 = mul i64 %243, 4
  %245 = call i32 @bw32(%struct.b44* %241, i32 %242, i64 %244)
  br label %246

246:                                              ; preds = %240, %222
  %247 = load %struct.b44*, %struct.b44** %5, align 8
  %248 = getelementptr inbounds %struct.b44, %struct.b44* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @B44_FLAG_REORDER_BUG, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %246
  %254 = load %struct.b44*, %struct.b44** %5, align 8
  %255 = load i32, i32* @B44_DMATX_PTR, align 4
  %256 = call i32 @br32(%struct.b44* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %246
  %258 = load %struct.net_device*, %struct.net_device** %4, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @netdev_sent_queue(%struct.net_device* %258, i64 %261)
  %263 = load %struct.b44*, %struct.b44** %5, align 8
  %264 = call i32 @TX_BUFFS_AVAIL(%struct.b44* %263)
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %269

266:                                              ; preds = %257
  %267 = load %struct.net_device*, %struct.net_device** %4, align 8
  %268 = call i32 @netif_stop_queue(%struct.net_device* %267)
  br label %269

269:                                              ; preds = %266, %257
  br label %270

270:                                              ; preds = %276, %269
  %271 = load %struct.b44*, %struct.b44** %5, align 8
  %272 = getelementptr inbounds %struct.b44, %struct.b44* %271, i32 0, i32 2
  %273 = load i64, i64* %11, align 8
  %274 = call i32 @spin_unlock_irqrestore(i32* %272, i64 %273)
  %275 = load i32, i32* %6, align 4
  ret i32 %275

276:                                              ; preds = %133, %87, %29
  %277 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %277, i32* %6, align 4
  br label %270
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.b44*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @b44_sync_dma_desc_for_device(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i64) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
