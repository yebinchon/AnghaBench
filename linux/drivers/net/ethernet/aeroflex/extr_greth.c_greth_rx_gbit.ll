; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_rx_gbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_rx_gbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.greth_private = type { i32, i32, i32, %struct.sk_buff**, %struct.TYPE_3__*, %struct.greth_bd* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.greth_bd = type { i32, i32 }

@GRETH_INT_RE = common dso_local global i32 0, align 4
@GRETH_INT_RX = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@GRETH_RXBD_STATUS = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_FT = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_AE = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_OE = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_LE = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_CRC = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GRETH_BD_LEN = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not create DMA mapping, dropping packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not allocate SKB, dropping packet\0A\00", align 1
@GRETH_BD_IE = common dso_local global i32 0, align 4
@GRETH_RXBD_NUM_MASK = common dso_local global i64 0, align 8
@GRETH_BD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @greth_rx_gbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_rx_gbit(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.greth_private*, align 8
  %6 = alloca %struct.greth_bd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.greth_private* @netdev_priv(%struct.net_device* %15)
  store %struct.greth_private* %16, %struct.greth_private** %5, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %291, %2
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %294

21:                                               ; preds = %17
  %22 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %23 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %22, i32 0, i32 5
  %24 = load %struct.greth_bd*, %struct.greth_bd** %23, align 8
  %25 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %26 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %24, i64 %28
  store %struct.greth_bd* %29, %struct.greth_bd** %6, align 8
  %30 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %31 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %30, i32 0, i32 3
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %34 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  %39 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %40 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GRETH_INT_RE, align 4
  %45 = load i32, i32* @GRETH_INT_RX, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @GRETH_REGSAVE(i32 %43, i32 %46)
  %48 = call i32 (...) @mb()
  %49 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %50 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %49, i32 0, i32 0
  %51 = call i32 @greth_read_bd(i32* %50)
  store i32 %51, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @GRETH_BD_EN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %21
  br label %294

57:                                               ; preds = %21
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @GRETH_RXBD_STATUS, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @GRETH_RXBD_ERR_FT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  store i32 1, i32* %10, align 4
  br label %102

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @GRETH_RXBD_ERR_AE, align 4
  %77 = load i32, i32* @GRETH_RXBD_ERR_OE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @GRETH_RXBD_ERR_LE, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  store i32 1, i32* %10, align 4
  br label %101

89:                                               ; preds = %74
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @GRETH_RXBD_ERR_CRC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %68
  br label %103

103:                                              ; preds = %102, %57
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %229, label %106

106:                                              ; preds = %103
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %109 = load i64, i64* @NET_IP_ALIGN, align 8
  %110 = add nsw i64 %108, %109
  %111 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %107, i64 %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %8, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %229

113:                                              ; preds = %106
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load i64, i64* @NET_IP_ALIGN, align 8
  %116 = call i32 @skb_reserve(%struct.sk_buff* %114, i64 %115)
  %117 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %118 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %124 = load i64, i64* @NET_IP_ALIGN, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %127 = call i32 @dma_map_single(i32 %119, i32 %122, i64 %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %129 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @dma_mapping_error(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %212, label %134

134:                                              ; preds = %113
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @GRETH_BD_LEN, align 4
  %137 = and i32 %135, %136
  store i32 %137, i32* %9, align 4
  %138 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %139 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %142 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %141, i32 0, i32 1
  %143 = call i32 @greth_read_bd(i32* %142)
  %144 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %145 = load i64, i64* @NET_IP_ALIGN, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @dma_unmap_single(i32 %140, i32 %143, i64 %146, i32 %147)
  %149 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %150 = call i64 @netif_msg_pktdata(%struct.greth_private* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %134
  %153 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %154 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %153, i32 0, i32 1
  %155 = call i32 @greth_read_bd(i32* %154)
  %156 = call i32 @phys_to_virt(i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @greth_print_rx_packet(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %152, %134
  %160 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @skb_put(%struct.sk_buff* %160, i32 %161)
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %159
  %170 = load i32, i32* %12, align 4
  %171 = call i64 @hw_checksummed(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %180

177:                                              ; preds = %169, %159
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = load %struct.net_device*, %struct.net_device** %3, align 8
  %183 = call i32 @eth_type_trans(%struct.sk_buff* %181, %struct.net_device* %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.net_device*, %struct.net_device** %3, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %191
  store i32 %196, i32* %194, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = call i32 @netif_receive_skb(%struct.sk_buff* %197)
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %201 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %200, i32 0, i32 3
  %202 = load %struct.sk_buff**, %struct.sk_buff*** %201, align 8
  %203 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %204 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %202, i64 %206
  store %struct.sk_buff* %199, %struct.sk_buff** %207, align 8
  %208 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %209 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %208, i32 0, i32 1
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @greth_write_bd(i32* %209, i32 %210)
  br label %228

212:                                              ; preds = %113
  %213 = call i64 (...) @net_ratelimit()
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %217 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @dev_warn(i32 %218, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %220

220:                                              ; preds = %215, %212
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = call i32 @dev_kfree_skb(%struct.sk_buff* %221)
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %220, %180
  br label %253

229:                                              ; preds = %106, %103
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.net_device*, %struct.net_device** %3, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %252

238:                                              ; preds = %229
  %239 = call i64 (...) @net_ratelimit()
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %243 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @dev_warn(i32 %244, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %246

246:                                              ; preds = %241, %238
  %247 = load %struct.net_device*, %struct.net_device** %3, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %246, %232
  br label %253

253:                                              ; preds = %252, %228
  %254 = load i32, i32* @GRETH_BD_EN, align 4
  %255 = load i32, i32* @GRETH_BD_IE, align 4
  %256 = or i32 %254, %255
  store i32 %256, i32* %12, align 4
  %257 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %258 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* @GRETH_RXBD_NUM_MASK, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %253
  %264 = load i32, i32* @GRETH_BD_WR, align 4
  %265 = load i32, i32* %12, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %12, align 4
  br label %267

267:                                              ; preds = %263, %253
  %268 = call i32 (...) @wmb()
  %269 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %270 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %269, i32 0, i32 0
  %271 = load i32, i32* %12, align 4
  %272 = call i32 @greth_write_bd(i32* %270, i32 %271)
  %273 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %274 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %273, i32 0, i32 1
  %275 = load i64, i64* %14, align 8
  %276 = call i32 @spin_lock_irqsave(i32* %274, i64 %275)
  %277 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %278 = call i32 @greth_enable_rx(%struct.greth_private* %277)
  %279 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %280 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %279, i32 0, i32 1
  %281 = load i64, i64* %14, align 8
  %282 = call i32 @spin_unlock_irqrestore(i32* %280, i64 %281)
  %283 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %284 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = call i64 @NEXT_RX(i64 %286)
  %288 = trunc i64 %287 to i32
  %289 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %290 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %267
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %17

294:                                              ; preds = %56, %17
  %295 = load i32, i32* %11, align 4
  ret i32 %295
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.greth_private*) #1

declare dso_local i32 @greth_print_rx_packet(i32, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @hw_checksummed(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @greth_write_bd(i32*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @greth_enable_rx(%struct.greth_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @NEXT_RX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
