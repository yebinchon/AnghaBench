; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fec_enet_private = type { i32, i32, i64, i64, %struct.TYPE_6__*, i32, i64, i64, %struct.fec_enet_priv_rx_q** }
%struct.TYPE_6__ = type { i32 }
%struct.fec_enet_priv_rx_q = type { %struct.TYPE_7__, %struct.sk_buff** }
%struct.TYPE_7__ = type { %struct.bufdesc*, i64 }
%struct.bufdesc = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32* }
%struct.bufdesc_ex = type { i32, i64, i64, i32 }
%struct.vlan_hdr = type { i32 }

@FEC_QUIRK_SWAP_FRAME = common dso_local global i32 0, align 4
@BD_ENET_RX_EMPTY = common dso_local global i16 0, align 2
@FEC_ENET_RXF = common dso_local global i32 0, align 4
@FEC_IEVENT = common dso_local global i64 0, align 8
@BD_ENET_RX_LAST = common dso_local global i16 0, align 2
@BD_ENET_RX_LG = common dso_local global i16 0, align 2
@BD_ENET_RX_SH = common dso_local global i16 0, align 2
@BD_ENET_RX_NO = common dso_local global i16 0, align 2
@BD_ENET_RX_CR = common dso_local global i16 0, align 2
@BD_ENET_RX_OV = common dso_local global i16 0, align 2
@BD_ENET_RX_CL = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [18 x i8] c"rcv is not +last\0A\00", align 1
@FEC_ENET_RX_FRSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_RACC = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@BD_ENET_RX_VLAN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@FLAG_RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@FLAG_RX_CSUM_ERROR = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@BD_ENET_RX_STATS = common dso_local global i16 0, align 2
@BD_ENET_RX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i64)* @fec_enet_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_rx_queue(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fec_enet_private*, align 8
  %8 = alloca %struct.fec_enet_priv_rx_q*, align 8
  %9 = alloca %struct.bufdesc*, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bufdesc_ex*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.vlan_hdr*, align 8
  %23 = alloca %struct.bufdesc_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %24)
  store %struct.fec_enet_private* %25, %struct.fec_enet_private** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store i32 0, i32* %15, align 4
  store %struct.bufdesc_ex* null, %struct.bufdesc_ex** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %27 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FEC_QUIRK_SWAP_FRAME, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %21, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @FEC_ENET_GET_QUQUE(i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %34 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %33, i32 0, i32 8
  %35 = load %struct.fec_enet_priv_rx_q**, %struct.fec_enet_priv_rx_q*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %35, i64 %36
  %38 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %37, align 8
  store %struct.fec_enet_priv_rx_q* %38, %struct.fec_enet_priv_rx_q** %8, align 8
  %39 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %40 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.bufdesc*, %struct.bufdesc** %41, align 8
  store %struct.bufdesc* %42, %struct.bufdesc** %9, align 8
  br label %43

43:                                               ; preds = %457, %3
  %44 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %45 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @fec16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i16
  store i16 %48, i16* %10, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @BD_ENET_RX_EMPTY, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %472

55:                                               ; preds = %43
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %472

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* @FEC_ENET_RXF, align 4
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FEC_IEVENT, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i16, i16* @BD_ENET_RX_LAST, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = xor i32 %73, %71
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %10, align 2
  %76 = load i16, i16* %10, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @BD_ENET_RX_LG, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @BD_ENET_RX_SH, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %79, %81
  %83 = load i16, i16* @BD_ENET_RX_NO, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %82, %84
  %86 = load i16, i16* @BD_ENET_RX_CR, align 2
  %87 = zext i16 %86 to i32
  %88 = or i32 %85, %87
  %89 = load i16, i16* @BD_ENET_RX_OV, align 2
  %90 = zext i16 %89 to i32
  %91 = or i32 %88, %90
  %92 = load i16, i16* @BD_ENET_RX_LAST, align 2
  %93 = zext i16 %92 to i32
  %94 = or i32 %91, %93
  %95 = load i16, i16* @BD_ENET_RX_CL, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %94, %96
  %98 = and i32 %77, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %177

100:                                              ; preds = %60
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i16, i16* %10, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @BD_ENET_RX_OV, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %428

118:                                              ; preds = %100
  %119 = load i16, i16* %10, align 2
  %120 = zext i16 %119 to i32
  %121 = load i16, i16* @BD_ENET_RX_LG, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @BD_ENET_RX_SH, align 2
  %124 = zext i16 %123 to i32
  %125 = or i32 %122, %124
  %126 = load i16, i16* @BD_ENET_RX_LAST, align 2
  %127 = zext i16 %126 to i32
  %128 = or i32 %125, %127
  %129 = and i32 %120, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %118
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i16, i16* %10, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* @BD_ENET_RX_LAST, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = call i32 @netdev_err(%struct.net_device* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %131
  br label %147

147:                                              ; preds = %146, %118
  %148 = load i16, i16* %10, align 2
  %149 = zext i16 %148 to i32
  %150 = load i16, i16* @BD_ENET_RX_CR, align 2
  %151 = zext i16 %150 to i32
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load %struct.net_device*, %struct.net_device** %4, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %147
  %161 = load i16, i16* %10, align 2
  %162 = zext i16 %161 to i32
  %163 = load i16, i16* @BD_ENET_RX_NO, align 2
  %164 = zext i16 %163 to i32
  %165 = load i16, i16* @BD_ENET_RX_CL, align 2
  %166 = zext i16 %165 to i32
  %167 = or i32 %164, %166
  %168 = and i32 %162, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %160
  br label %428

177:                                              ; preds = %60
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %184 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @fec16_to_cpu(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.net_device*, %struct.net_device** %4, align 8
  %190 = getelementptr inbounds %struct.net_device, %struct.net_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %188
  store i32 %193, i32* %191, align 4
  %194 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %195 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %196 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %195, i32 0, i32 0
  %197 = call i32 @fec_enet_get_bd_index(%struct.bufdesc* %194, %struct.TYPE_7__* %196)
  store i32 %197, i32* %19, align 4
  %198 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %199 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %198, i32 0, i32 1
  %200 = load %struct.sk_buff**, %struct.sk_buff*** %199, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %200, i64 %202
  %204 = load %struct.sk_buff*, %struct.sk_buff** %203, align 8
  store %struct.sk_buff* %204, %struct.sk_buff** %12, align 8
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sub nsw i32 %207, 4
  %209 = load i32, i32* %21, align 4
  %210 = call i32 @fec_enet_copybreak(%struct.net_device* %205, %struct.sk_buff** %12, %struct.bufdesc* %206, i32 %208, i32 %209)
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %245, label %213

213:                                              ; preds = %177
  %214 = load %struct.net_device*, %struct.net_device** %4, align 8
  %215 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %216 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %214, i64 %215)
  store %struct.sk_buff* %216, %struct.sk_buff** %11, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %218 = icmp ne %struct.sk_buff* %217, null
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %213
  %224 = load %struct.net_device*, %struct.net_device** %4, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %428

229:                                              ; preds = %213
  %230 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %231 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %230, i32 0, i32 4
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %235 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fec32_to_cpu(i32 %236)
  %238 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %239 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %240 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %244 = call i32 @dma_unmap_single(i32* %233, i32 %237, i64 %242, i32 %243)
  br label %245

245:                                              ; preds = %229, %177
  %246 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* @NET_IP_ALIGN, align 4
  %250 = sext i32 %249 to i64
  %251 = sub i64 0, %250
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  %253 = call i32 @prefetch(i32* %252)
  %254 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sub nsw i32 %255, 4
  %257 = call i32 @skb_put(%struct.sk_buff* %254, i32 %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  store i32* %260, i32** %14, align 8
  %261 = load i32, i32* %20, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %245
  %264 = load i32, i32* %21, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32*, i32** %14, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @swap_buffer(i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %263, %245
  %271 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %272 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @FEC_QUIRK_HAS_RACC, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %279 = call i32* @skb_pull_inline(%struct.sk_buff* %278, i32 2)
  store i32* %279, i32** %14, align 8
  br label %280

280:                                              ; preds = %277, %270
  store %struct.bufdesc_ex* null, %struct.bufdesc_ex** %16, align 8
  %281 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %282 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %287 = bitcast %struct.bufdesc* %286 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %287, %struct.bufdesc_ex** %16, align 8
  br label %288

288:                                              ; preds = %285, %280
  store i32 0, i32* %17, align 4
  %289 = load %struct.net_device*, %struct.net_device** %4, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %331

295:                                              ; preds = %288
  %296 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %297 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %331

300:                                              ; preds = %295
  %301 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %16, align 8
  %302 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @BD_ENET_RX_VLAN, align 4
  %305 = call i32 @cpu_to_fec32(i32 %304)
  %306 = and i32 %303, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %331

308:                                              ; preds = %300
  %309 = load i32*, i32** %14, align 8
  %310 = load i32, i32* @ETH_HLEN, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = bitcast i32* %312 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %313, %struct.vlan_hdr** %22, align 8
  %314 = load %struct.vlan_hdr*, %struct.vlan_hdr** %22, align 8
  %315 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @ntohs(i32 %316)
  store i64 %317, i64* %18, align 8
  store i32 1, i32* %17, align 4
  %318 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %319 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* @VLAN_HLEN, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32*, i32** %14, align 8
  %325 = load i32, i32* @ETH_ALEN, align 4
  %326 = mul nsw i32 %325, 2
  %327 = call i32 @memmove(i32* %323, i32* %324, i32 %326)
  %328 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %329 = load i32, i32* @VLAN_HLEN, align 4
  %330 = call i32 @skb_pull(%struct.sk_buff* %328, i32 %329)
  br label %331

331:                                              ; preds = %308, %300, %295, %288
  %332 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %333 = load %struct.net_device*, %struct.net_device** %4, align 8
  %334 = call i32 @eth_type_trans(%struct.sk_buff* %332, %struct.net_device* %333)
  %335 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %336 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %338 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %331
  %342 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %343 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %341
  %347 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %348 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %16, align 8
  %349 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @fec32_to_cpu(i32 %350)
  %352 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %353 = call i32 @skb_hwtstamps(%struct.sk_buff* %352)
  %354 = call i32 @fec_enet_hwtstamp(%struct.fec_enet_private* %347, i32 %351, i32 %353)
  br label %355

355:                                              ; preds = %346, %341, %331
  %356 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %357 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %383

360:                                              ; preds = %355
  %361 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %362 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @FLAG_RX_CSUM_ENABLED, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %383

367:                                              ; preds = %360
  %368 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %16, align 8
  %369 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @FLAG_RX_CSUM_ERROR, align 4
  %372 = call i32 @cpu_to_fec32(i32 %371)
  %373 = and i32 %370, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %367
  %376 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %377 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %378 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  br label %382

379:                                              ; preds = %367
  %380 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %381 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %380)
  br label %382

382:                                              ; preds = %379, %375
  br label %383

383:                                              ; preds = %382, %360, %355
  %384 = load i32, i32* %17, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %383
  %387 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %388 = load i32, i32* @ETH_P_8021Q, align 4
  %389 = call i32 @htons(i32 %388)
  %390 = load i64, i64* %18, align 8
  %391 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %387, i32 %389, i64 %390)
  br label %392

392:                                              ; preds = %386, %383
  %393 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %394 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %393, i32 0, i32 5
  %395 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %396 = call i32 @napi_gro_receive(i32* %394, %struct.sk_buff* %395)
  %397 = load i32, i32* %20, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %415

399:                                              ; preds = %392
  %400 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %401 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %400, i32 0, i32 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 0
  %404 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %405 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @fec32_to_cpu(i32 %406)
  %408 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %409 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %410 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = sub nsw i64 %408, %411
  %413 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %414 = call i32 @dma_sync_single_for_device(i32* %403, i32 %407, i64 %412, i32 %413)
  br label %427

415:                                              ; preds = %392
  %416 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %417 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %418 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %417, i32 0, i32 1
  %419 = load %struct.sk_buff**, %struct.sk_buff*** %418, align 8
  %420 = load i32, i32* %19, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %419, i64 %421
  store %struct.sk_buff* %416, %struct.sk_buff** %422, align 8
  %423 = load %struct.net_device*, %struct.net_device** %4, align 8
  %424 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %425 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %426 = call i32 @fec_enet_new_rxbdp(%struct.net_device* %423, %struct.bufdesc* %424, %struct.sk_buff* %425)
  br label %427

427:                                              ; preds = %415, %399
  br label %428

428:                                              ; preds = %427, %223, %176, %112
  %429 = load i16, i16* @BD_ENET_RX_STATS, align 2
  %430 = zext i16 %429 to i32
  %431 = xor i32 %430, -1
  %432 = load i16, i16* %10, align 2
  %433 = zext i16 %432 to i32
  %434 = and i32 %433, %431
  %435 = trunc i32 %434 to i16
  store i16 %435, i16* %10, align 2
  %436 = load i16, i16* @BD_ENET_RX_EMPTY, align 2
  %437 = zext i16 %436 to i32
  %438 = load i16, i16* %10, align 2
  %439 = zext i16 %438 to i32
  %440 = or i32 %439, %437
  %441 = trunc i32 %440 to i16
  store i16 %441, i16* %10, align 2
  %442 = load %struct.fec_enet_private*, %struct.fec_enet_private** %7, align 8
  %443 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %428
  %447 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %448 = bitcast %struct.bufdesc* %447 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %448, %struct.bufdesc_ex** %23, align 8
  %449 = load i32, i32* @BD_ENET_RX_INT, align 4
  %450 = call i32 @cpu_to_fec32(i32 %449)
  %451 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %23, align 8
  %452 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %451, i32 0, i32 0
  store i32 %450, i32* %452, align 8
  %453 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %23, align 8
  %454 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %453, i32 0, i32 2
  store i64 0, i64* %454, align 8
  %455 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %23, align 8
  %456 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %455, i32 0, i32 1
  store i64 0, i64* %456, align 8
  br label %457

457:                                              ; preds = %446, %428
  %458 = call i32 (...) @wmb()
  %459 = load i16, i16* %10, align 2
  %460 = call i32 @cpu_to_fec16(i16 zeroext %459)
  %461 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %462 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %461, i32 0, i32 0
  store i32 %460, i32* %462, align 4
  %463 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %464 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %465 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %464, i32 0, i32 0
  %466 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %463, %struct.TYPE_7__* %465)
  store %struct.bufdesc* %466, %struct.bufdesc** %9, align 8
  %467 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %468 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = call i32 @writel(i32 0, i64 %470)
  br label %43

472:                                              ; preds = %59, %43
  %473 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %474 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %475 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 0
  store %struct.bufdesc* %473, %struct.bufdesc** %476, align 8
  %477 = load i32, i32* %15, align 4
  ret i32 %477
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @FEC_ENET_GET_QUQUE(i64) #1

declare dso_local i8* @fec16_to_cpu(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @fec_enet_get_bd_index(%struct.bufdesc*, %struct.TYPE_7__*) #1

declare dso_local i32 @fec_enet_copybreak(%struct.net_device*, %struct.sk_buff**, %struct.bufdesc*, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @swap_buffer(i32*, i32) #1

declare dso_local i32* @skb_pull_inline(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_fec32(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @fec_enet_hwtstamp(%struct.fec_enet_private*, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i64, i32) #1

declare dso_local i32 @fec_enet_new_rxbdp(%struct.net_device*, %struct.bufdesc*, %struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_fec16(i16 zeroext) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
