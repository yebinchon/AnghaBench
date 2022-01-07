; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.ionic_desc_info*, %struct.TYPE_5__* }
%struct.ionic_desc_info = type { i64, %struct.ionic_desc_info* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.ionic_tx_stats = type { i32, i32, i32, i32 }
%struct.ionic_txq_sg_elem = type { i32, i32 }
%struct.ionic_txq_desc = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@SKB_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, %struct.sk_buff*)* @ionic_tx_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_tx_tso(%struct.ionic_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ionic_tx_stats*, align 8
  %7 = alloca %struct.ionic_desc_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.ionic_desc_info*, align 8
  %10 = alloca %struct.ionic_txq_sg_elem*, align 8
  %11 = alloca %struct.ionic_txq_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %34 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %35 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %34)
  store %struct.ionic_tx_stats* %35, %struct.ionic_tx_stats** %6, align 8
  %36 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %36, i32 0, i32 0
  %38 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %37, align 8
  store %struct.ionic_desc_info* %38, %struct.ionic_desc_info** %7, align 8
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.device*, %struct.device** %44, align 8
  store %struct.device* %45, %struct.device** %8, align 8
  %46 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  store %struct.ionic_desc_info* %46, %struct.ionic_desc_info** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %23, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @skb_headlen(%struct.sk_buff* %58)
  %60 = sub i32 %57, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SKB_GSO_GRE_CSUM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %68, %2
  %77 = phi i1 [ true, %2 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %27, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %28, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %85)
  store i32 %86, i32* %31, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %32, align 4
  %90 = load i32, i32* %32, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %76
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @ionic_tx_tcp_inner_pseudo_csum(%struct.sk_buff* %93)
  store i32 %94, i32* %33, align 4
  br label %98

95:                                               ; preds = %76
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @ionic_tx_tcp_pseudo_csum(%struct.sk_buff* %96)
  store i32 %97, i32* %33, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %33, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %33, align 4
  store i32 %102, i32* %3, align 4
  br label %436

