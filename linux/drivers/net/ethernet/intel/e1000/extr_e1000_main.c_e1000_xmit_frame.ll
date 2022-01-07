; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i64, i32, i32, %struct.e1000_tx_ring*, %struct.e1000_hw }
%struct.e1000_tx_ring = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_hw = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@E1000_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@E1000_MAX_TXD_PWR = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"__pskb_pull_tail failed.\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@e1000_82547 = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_NO_FCS = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @e1000_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.e1000_tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %23)
  store %struct.e1000_adapter* %24, %struct.e1000_adapter** %6, align 8
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 4
  store %struct.e1000_hw* %26, %struct.e1000_hw** %7, align 8
  %27 = load i32, i32* @E1000_MAX_DATA_PER_TXD, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @E1000_MAX_TXD_PWR, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 @vlan_get_protocol(%struct.sk_buff* %31)
  store i64 %32, i64* %19, align 8
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 3
  %35 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %34, align 8
  store %struct.e1000_tx_ring* %35, %struct.e1000_tx_ring** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i64 @eth_skb_pad(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %396

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @fls(i32 %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @skb_transport_offset(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @tcp_hdrlen(%struct.sk_buff* %58)
  %60 = add i32 %57, %59
  store i32 %60, i32* %20, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %48
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %99 [
    i32 128, label %73
  ]

73:                                               ; preds = %69
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @skb_tail_pointer(%struct.sk_buff* %74)
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = and i64 %77, 4
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %100

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @min(i32 4, i32 %84)
  store i32 %85, i32* %21, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @__pskb_pull_tail(%struct.sk_buff* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @drv, align 4
  %92 = call i32 @e_err(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %93)
  %95 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %396

96:                                               ; preds = %81
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @skb_headlen(%struct.sk_buff* %97)
  store i32 %98, i32* %13, align 4
  br label %100

99:                                               ; preds = %69
  br label %100

100:                                              ; preds = %99, %96, %80
  br label %101

101:                                              ; preds = %100, %65, %48
  br label %102

102:                                              ; preds = %101, %41
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %114
  %122 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %123 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i32 @skb_is_gso(%struct.sk_buff* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %130, %126, %121, %114
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i64 @TXD_USE_COUNT(i32 %134, i32 %135)
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %16, align 4
  %141 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %145, %133
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @e1000_bus_type_pcix, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = icmp ugt i32 %155, 2015
  br label %157

157:                                              ; preds = %154, %148
  %158 = phi i1 [ false, %148 ], [ %156, %154 ]
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %162, %157
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %166)
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %170

170:                                              ; preds = %189, %165
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = call i32 @skb_frag_size(i32* %181)
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @TXD_USE_COUNT(i32 %182, i32 %183)
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %174
  %190 = load i32, i32* %18, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %18, align 4
  br label %170

192:                                              ; preds = %170
  %193 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %194 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %16, align 4
  %200 = add i32 %199, %198
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, 2
  %206 = call i32 @e1000_maybe_stop_tx(%struct.net_device* %202, %struct.e1000_tx_ring* %203, i32 %205)
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %210, i32* %3, align 4
  br label %396

211:                                              ; preds = %201
  %212 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %213 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @e1000_82547, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = call i64 @e1000_82547_fifo_workaround(%struct.e1000_adapter* %218, %struct.sk_buff* %219)
  %221 = icmp ne i64 %220, 0
  br label %222

222:                                              ; preds = %217, %211
  %223 = phi i1 [ false, %211 ], [ %221, %217 ]
  %224 = zext i1 %223 to i32
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  %228 = load %struct.net_device*, %struct.net_device** %5, align 8
  %229 = call i32 @netif_stop_queue(%struct.net_device* %228)
  %230 = load i32, i32* @__E1000_DOWN, align 4
  %231 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %232 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %231, i32 0, i32 2
  %233 = call i32 @test_bit(i32 %230, i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %227
  %236 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %237 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %236, i32 0, i32 1
  %238 = call i32 @schedule_delayed_work(i32* %237, i32 1)
  br label %239

239:                                              ; preds = %235, %227
  %240 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %240, i32* %3, align 4
  br label %396

241:                                              ; preds = %222
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = load i32, i32* @E1000_TX_FLAGS_VLAN, align 4
  %247 = load i32, i32* %12, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %12, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %249)
  %251 = load i32, i32* @E1000_TX_FLAGS_VLAN_SHIFT, align 4
  %252 = shl i32 %250, %251
  %253 = load i32, i32* %12, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %245, %241
  %256 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %257 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %9, align 4
  %259 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %260 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %261 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %262 = load i64, i64* %19, align 8
  %263 = call i32 @e1000_tso(%struct.e1000_adapter* %259, %struct.e1000_tx_ring* %260, %struct.sk_buff* %261, i64 %262)
  store i32 %263, i32* %17, align 4
  %264 = load i32, i32* %17, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %255
  %267 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %268 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %267)
  %269 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %269, i32* %3, align 4
  br label %396

270:                                              ; preds = %255
  %271 = load i32, i32* %17, align 4
  %272 = call i64 @likely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  %275 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %276 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 128
  %279 = zext i1 %278 to i32
  %280 = call i64 @likely(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %274
  %283 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %284 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %283, i32 0, i32 0
  store i32 1, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %274
  %286 = load i32, i32* @E1000_TX_FLAGS_TSO, align 4
  %287 = load i32, i32* %12, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %12, align 4
  br label %302

289:                                              ; preds = %270
  %290 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %291 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %293 = load i64, i64* %19, align 8
  %294 = call i32 @e1000_tx_csum(%struct.e1000_adapter* %290, %struct.e1000_tx_ring* %291, %struct.sk_buff* %292, i64 %293)
  %295 = call i64 @likely(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %289
  %298 = load i32, i32* @E1000_TX_FLAGS_CSUM, align 4
  %299 = load i32, i32* %12, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %297, %289
  br label %302

302:                                              ; preds = %301, %285
  %303 = load i64, i64* %19, align 8
  %304 = load i32, i32* @ETH_P_IP, align 4
  %305 = call i64 @htons(i32 %304)
  %306 = icmp eq i64 %303, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i32, i32* @E1000_TX_FLAGS_IPV4, align 4
  %309 = load i32, i32* %12, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %307, %302
  %312 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %313 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @unlikely(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load i32, i32* @E1000_TX_FLAGS_NO_FCS, align 4
  %319 = load i32, i32* %12, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %12, align 4
  br label %321

321:                                              ; preds = %317, %311
  %322 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %323 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %14, align 4
  %328 = load i32, i32* %15, align 4
  %329 = call i32 @e1000_tx_map(%struct.e1000_adapter* %322, %struct.e1000_tx_ring* %323, %struct.sk_buff* %324, i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %16, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %381

332:                                              ; preds = %321
  %333 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %334 = add nsw i32 %333, 7
  store i32 %334, i32* %22, align 4
  %335 = load %struct.net_device*, %struct.net_device** %5, align 8
  %336 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %337 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @netdev_sent_queue(%struct.net_device* %335, i32 %338)
  %340 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %341 = call i32 @skb_tx_timestamp(%struct.sk_buff* %340)
  %342 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %343 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %16, align 4
  %346 = call i32 @e1000_tx_queue(%struct.e1000_adapter* %342, %struct.e1000_tx_ring* %343, i32 %344, i32 %345)
  %347 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %348 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %332
  %352 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %353 = add nsw i32 %352, 1
  %354 = load i32, i32* %22, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %22, align 4
  br label %356

356:                                              ; preds = %351, %332
  %357 = load %struct.net_device*, %struct.net_device** %5, align 8
  %358 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %359 = load i32, i32* %22, align 4
  %360 = call i32 @e1000_maybe_stop_tx(%struct.net_device* %357, %struct.e1000_tx_ring* %358, i32 %359)
  %361 = call i32 (...) @netdev_xmit_more()
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %356
  %364 = load %struct.net_device*, %struct.net_device** %5, align 8
  %365 = call i32 @netdev_get_tx_queue(%struct.net_device* %364, i32 0)
  %366 = call i64 @netif_xmit_stopped(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %363, %356
  %369 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %370 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %373 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %376 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = add nsw i64 %374, %377
  %379 = call i32 @writel(i32 %371, i64 %378)
  br label %380

380:                                              ; preds = %368, %363
  br label %394

381:                                              ; preds = %321
  %382 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %383 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %382)
  %384 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %385 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %384, i32 0, i32 2
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 0
  store i64 0, i64* %390, align 8
  %391 = load i32, i32* %9, align 4
  %392 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %393 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  br label %394

394:                                              ; preds = %381, %380
  %395 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %394, %266, %239, %209, %90, %39
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @TXD_USE_COUNT(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @e1000_maybe_stop_tx(%struct.net_device*, %struct.e1000_tx_ring*, i32) #1

declare dso_local i64 @e1000_82547_fifo_workaround(%struct.e1000_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @e1000_tso(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @e1000_tx_csum(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @e1000_tx_map(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @e1000_tx_queue(%struct.e1000_adapter*, %struct.e1000_tx_ring*, i32, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
