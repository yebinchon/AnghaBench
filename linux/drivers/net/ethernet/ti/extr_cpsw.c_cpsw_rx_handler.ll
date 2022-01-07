; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.cpsw_meta_xdp = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.cpsw_common = type { i32, %struct.TYPE_8__*, i32, i64, %struct.TYPE_6__, %struct.page_pool**, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.page_pool = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.cpsw_priv = type { i64, i32*, i64 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.xdp_buff = type { i8*, i8*, i8*, i32* }

@CPSW_XMETA_OFFSET = common dso_local global i32 0, align 4
@CPSW_HEADROOM = common dso_local global i32 0, align 4
@CPDMA_RX_VLAN_ENCAP = common dso_local global i32 0, align 4
@CPSW_RX_VLAN_ENCAP_HDR_SIZE = common dso_local global i32 0, align 4
@CPSW_XDP_PASS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @cpsw_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_rx_handler(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cpsw_meta_xdp*, align 8
  %11 = alloca %struct.cpsw_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.cpsw_priv*, align 8
  %19 = alloca %struct.page_pool*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.xdp_buff, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.page*
  store %struct.page* %24, %struct.page** %8, align 8
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i8* @page_address(%struct.page* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @CPSW_XMETA_OFFSET, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to %struct.cpsw_meta_xdp*
  store %struct.cpsw_meta_xdp* %31, %struct.cpsw_meta_xdp** %10, align 8
  %32 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %10, align 8
  %33 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %32, i32 0, i32 1
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %34)
  store %struct.cpsw_common* %35, %struct.cpsw_common** %11, align 8
  %36 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %37 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %39 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %10, align 8
  %40 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @CPSW_HEADROOM, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %10, align 8
  %44 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %43, i32 0, i32 1
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  store %struct.net_device* %45, %struct.net_device** %17, align 8
  %46 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %47 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @CPDMA_RX_SOURCE_PORT(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %61 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %60, i32 0, i32 6
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.net_device*, %struct.net_device** %67, align 8
  store %struct.net_device* %68, %struct.net_device** %17, align 8
  br label %69

69:                                               ; preds = %59, %54
  br label %70

70:                                               ; preds = %69, %51, %3
  %71 = load %struct.net_device*, %struct.net_device** %17, align 8
  %72 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %71)
  store %struct.cpsw_priv* %72, %struct.cpsw_priv** %18, align 8
  %73 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %74 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %73, i32 0, i32 5
  %75 = load %struct.page_pool**, %struct.page_pool*** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.page_pool*, %struct.page_pool** %75, i64 %77
  %79 = load %struct.page_pool*, %struct.page_pool** %78, align 8
  store %struct.page_pool* %79, %struct.page_pool** %19, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %70
  %86 = load %struct.net_device*, %struct.net_device** %17, align 8
  %87 = call i32 @netif_running(%struct.net_device* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %85, %70
  %94 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %95 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %101 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %108, %struct.page** %7, align 8
  br label %276

109:                                              ; preds = %104, %99, %93
  %110 = load %struct.page_pool*, %struct.page_pool** %19, align 8
  %111 = load %struct.page*, %struct.page** %8, align 8
  %112 = call i32 @page_pool_recycle_direct(%struct.page_pool* %110, %struct.page* %111)
  br label %318

113:                                              ; preds = %85
  %114 = load %struct.page_pool*, %struct.page_pool** %19, align 8
  %115 = call %struct.page* @page_pool_dev_alloc_pages(%struct.page_pool* %114)
  store %struct.page* %115, %struct.page** %7, align 8
  %116 = load %struct.page*, %struct.page** %7, align 8
  %117 = icmp ne %struct.page* %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %123, %struct.page** %7, align 8
  %124 = load %struct.net_device*, %struct.net_device** %17, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %276

129:                                              ; preds = %113
  %130 = load %struct.cpsw_priv*, %struct.cpsw_priv** %18, align 8
  %131 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %210

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @CPDMA_RX_VLAN_ENCAP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %134
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @CPSW_HEADROOM, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %140, i64 %142
  %144 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_SIZE, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr i8, i8* %143, i64 %145
  %147 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  store i8* %146, i8** %147, align 8
  %148 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr i8, i8* %149, i64 %151
  %153 = load i32, i32* @CPSW_RX_VLAN_ENCAP_HDR_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr i8, i8* %152, i64 %155
  %157 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 2
  store i8* %156, i8** %157, align 8
  br label %170

158:                                              ; preds = %134
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* @CPSW_HEADROOM, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %159, i64 %161
  %163 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  store i8* %162, i8** %163, align 8
  %164 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr i8, i8* %165, i64 %167
  %169 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %158, %139
  %171 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %21)
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 0
  store i8* %172, i8** %173, align 8
  %174 = load %struct.cpsw_priv*, %struct.cpsw_priv** %18, align 8
  %175 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 3
  store i32* %179, i32** %180, align 8
  %181 = load %struct.cpsw_priv*, %struct.cpsw_priv** %18, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.page*, %struct.page** %8, align 8
  %184 = call i32 @cpsw_run_xdp(%struct.cpsw_priv* %181, i32 %182, %struct.xdp_buff* %21, %struct.page* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @CPSW_XDP_PASS, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %170
  br label %276

189:                                              ; preds = %170
  %190 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = ptrtoint i8* %191 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = ptrtoint i8* %199 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* @CPDMA_RX_VLAN_ENCAP, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %6, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %189, %129
  %211 = load i8*, i8** %9, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @cpsw_rxbuf_total_len(i32 %212)
  %214 = call %struct.sk_buff* @build_skb(i8* %211, i32 %213)
  store %struct.sk_buff* %214, %struct.sk_buff** %20, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %216 = icmp ne %struct.sk_buff* %215, null
  br i1 %216, label %226, label %217

217:                                              ; preds = %210
  %218 = load %struct.net_device*, %struct.net_device** %17, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load %struct.page_pool*, %struct.page_pool** %19, align 8
  %224 = load %struct.page*, %struct.page** %8, align 8
  %225 = call i32 @page_pool_recycle_direct(%struct.page_pool* %223, %struct.page* %224)
  br label %276

226:                                              ; preds = %210
  %227 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @skb_reserve(%struct.sk_buff* %227, i32 %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @skb_put(%struct.sk_buff* %230, i32 %231)
  %233 = load %struct.net_device*, %struct.net_device** %17, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 1
  store %struct.net_device* %233, %struct.net_device** %235, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @CPDMA_RX_VLAN_ENCAP, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %226
  %241 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %242 = call i32 @cpsw_rx_vlan_encap(%struct.sk_buff* %241)
  br label %243

243:                                              ; preds = %240, %226
  %244 = load %struct.cpsw_priv*, %struct.cpsw_priv** %18, align 8
  %245 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %250 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %253 = call i32 @cpts_rx_timestamp(i32 %251, %struct.sk_buff* %252)
  br label %254

254:                                              ; preds = %248, %243
  %255 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %256 = load %struct.net_device*, %struct.net_device** %17, align 8
  %257 = call i32 @eth_type_trans(%struct.sk_buff* %255, %struct.net_device* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.page_pool*, %struct.page_pool** %19, align 8
  %261 = load %struct.page*, %struct.page** %8, align 8
  %262 = call i32 @page_pool_release_page(%struct.page_pool* %260, %struct.page* %261)
  %263 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %264 = call i32 @netif_receive_skb(%struct.sk_buff* %263)
  %265 = load i32, i32* %5, align 4
  %266 = load %struct.net_device*, %struct.net_device** %17, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, %265
  store i32 %270, i32* %268, align 4
  %271 = load %struct.net_device*, %struct.net_device** %17, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %254, %217, %188, %122, %107
  %277 = load %struct.page*, %struct.page** %7, align 8
  %278 = call i8* @page_address(%struct.page* %277)
  %279 = load i32, i32* @CPSW_XMETA_OFFSET, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr i8, i8* %278, i64 %280
  %282 = bitcast i8* %281 to %struct.cpsw_meta_xdp*
  store %struct.cpsw_meta_xdp* %282, %struct.cpsw_meta_xdp** %10, align 8
  %283 = load %struct.net_device*, %struct.net_device** %17, align 8
  %284 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %10, align 8
  %285 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %284, i32 0, i32 1
  store %struct.net_device* %283, %struct.net_device** %285, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %10, align 8
  %288 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  %289 = load %struct.page*, %struct.page** %7, align 8
  %290 = call i64 @page_pool_get_dma_addr(%struct.page* %289)
  %291 = load i32, i32* @CPSW_HEADROOM, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  store i64 %293, i64* %22, align 8
  %294 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %295 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %294, i32 0, i32 1
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.page*, %struct.page** %7, align 8
  %303 = load i64, i64* %22, align 8
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @cpdma_chan_submit_mapped(i32 %301, %struct.page* %302, i64 %303, i32 %304, i32 0)
  store i32 %305, i32* %13, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %276
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* @ENOMEM, align 4
  %311 = sub nsw i32 0, %310
  %312 = icmp eq i32 %309, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @WARN_ON(i32 %313)
  %315 = load %struct.page_pool*, %struct.page_pool** %19, align 8
  %316 = load %struct.page*, %struct.page** %7, align 8
  %317 = call i32 @page_pool_recycle_direct(%struct.page_pool* %315, %struct.page* %316)
  br label %318

318:                                              ; preds = %109, %308, %276
  ret void
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @CPDMA_RX_SOURCE_PORT(i32) #1

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @page_pool_recycle_direct(%struct.page_pool*, %struct.page*) #1

declare dso_local %struct.page* @page_pool_dev_alloc_pages(%struct.page_pool*) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @cpsw_run_xdp(%struct.cpsw_priv*, i32, %struct.xdp_buff*, %struct.page*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @cpsw_rxbuf_total_len(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpsw_rx_vlan_encap(%struct.sk_buff*) #1

declare dso_local i32 @cpts_rx_timestamp(i32, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @page_pool_release_page(%struct.page_pool*, %struct.page*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @page_pool_get_dma_addr(%struct.page*) #1

declare dso_local i32 @cpdma_chan_submit_mapped(i32, %struct.page*, i64, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
