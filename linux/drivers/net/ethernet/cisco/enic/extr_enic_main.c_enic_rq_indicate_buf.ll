; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_indicate_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_indicate_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i64, i32 }
%struct.cq_desc = type { i32 }
%struct.vnic_rq_buf = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.enic = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__, i32, i32, %struct.vnic_cq*, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.vnic_cq = type { i32 }
%struct.net_device = type { i32 }
%struct.cq_enet_rq_desc = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, %struct.cq_desc*, %struct.vnic_rq_buf*, i32, i8*)* @enic_rq_indicate_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_rq_indicate_buf(%struct.vnic_rq* %0, %struct.cq_desc* %1, %struct.vnic_rq_buf* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.vnic_rq*, align 8
  %7 = alloca %struct.cq_desc*, align 8
  %8 = alloca %struct.vnic_rq_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.enic*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.vnic_cq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store %struct.vnic_rq* %0, %struct.vnic_rq** %6, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %7, align 8
  store %struct.vnic_rq_buf* %2, %struct.vnic_rq_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %45 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %46 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.enic* @vnic_dev_priv(i32 %47)
  store %struct.enic* %48, %struct.enic** %11, align 8
  %49 = load %struct.enic*, %struct.enic** %11, align 8
  %50 = getelementptr inbounds %struct.enic, %struct.enic* %49, i32 0, i32 7
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  store %struct.net_device* %51, %struct.net_device** %12, align 8
  %52 = load %struct.enic*, %struct.enic** %11, align 8
  %53 = getelementptr inbounds %struct.enic, %struct.enic* %52, i32 0, i32 6
  %54 = load %struct.vnic_cq*, %struct.vnic_cq** %53, align 8
  %55 = load %struct.enic*, %struct.enic** %11, align 8
  %56 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %57 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @enic_cq_rq(%struct.enic* %55, i64 %58)
  %60 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %54, i64 %59
  store %struct.vnic_cq* %60, %struct.vnic_cq** %14, align 8
  store i32 1, i32* %43, align 4
  store i32 0, i32* %44, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %5
  br label %312

64:                                               ; preds = %5
  %65 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %66 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %13, align 8
  %68 = load %struct.cq_desc*, %struct.cq_desc** %7, align 8
  %69 = bitcast %struct.cq_desc* %68 to %struct.cq_enet_rq_desc*
  %70 = call i32 @cq_enet_rq_desc_dec(%struct.cq_enet_rq_desc* %69, i32* %15, i32* %16, i64* %37, i64* %38, i32* %19, i32* %21, i32* %17, i32* %18, i32* %34, i32* %35, i32* %42, i64* %39, i32* %36, i32* %20, i64* %40, i64* %41, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33)
  %71 = load i32, i32* %36, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %64
  %74 = load i32, i32* %33, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %39, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.enic*, %struct.enic** %11, align 8
  %81 = getelementptr inbounds %struct.enic, %struct.enic* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load i64, i64* %39, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.enic*, %struct.enic** %11, align 8
  %89 = getelementptr inbounds %struct.enic, %struct.enic* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %73
  %95 = load %struct.enic*, %struct.enic** %11, align 8
  %96 = getelementptr inbounds %struct.enic, %struct.enic* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %99 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %102 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %105 = call i32 @pci_unmap_single(i32 %97, i32 %100, i32 %103, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %106)
  %108 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %109 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %108, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  br label %312

110:                                              ; preds = %64
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %296

113:                                              ; preds = %110
  %114 = load i64, i64* %39, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %296

116:                                              ; preds = %113
  %117 = load %struct.net_device*, %struct.net_device** %12, align 8
  %118 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %119 = load i64, i64* %39, align 8
  %120 = call i32 @enic_rxcopybreak(%struct.net_device* %117, %struct.sk_buff** %13, %struct.vnic_rq_buf* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %116
  %123 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %124 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %123, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %124, align 8
  %125 = load %struct.enic*, %struct.enic** %11, align 8
  %126 = getelementptr inbounds %struct.enic, %struct.enic* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %129 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %132 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %135 = call i32 @pci_unmap_single(i32 %127, i32 %130, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %122, %116
  %137 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NET_IP_ALIGN, align 8
  %141 = sub nsw i64 %139, %140
  %142 = call i32 @prefetch(i64 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %144 = load i64, i64* %39, align 8
  %145 = call i32 @skb_put(%struct.sk_buff* %143, i64 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %147 = load %struct.net_device*, %struct.net_device** %12, align 8
  %148 = call i32 @eth_type_trans(%struct.sk_buff* %146, %struct.net_device* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %152 = load i64, i64* %37, align 8
  %153 = call i32 @skb_record_rx_queue(%struct.sk_buff* %151, i64 %152)
  %154 = load %struct.net_device*, %struct.net_device** %12, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NETIF_F_RXHASH, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %136
  %161 = load i32, i32* %42, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load i32, i32* %34, align 4
  switch i32 %167, label %178 [
    i32 130, label %168
    i32 129, label %168
    i32 128, label %168
    i32 133, label %173
    i32 132, label %173
    i32 131, label %173
  ]

168:                                              ; preds = %166, %166, %166
  %169 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %170 = load i32, i32* %42, align 4
  %171 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %172 = call i32 @skb_set_hash(%struct.sk_buff* %169, i32 %170, i32 %171)
  br label %178

173:                                              ; preds = %166, %166, %166
  %174 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %175 = load i32, i32* %42, align 4
  %176 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %177 = call i32 @skb_set_hash(%struct.sk_buff* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %166, %173, %168
  br label %179

179:                                              ; preds = %178, %163, %160, %136
  %180 = load %struct.enic*, %struct.enic** %11, align 8
  %181 = getelementptr inbounds %struct.enic, %struct.enic* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %219

185:                                              ; preds = %179
  %186 = load %struct.enic*, %struct.enic** %11, align 8
  %187 = getelementptr inbounds %struct.enic, %struct.enic* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  switch i32 %189, label %218 [
    i32 0, label %190
    i32 2, label %196
  ]

190:                                              ; preds = %185
  %191 = load i32, i32* %21, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  store i32 1, i32* %44, align 4
  %194 = load i32, i32* %23, align 4
  store i32 %194, i32* %43, align 4
  br label %195

195:                                              ; preds = %193, %190
  br label %218

196:                                              ; preds = %185
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 7
  br i1 %198, label %199, label %217

199:                                              ; preds = %196
  %200 = load i32, i32* %42, align 4
  %201 = call i32 @BIT(i32 0)
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %199
  store i32 1, i32* %44, align 4
  %205 = load i32, i32* %42, align 4
  %206 = call i32 @BIT(i32 1)
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* %42, align 4
  %211 = call i32 @BIT(i32 2)
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br label %214

214:                                              ; preds = %209, %204
  %215 = phi i1 [ false, %204 ], [ %213, %209 ]
  %216 = zext i1 %215 to i32
  store i32 %216, i32* %43, align 4
  br label %217

217:                                              ; preds = %214, %199, %196
  br label %218

218:                                              ; preds = %185, %217, %195
  br label %219

219:                                              ; preds = %218, %179
  %220 = load %struct.net_device*, %struct.net_device** %12, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %248

226:                                              ; preds = %219
  %227 = load i32, i32* %35, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %248, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %26, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  %233 = load i32, i32* %43, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %232
  %236 = load i32, i32* %29, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %30, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %238, %235
  %242 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %243 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %44, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %241, %238, %232, %229, %226, %219
  %249 = load i32, i32* %20, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %253 = load i32, i32* @ETH_P_8021Q, align 4
  %254 = call i32 @htons(i32 %253)
  %255 = load i64, i64* %40, align 8
  %256 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %252, i32 %254, i64 %255)
  br label %257

257:                                              ; preds = %251, %248
  %258 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %259 = load %struct.enic*, %struct.enic** %11, align 8
  %260 = getelementptr inbounds %struct.enic, %struct.enic* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.vnic_rq*, %struct.vnic_rq** %6, align 8
  %263 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = call i32 @skb_mark_napi_id(%struct.sk_buff* %258, i32* %265)
  %267 = load %struct.net_device*, %struct.net_device** %12, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @NETIF_F_GRO, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %257
  %274 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %275 = call i32 @netif_receive_skb(%struct.sk_buff* %274)
  br label %284

276:                                              ; preds = %257
  %277 = load %struct.enic*, %struct.enic** %11, align 8
  %278 = getelementptr inbounds %struct.enic, %struct.enic* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %37, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %283 = call i32 @napi_gro_receive(i32* %281, %struct.sk_buff* %282)
  br label %284

284:                                              ; preds = %276, %273
  %285 = load %struct.enic*, %struct.enic** %11, align 8
  %286 = getelementptr inbounds %struct.enic, %struct.enic* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = load %struct.vnic_cq*, %struct.vnic_cq** %14, align 8
  %292 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %291, i32 0, i32 0
  %293 = load i64, i64* %39, align 8
  %294 = call i32 @enic_intr_update_pkt_size(i32* %292, i64 %293)
  br label %295

295:                                              ; preds = %290, %284
  br label %312

296:                                              ; preds = %113, %110
  %297 = load %struct.enic*, %struct.enic** %11, align 8
  %298 = getelementptr inbounds %struct.enic, %struct.enic* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %301 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %304 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %307 = call i32 @pci_unmap_single(i32 %299, i32 %302, i32 %305, i32 %306)
  %308 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %309 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %308)
  %310 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %8, align 8
  %311 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %310, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %311, align 8
  br label %312

312:                                              ; preds = %63, %94, %296, %295
  ret void
}

declare dso_local %struct.enic* @vnic_dev_priv(i32) #1

declare dso_local i64 @enic_cq_rq(%struct.enic*, i64) #1

declare dso_local i32 @cq_enet_rq_desc_dec(%struct.cq_enet_rq_desc*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @enic_rxcopybreak(%struct.net_device*, %struct.sk_buff**, %struct.vnic_rq_buf*, i64) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_mark_napi_id(%struct.sk_buff*, i32*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @enic_intr_update_pkt_size(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
