; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_bd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_dma_bd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.axienet_local = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_COALESCE_MASK = common dso_local global i32 0, align 4
@XAXIDMA_COALESCE_SHIFT = common dso_local global i32 0, align 4
@XAXIDMA_DELAY_MASK = common dso_local global i32 0, align 4
@XAXIDMA_DFT_RX_WAITBOUND = common dso_local global i32 0, align 4
@XAXIDMA_DELAY_SHIFT = common dso_local global i32 0, align 4
@XAXIDMA_IRQ_ALL_MASK = common dso_local global i32 0, align 4
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_DFT_TX_WAITBOUND = common dso_local global i32 0, align 4
@XAXIDMA_RX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_CR_RUNSTOP_MASK = common dso_local global i32 0, align 4
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_CDESC_OFFSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @axienet_dma_bd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_dma_bd_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %8)
  store %struct.axienet_local* %9, %struct.axienet_local** %7, align 8
  %10 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %11 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %13 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %15 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %21 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %27 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %26, i32 0, i32 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @dma_alloc_coherent(i32 %19, i32 %25, i32* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_4__*
  %31 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %32 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %31, i32 0, i32 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %34 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %273

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %44 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 24, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %50 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %49, i32 0, i32 3
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @dma_alloc_coherent(i32 %42, i32 %48, i32* %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  %54 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %55 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %54, i32 0, i32 7
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %57 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %56, i32 0, i32 7
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %38
  br label %273

61:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %65 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %70 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %76 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = srem i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = add i64 %72, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %84 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %83, i32 0, i32 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 4
  br label %90

90:                                               ; preds = %68
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %62

93:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %168, %93
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %97 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %171

100:                                              ; preds = %94
  %101 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %102 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %108 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = mul i64 24, %111
  %113 = add i64 %104, %112
  %114 = trunc i64 %113 to i32
  %115 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %116 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %115, i32 0, i32 7
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %124 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %122, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %6, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %100
  br label %273

130:                                              ; preds = %100
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %133 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %132, i32 0, i32 7
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store %struct.sk_buff* %131, %struct.sk_buff** %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %147 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i32 @dma_map_single(i32 %142, i32 %145, i32 %148, i32 %149)
  %151 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %152 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %151, i32 0, i32 7
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i32 %150, i32* %157, align 8
  %158 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %159 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %162 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %161, i32 0, i32 7
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %130
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %94

171:                                              ; preds = %94
  %172 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %173 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %174 = call i32 @axienet_dma_in32(%struct.axienet_local* %172, i32 %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @XAXIDMA_COALESCE_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %175, %177
  %179 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %180 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @XAXIDMA_COALESCE_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = or i32 %178, %183
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @XAXIDMA_DELAY_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = and i32 %185, %187
  %189 = load i32, i32* @XAXIDMA_DFT_RX_WAITBOUND, align 4
  %190 = load i32, i32* @XAXIDMA_DELAY_SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = or i32 %188, %191
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %194 = load i32, i32* %4, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %4, align 4
  %196 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %197 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @axienet_dma_out32(%struct.axienet_local* %196, i32 %197, i32 %198)
  %200 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %201 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %202 = call i32 @axienet_dma_in32(%struct.axienet_local* %200, i32 %201)
  store i32 %202, i32* %4, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @XAXIDMA_COALESCE_MASK, align 4
  %205 = xor i32 %204, -1
  %206 = and i32 %203, %205
  %207 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %208 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @XAXIDMA_COALESCE_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = or i32 %206, %211
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @XAXIDMA_DELAY_MASK, align 4
  %215 = xor i32 %214, -1
  %216 = and i32 %213, %215
  %217 = load i32, i32* @XAXIDMA_DFT_TX_WAITBOUND, align 4
  %218 = load i32, i32* @XAXIDMA_DELAY_SHIFT, align 4
  %219 = shl i32 %217, %218
  %220 = or i32 %216, %219
  store i32 %220, i32* %4, align 4
  %221 = load i32, i32* @XAXIDMA_IRQ_ALL_MASK, align 4
  %222 = load i32, i32* %4, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %4, align 4
  %224 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %225 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @axienet_dma_out32(%struct.axienet_local* %224, i32 %225, i32 %226)
  %228 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %229 = load i32, i32* @XAXIDMA_RX_CDESC_OFFSET, align 4
  %230 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %231 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @axienet_dma_out32(%struct.axienet_local* %228, i32 %229, i32 %232)
  %234 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %235 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %236 = call i32 @axienet_dma_in32(%struct.axienet_local* %234, i32 %235)
  store i32 %236, i32* %4, align 4
  %237 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %238 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @axienet_dma_out32(%struct.axienet_local* %237, i32 %238, i32 %241)
  %243 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %244 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %245 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %246 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %250 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = mul i64 24, %253
  %255 = add i64 %248, %254
  %256 = trunc i64 %255 to i32
  %257 = call i32 @axienet_dma_out32(%struct.axienet_local* %243, i32 %244, i32 %256)
  %258 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %259 = load i32, i32* @XAXIDMA_TX_CDESC_OFFSET, align 4
  %260 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %261 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @axienet_dma_out32(%struct.axienet_local* %258, i32 %259, i32 %262)
  %264 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %265 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %266 = call i32 @axienet_dma_in32(%struct.axienet_local* %264, i32 %265)
  store i32 %266, i32* %4, align 4
  %267 = load %struct.axienet_local*, %struct.axienet_local** %7, align 8
  %268 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* @XAXIDMA_CR_RUNSTOP_MASK, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @axienet_dma_out32(%struct.axienet_local* %267, i32 %268, i32 %271)
  store i32 0, i32* %2, align 4
  br label %278

273:                                              ; preds = %129, %60, %37
  %274 = load %struct.net_device*, %struct.net_device** %3, align 8
  %275 = call i32 @axienet_dma_bd_release(%struct.net_device* %274)
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %273, %171
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @axienet_dma_in32(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_dma_out32(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @axienet_dma_bd_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