103:                                              ; preds = %98
  %104 = load i32, i32* %32, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @skb_inner_transport_header(%struct.sk_buff* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub i32 %108, %111
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @inner_tcp_hdrlen(%struct.sk_buff* %113)
  %115 = add i32 %112, %114
  store i32 %115, i32* %16, align 4
  br label %122

116:                                              ; preds = %103
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @skb_transport_offset(%struct.sk_buff* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @tcp_hdrlen(%struct.sk_buff* %119)
  %121 = add i32 %118, %120
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %116, %106
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %23, align 4
  %125 = add i32 %123, %124
  store i32 %125, i32* %18, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @skb_headlen(%struct.sk_buff* %126)
  store i32 %127, i32* %21, align 4
  %128 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %129 = call %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue* %128, %struct.ionic_txq_sg_elem** %10)
  store %struct.ionic_txq_desc* %129, %struct.ionic_txq_desc** %11, align 8
  store i32 1, i32* %25, align 4
  br label %130

130:                                              ; preds = %200, %166, %122
  %131 = load i32, i32* %21, align 4
  %132 = icmp ugt i32 %131, 0
  br i1 %132, label %133, label %208

133:                                              ; preds = %130
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @min(i32 %134, i32 %135)
  store i32 %136, i32* %22, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %22, align 4
  %139 = sub i32 %137, %138
  store i32 %139, i32* %12, align 4
  %140 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %143, %144
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @ionic_tx_map_single(%struct.ionic_queue* %140, i32 %145, i32 %146)
  store i32 %147, i32* %15, align 4
  %148 = load %struct.device*, %struct.device** %8, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i64 @dma_mapping_error(%struct.device* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %133
  br label %412

153:                                              ; preds = %133
  %154 = load i32, i32* %22, align 4
  store i32 %154, i32* %29, align 4
  store i64 0, i64* %30, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %21, align 4
  %157 = sub i32 %156, %155
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp ugt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %153
  %164 = load i32, i32* %12, align 4
  %165 = icmp ugt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %130

167:                                              ; preds = %163, %153
  %168 = load i32, i32* %17, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = icmp eq i32 %171, 0
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi i1 [ false, %167 ], [ %172, %170 ]
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %26, align 4
  %176 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %177 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %11, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i64, i64* %30, align 8
  %181 = load i32, i32* %29, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %31, align 4
  %186 = load i32, i32* %28, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %26, align 4
  %189 = call i32 @ionic_tx_tso_post(%struct.ionic_queue* %176, %struct.ionic_txq_desc* %177, %struct.sk_buff* %178, i32 %179, i64 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i64, i64* %20, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %20, align 8
  %192 = load i32, i32* %25, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %173
  %195 = load i32, i32* %22, align 4
  br label %200

196:                                              ; preds = %173
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %16, align 4
  %199 = add i32 %197, %198
  br label %200

200:                                              ; preds = %196, %194
  %201 = phi i32 [ %195, %194 ], [ %199, %196 ]
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %19, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %19, align 8
  %205 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %206 = call %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue* %205, %struct.ionic_txq_sg_elem** %10)
  store %struct.ionic_txq_desc* %206, %struct.ionic_txq_desc** %11, align 8
  store i32 0, i32* %25, align 4
  %207 = load i32, i32* %23, align 4
  store i32 %207, i32* %18, align 4
  br label %130

208:                                              ; preds = %130
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %209)
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  store i32* %212, i32** %24, align 8
  br label %213

213:                                              ; preds = %390, %208
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %393

216:                                              ; preds = %213
  store i32 0, i32* %13, align 4
  %217 = load i32*, i32** %24, align 8
  %218 = call i32 @skb_frag_size(i32* %217)
  store i32 %218, i32* %21, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %14, align 4
  %221 = sub i32 %220, %219
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %17, align 4
  %223 = add i32 %222, -1
  store i32 %223, i32* %17, align 4
  %224 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %225 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %388, %347, %276, %216
  %229 = load i32, i32* %21, align 4
  %230 = icmp ugt i32 %229, 0
  br i1 %230, label %231, label %389

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = icmp ugt i32 %232, 0
  br i1 %233, label %234, label %317

234:                                              ; preds = %231
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %21, align 4
  %237 = call i32 @min(i32 %235, i32 %236)
  store i32 %237, i32* %22, align 4
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %12, align 4
  %240 = sub i32 %239, %238
  store i32 %240, i32* %12, align 4
  %241 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %242 = load i32*, i32** %24, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %22, align 4
  %245 = call i32 @ionic_tx_map_frag(%struct.ionic_queue* %241, i32* %242, i32 %243, i32 %244)
  %246 = call i32 @cpu_to_le64(i32 %245)
  %247 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %248 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load %struct.device*, %struct.device** %8, align 8
  %250 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %251 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @dma_mapping_error(%struct.device* %249, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %234
  br label %412

256:                                              ; preds = %234
  %257 = load i32, i32* %22, align 4
  %258 = call i32 @cpu_to_le16(i32 %257)
  %259 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %260 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 4
  %261 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %262 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %261, i32 1
  store %struct.ionic_txq_sg_elem* %262, %struct.ionic_txq_sg_elem** %10, align 8
  %263 = load i64, i64* %30, align 8
  %264 = add nsw i64 %263, 1
  store i64 %264, i64* %30, align 8
  %265 = load i32, i32* %22, align 4
  %266 = load i32, i32* %21, align 4
  %267 = sub i32 %266, %265
  store i32 %267, i32* %21, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %17, align 4
  %272 = icmp ugt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %256
  %274 = load i32, i32* %12, align 4
  %275 = icmp ugt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %228

277:                                              ; preds = %273, %256
  %278 = load i32, i32* %17, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32, i32* %21, align 4
  %282 = icmp eq i32 %281, 0
  br label %283

283:                                              ; preds = %280, %277
  %284 = phi i1 [ false, %277 ], [ %282, %280 ]
  %285 = zext i1 %284 to i32
  store i32 %285, i32* %26, align 4
  %286 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %287 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %11, align 8
  %288 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load i64, i64* %30, align 8
  %291 = load i32, i32* %29, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %23, align 4
  %294 = load i32, i32* %27, align 4
  %295 = load i32, i32* %31, align 4
  %296 = load i32, i32* %28, align 4
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %26, align 4
  %299 = call i32 @ionic_tx_tso_post(%struct.ionic_queue* %286, %struct.ionic_txq_desc* %287, %struct.sk_buff* %288, i32 %289, i64 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load i64, i64* %20, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %20, align 8
  %302 = load i32, i32* %25, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %283
  %305 = load i32, i32* %22, align 4
  br label %310

306:                                              ; preds = %283
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %16, align 4
  %309 = add i32 %307, %308
  br label %310

310:                                              ; preds = %306, %304
  %311 = phi i32 [ %305, %304 ], [ %309, %306 ]
  %312 = zext i32 %311 to i64
  %313 = load i64, i64* %19, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %19, align 8
  %315 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %316 = call %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue* %315, %struct.ionic_txq_sg_elem** %10)
  store %struct.ionic_txq_desc* %316, %struct.ionic_txq_desc** %11, align 8
  store i32 0, i32* %25, align 4
  br label %388

317:                                              ; preds = %231
  %318 = load i32, i32* %23, align 4
  %319 = load i32, i32* %21, align 4
  %320 = call i32 @min(i32 %318, i32 %319)
  store i32 %320, i32* %22, align 4
  %321 = load i32, i32* %23, align 4
  %322 = load i32, i32* %22, align 4
  %323 = sub i32 %321, %322
  store i32 %323, i32* %12, align 4
  %324 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %325 = load i32*, i32** %24, align 8
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %22, align 4
  %328 = call i32 @ionic_tx_map_frag(%struct.ionic_queue* %324, i32* %325, i32 %326, i32 %327)
  store i32 %328, i32* %15, align 4
  %329 = load %struct.device*, %struct.device** %8, align 8
  %330 = load i32, i32* %15, align 4
  %331 = call i64 @dma_mapping_error(%struct.device* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %317
  br label %412

334:                                              ; preds = %317
  %335 = load i32, i32* %22, align 4
  store i32 %335, i32* %29, align 4
  store i64 0, i64* %30, align 8
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %21, align 4
  %338 = sub i32 %337, %336
  store i32 %338, i32* %21, align 4
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* %13, align 4
  %341 = add i32 %340, %339
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp ugt i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %334
  %345 = load i32, i32* %12, align 4
  %346 = icmp ugt i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  br label %228

348:                                              ; preds = %344, %334
  %349 = load i32, i32* %17, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i32, i32* %21, align 4
  %353 = icmp eq i32 %352, 0
  br label %354

354:                                              ; preds = %351, %348
  %355 = phi i1 [ false, %348 ], [ %353, %351 ]
  %356 = zext i1 %355 to i32
  store i32 %356, i32* %26, align 4
  %357 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %358 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %11, align 8
  %359 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %360 = load i32, i32* %15, align 4
  %361 = load i64, i64* %30, align 8
  %362 = load i32, i32* %29, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* %23, align 4
  %365 = load i32, i32* %27, align 4
  %366 = load i32, i32* %31, align 4
  %367 = load i32, i32* %28, align 4
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %26, align 4
  %370 = call i32 @ionic_tx_tso_post(%struct.ionic_queue* %357, %struct.ionic_txq_desc* %358, %struct.sk_buff* %359, i32 %360, i64 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load i64, i64* %20, align 8
  %372 = add nsw i64 %371, 1
  store i64 %372, i64* %20, align 8
  %373 = load i32, i32* %25, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %354
  %376 = load i32, i32* %22, align 4
  br label %381

377:                                              ; preds = %354
  %378 = load i32, i32* %22, align 4
  %379 = load i32, i32* %16, align 4
  %380 = add i32 %378, %379
  br label %381

381:                                              ; preds = %377, %375
  %382 = phi i32 [ %376, %375 ], [ %380, %377 ]
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %19, align 8
  %385 = add nsw i64 %384, %383
  store i64 %385, i64* %19, align 8
  %386 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %387 = call %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue* %386, %struct.ionic_txq_sg_elem** %10)
  store %struct.ionic_txq_desc* %387, %struct.ionic_txq_desc** %11, align 8
  store i32 0, i32* %25, align 4
  br label %388

388:                                              ; preds = %381, %310
  br label %228

389:                                              ; preds = %228
  br label %390

390:                                              ; preds = %389
  %391 = load i32*, i32** %24, align 8
  %392 = getelementptr inbounds i32, i32* %391, i32 1
  store i32* %392, i32** %24, align 8
  br label %213

393:                                              ; preds = %213
  %394 = load i64, i64* %20, align 8
  %395 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %396 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = add nsw i64 %398, %394
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %396, align 4
  %401 = load i64, i64* %19, align 8
  %402 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %403 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = add nsw i64 %405, %401
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %403, align 4
  %408 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %409 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4
  store i32 0, i32* %3, align 4
  br label %436

412:                                              ; preds = %333, %255, %152
  br label %413

413:                                              ; preds = %423, %412
  %414 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %9, align 8
  %415 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %418 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %417, i32 0, i32 0
  %419 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %418, align 8
  %420 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %416, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %413
  %424 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %425 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %9, align 8
  %426 = call i32 @ionic_tx_clean(%struct.ionic_queue* %424, %struct.ionic_desc_info* %425, i32* null, i32* null)
  %427 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %9, align 8
  %428 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %427, i32 0, i32 1
  %429 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %428, align 8
  store %struct.ionic_desc_info* %429, %struct.ionic_desc_info** %9, align 8
  br label %413

430:                                              ; preds = %413
  %431 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %432 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %433 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %432, i32 0, i32 0
  store %struct.ionic_desc_info* %431, %struct.ionic_desc_info** %433, align 8
  %434 = load i32, i32* @ENOMEM, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %3, align 4
  br label %436

436:                                              ; preds = %430, %393, %101
  %437 = load i32, i32* %3, align 4
  ret i32 %437
}

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_tcp_inner_pseudo_csum(%struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_tcp_pseudo_csum(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.ionic_txq_desc* @ionic_tx_tso_next(%struct.ionic_queue*, %struct.ionic_txq_sg_elem**) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ionic_tx_map_single(%struct.ionic_queue*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @ionic_tx_tso_post(%struct.ionic_queue*, %struct.ionic_txq_desc*, %struct.sk_buff*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ionic_tx_map_frag(%struct.ionic_queue*, i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ionic_tx_clean(%struct.ionic_queue*, %struct.ionic_desc_info*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
