; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_receive_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_receive_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, i32, i32, %struct.sk_buff**, i32, %struct.TYPE_3__*, i32, i32, %struct.bcm_enet_desc* }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMADESC_ESOP_MASK = common dso_local global i32 0, align 4
@DMADESC_ERR_MASK = common dso_local global i32 0, align 4
@DMADESC_OVSIZE_MASK = common dso_local global i32 0, align 4
@DMADESC_CRC_MASK = common dso_local global i32 0, align 4
@DMADESC_UNDER_MASK = common dso_local global i32 0, align 4
@DMADESC_OV_MASK = common dso_local global i32 0, align 4
@DMADESC_LENGTH_MASK = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_enet_receive_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_receive_queue(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_enet_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.bcm_enet_priv* %15, %struct.bcm_enet_priv** %5, align 8
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %17 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %16, i32 0, i32 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %2
  br label %30

30:                                               ; preds = %247, %29
  %31 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %32 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %34, i32 0, i32 11
  %36 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %36, i64 %38
  store %struct.bcm_enet_desc* %39, %struct.bcm_enet_desc** %8, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %42 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %251

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %57 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %60 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %65 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %68 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %73 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %74 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %72, %75
  %77 = and i32 %71, %76
  %78 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %78, %81
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %66
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %247

90:                                               ; preds = %66
  %91 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %92 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %151, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @DMADESC_ERR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %95
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @DMADESC_OVSIZE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %101
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @DMADESC_CRC_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %117
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @DMADESC_UNDER_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %128
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @DMADESC_OV_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %139
  br label %247

151:                                              ; preds = %95, %90
  %152 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %153 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %152, i32 0, i32 6
  %154 = load %struct.sk_buff**, %struct.sk_buff*** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %154, i64 %156
  %158 = load %struct.sk_buff*, %struct.sk_buff** %157, align 8
  store %struct.sk_buff* %158, %struct.sk_buff** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @DMADESC_LENGTH_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sub i32 %164, 4
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @copybreak, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %206

169:                                              ; preds = %151
  %170 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %171 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %170, i32 0, i32 9
  %172 = load i32, i32* %12, align 4
  %173 = call %struct.sk_buff* @napi_alloc_skb(i32* %171, i32 %172)
  store %struct.sk_buff* %173, %struct.sk_buff** %13, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %175 = icmp ne %struct.sk_buff* %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %169
  %177 = load %struct.net_device*, %struct.net_device** %3, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %247

182:                                              ; preds = %169
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %185 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %189 = call i32 @dma_sync_single_for_cpu(%struct.device* %183, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @memcpy(i32 %192, i32 %195, i32 %196)
  %198 = load %struct.device*, %struct.device** %6, align 8
  %199 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %200 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %204 = call i32 @dma_sync_single_for_device(%struct.device* %198, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %205, %struct.sk_buff** %9, align 8
  br label %225

206:                                              ; preds = %151
  %207 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %208 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %207, i32 0, i32 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %212 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %215 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %218 = call i32 @dma_unmap_single(%struct.device* %210, i32 %213, i32 %216, i32 %217)
  %219 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %220 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %219, i32 0, i32 6
  %221 = load %struct.sk_buff**, %struct.sk_buff*** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %221, i64 %223
  store %struct.sk_buff* null, %struct.sk_buff** %224, align 8
  br label %225

225:                                              ; preds = %206, %182
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @skb_put(%struct.sk_buff* %226, i32 %227)
  %229 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %230 = load %struct.net_device*, %struct.net_device** %3, align 8
  %231 = call i32 @eth_type_trans(%struct.sk_buff* %229, %struct.net_device* %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load %struct.net_device*, %struct.net_device** %3, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.net_device*, %struct.net_device** %3, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %246 = call i32 @netif_receive_skb(%struct.sk_buff* %245)
  br label %247

247:                                              ; preds = %225, %176, %150, %84
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %4, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %30, label %251

251:                                              ; preds = %247, %48
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %256 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %254, %251
  %260 = load %struct.net_device*, %struct.net_device** %3, align 8
  %261 = call i32 @bcm_enet_refill_rx(%struct.net_device* %260)
  %262 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %263 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %264 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %267 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %268 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %262, i32 %265, i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %259, %254
  %272 = load i32, i32* %7, align 4
  ret i32 %272
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @bcm_enet_refill_rx(%struct.net_device*) #1

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
