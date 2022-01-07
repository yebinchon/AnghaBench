; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.korina_private = type { i64, %struct.sk_buff**, i32, %struct.TYPE_4__*, %struct.dma_desc*, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dma_desc = type { i64, i32, i8* }

@KORINA_RBSIZE = common dso_local global i32 0, align 4
@ETH_RX_LD = common dso_local global i64 0, align 8
@ETH_RX_ROK = common dso_local global i64 0, align 8
@ETH_RX_CRC = common dso_local global i64 0, align 8
@ETH_RX_LE = common dso_local global i64 0, align 8
@ETH_RX_OVR = common dso_local global i64 0, align 8
@ETH_RX_CV = common dso_local global i64 0, align 8
@ETH_RX_CES = common dso_local global i64 0, align 8
@ETH_RX_MP = common dso_local global i64 0, align 8
@DMA_DESC_COD = common dso_local global i32 0, align 4
@DMA_DESC_IOD = common dso_local global i32 0, align 4
@KORINA_RDS_MASK = common dso_local global i32 0, align 4
@DMA_STAT_DONE = common dso_local global i64 0, align 8
@DMA_STAT_HALT = common dso_local global i64 0, align 8
@DMA_STAT_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @korina_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.korina_private*, align 8
  %6 = alloca %struct.dma_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.korina_private* @netdev_priv(%struct.net_device* %14)
  store %struct.korina_private* %15, %struct.korina_private** %5, align 8
  %16 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %17 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %16, i32 0, i32 4
  %18 = load %struct.dma_desc*, %struct.dma_desc** %17, align 8
  %19 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %20 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i64 %21
  store %struct.dma_desc* %22, %struct.dma_desc** %6, align 8
  %23 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %24 = ptrtoint %struct.dma_desc* %23 to i64
  %25 = call i32 @dma_cache_inv(i64 %24, i64 24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %268, %2
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %271

30:                                               ; preds = %26
  %31 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %32 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %31, i32 0, i32 1
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %35 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %39 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %40 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @KORINA_RBSIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %45 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DMA_COUNT(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %43, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %271

52:                                               ; preds = %30
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ETH_RX_LD, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %198

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @ETH_RX_ROK, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %129, label %63

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @ETH_RX_CRC, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %63
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %63
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @ETH_RX_LE, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @ETH_RX_OVR, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @ETH_RX_CV, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @ETH_RX_CES, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %117
  br label %198

129:                                              ; preds = %58
  %130 = load i64, i64* %10, align 8
  %131 = call i64 @RCVPKT_LENGTH(i64 %130)
  store i64 %131, i64* %11, align 8
  %132 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %133 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %132, i32 0, i32 1
  %134 = load %struct.sk_buff**, %struct.sk_buff*** %133, align 8
  %135 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %136 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %134, i64 %137
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  store i32* %142, i32** %9, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = ptrtoint i32* %143 to i64
  %145 = load i64, i64* %11, align 8
  %146 = sub nsw i64 %145, 4
  %147 = call i32 @dma_cache_inv(i64 %144, i64 %146)
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = load i32, i32* @KORINA_RBSIZE, align 4
  %150 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %148, i32 %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %8, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = icmp ne %struct.sk_buff* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %129
  br label %271

154:                                              ; preds = %129
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = load i64, i64* %11, align 8
  %157 = sub nsw i64 %156, 4
  %158 = call i32 @skb_put(%struct.sk_buff* %155, i64 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = load %struct.net_device*, %struct.net_device** %3, align 8
  %161 = call i32 @eth_type_trans(%struct.sk_buff* %159, %struct.net_device* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %165 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %164, i32 0, i32 5
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call i32 @napi_gro_receive(i32* %165, %struct.sk_buff* %166)
  %168 = load %struct.net_device*, %struct.net_device** %3, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.net_device*, %struct.net_device** %3, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %173
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @ETH_RX_MP, align 8
  %181 = and i64 %179, %180
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %154
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %154
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %192 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %191, i32 0, i32 1
  %193 = load %struct.sk_buff**, %struct.sk_buff*** %192, align 8
  %194 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %195 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %193, i64 %196
  store %struct.sk_buff* %190, %struct.sk_buff** %197, align 8
  br label %198

198:                                              ; preds = %189, %128, %57
  %199 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %200 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @CPHYSADDR(i64 %206)
  %208 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %209 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  br label %217

210:                                              ; preds = %198
  %211 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i8* @CPHYSADDR(i64 %213)
  %215 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %216 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %210, %203
  %218 = load i32, i32* @KORINA_RBSIZE, align 4
  %219 = call i32 @DMA_COUNT(i32 %218)
  %220 = load i32, i32* @DMA_DESC_COD, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @DMA_DESC_IOD, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %225 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @DMA_DESC_COD, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %229 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %228, i32 0, i32 4
  %230 = load %struct.dma_desc*, %struct.dma_desc** %229, align 8
  %231 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %232 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %233, 1
  %235 = load i32, i32* @KORINA_RDS_MASK, align 4
  %236 = sext i32 %235 to i64
  %237 = and i64 %234, %236
  %238 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %230, i64 %237
  %239 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %227
  store i32 %241, i32* %239, align 8
  %242 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %243 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, 1
  %246 = load i32, i32* @KORINA_RDS_MASK, align 4
  %247 = sext i32 %246 to i64
  %248 = and i64 %245, %247
  %249 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %250 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  %251 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %252 = ptrtoint %struct.dma_desc* %251 to i64
  %253 = call i32 @dma_cache_wback(i64 %252, i32 24)
  %254 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %255 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %254, i32 0, i32 4
  %256 = load %struct.dma_desc*, %struct.dma_desc** %255, align 8
  %257 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %258 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %256, i64 %259
  store %struct.dma_desc* %260, %struct.dma_desc** %6, align 8
  %261 = load i64, i64* @DMA_STAT_DONE, align 8
  %262 = xor i64 %261, -1
  %263 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %264 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %263, i32 0, i32 3
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = call i32 @writel(i64 %262, i32* %266)
  br label %268

268:                                              ; preds = %217
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %26

271:                                              ; preds = %153, %51, %26
  %272 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %273 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %272, i32 0, i32 3
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = call i64 @readl(i32* %275)
  store i64 %276, i64* %12, align 8
  %277 = load i64, i64* %12, align 8
  %278 = load i64, i64* @DMA_STAT_HALT, align 8
  %279 = and i64 %277, %278
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %317

281:                                              ; preds = %271
  %282 = load i64, i64* @DMA_STAT_HALT, align 8
  %283 = load i64, i64* @DMA_STAT_ERR, align 8
  %284 = or i64 %282, %283
  %285 = xor i64 %284, -1
  %286 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %287 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %286, i32 0, i32 3
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = call i32 @writel(i64 %285, i32* %289)
  %291 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %292 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %292, align 8
  %295 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %296 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  %297 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %298 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %297, i32 0, i32 1
  %299 = load %struct.sk_buff**, %struct.sk_buff*** %298, align 8
  %300 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %301 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %299, i64 %302
  %304 = load %struct.sk_buff*, %struct.sk_buff** %303, align 8
  store %struct.sk_buff* %304, %struct.sk_buff** %7, align 8
  %305 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %306 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i8* @CPHYSADDR(i64 %307)
  %309 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %310 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %309, i32 0, i32 2
  store i8* %308, i8** %310, align 8
  %311 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %312 = ptrtoint %struct.dma_desc* %311 to i64
  %313 = call i32 @dma_cache_wback(i64 %312, i32 24)
  %314 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %315 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %316 = call i32 @korina_chain_rx(%struct.korina_private* %314, %struct.dma_desc* %315)
  br label %317

317:                                              ; preds = %281, %271
  %318 = load i32, i32* %13, align 4
  ret i32 %318
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_cache_inv(i64, i64) #1

declare dso_local i32 @DMA_COUNT(i32) #1

declare dso_local i64 @RCVPKT_LENGTH(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i8* @CPHYSADDR(i64) #1

declare dso_local i32 @dma_cache_wback(i64, i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @korina_chain_rx(%struct.korina_private*, %struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
