; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_skb_shape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_skb_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64, i32, i64, i32, i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@ETH_ZLEN = common dso_local global i32 0, align 4
@VNET_PACKET_SKIP = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @vnet_skb_shape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vnet_skb_shape(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ETH_ZLEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load i32, i32* @ETH_ZLEN, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 7
  %41 = sub nsw i32 8, %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %71, %35
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @skb_frag_off(i32* %66)
  %68 = and i32 %67, 7
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %78, 7
  %80 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %96, label %83

83:                                               ; preds = %74
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @skb_tailroom(%struct.sk_buff* %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @skb_headroom(%struct.sk_buff* %89)
  %91 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %353

96:                                               ; preds = %93, %88, %83, %74
  store i32 0, i32* %12, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ETH_ZLEN, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @ETH_ZLEN, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %105, %102 ], [ %107, %106 ]
  store i32 %109, i32* %8, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call %struct.sk_buff* @alloc_and_align_skb(i32 %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i32 @dev_kfree_skb(%struct.sk_buff* %118)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %355

120:                                              ; preds = %108
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = load i32, i32* @VNET_PACKET_SKIP, align 4
  %123 = call i32 @skb_reserve(%struct.sk_buff* %121, i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @skb_mac_header(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %13, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @skb_set_mac_header(%struct.sk_buff* %135, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @skb_network_header(%struct.sk_buff* %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @skb_set_network_header(%struct.sk_buff* %144, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call i32 @skb_transport_header(%struct.sk_buff* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %13, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @skb_set_transport_header(%struct.sk_buff* %153, i32 %154)
  store i32 0, i32* %13, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %120
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %172)
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %171, %120
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %304

177:                                              ; preds = %174
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %178, %181
  store i32 %182, i32* %15, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @skb_copy_bits(%struct.sk_buff* %183, i32 0, i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %177
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = call i32 @dev_kfree_skb(%struct.sk_buff* %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @dev_kfree_skb(%struct.sk_buff* %193)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %355

195:                                              ; preds = %177
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i64*
  store i64 0, i64* %202, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %207, %208
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i64 @skb_copy_and_csum_bits(%struct.sk_buff* %203, i32 %204, i32 %209, i32 %214, i32 0)
  store i64 %215, i64* %14, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @ETH_P_IP, align 4
  %220 = call i64 @htons(i32 %219)
  %221 = icmp eq i64 %218, %220
  br i1 %221, label %222, label %254

222:                                              ; preds = %195
  %223 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %224 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %223)
  store %struct.iphdr* %224, %struct.iphdr** %16, align 8
  %225 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @IPPROTO_TCP, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %222
  %231 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %232 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @IPPROTO_UDP, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %230, %222
  %237 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %241 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %249 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %14, align 8
  %252 = call i64 @csum_tcpudp_magic(i32 %239, i32 %242, i32 %247, i64 %250, i64 %251)
  store i64 %252, i64* %14, align 8
  br label %253

253:                                              ; preds = %236, %230
  br label %292

254:                                              ; preds = %195
  %255 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* @ETH_P_IPV6, align 4
  %259 = call i64 @htons(i32 %258)
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %261, label %291

261:                                              ; preds = %254
  %262 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %263 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %262)
  store %struct.ipv6hdr* %263, %struct.ipv6hdr** %17, align 8
  %264 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %265 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @IPPROTO_TCP, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %261
  %270 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %271 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @IPPROTO_UDP, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %290

275:                                              ; preds = %269, %261
  %276 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %277 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %276, i32 0, i32 2
  %278 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %279 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %278, i32 0, i32 1
  %280 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %281 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sub nsw i32 %282, %283
  %285 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %286 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %14, align 8
  %289 = call i64 @csum_ipv6_magic(i32* %277, i32* %279, i32 %284, i64 %287, i64 %288)
  store i64 %289, i64* %14, align 8
  br label %290

290:                                              ; preds = %275, %269
  br label %291

291:                                              ; preds = %290, %254
  br label %292

292:                                              ; preds = %291, %253
  %293 = load i64, i64* %14, align 8
  %294 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %15, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to i64*
  store i64 %293, i64* %300, align 8
  %301 = load i64, i64* @CHECKSUM_NONE, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 4
  store i64 %301, i64* %303, align 8
  br label %320

304:                                              ; preds = %174
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %307 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @skb_copy_bits(%struct.sk_buff* %305, i32 0, i32 %308, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %304
  %315 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %316 = call i32 @dev_kfree_skb(%struct.sk_buff* %315)
  %317 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %318 = call i32 @dev_kfree_skb(%struct.sk_buff* %317)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %355

319:                                              ; preds = %304
  br label %320

320:                                              ; preds = %319, %292
  %321 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %322 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %323 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @skb_put(%struct.sk_buff* %321, i32 %324)
  %326 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %327 = call i64 @skb_is_gso(%struct.sk_buff* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %344

329:                                              ; preds = %320
  %330 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %331 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %330)
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %335 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %334)
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 2
  store i32 %333, i32* %336, align 8
  %337 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %338 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %337)
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %342 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %341)
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 1
  store i32 %340, i32* %343, align 4
  br label %344

344:                                              ; preds = %329, %320
  %345 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %346 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %349 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %348, i32 0, i32 5
  store i32 %347, i32* %349, align 8
  %350 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %351 = call i32 @dev_kfree_skb(%struct.sk_buff* %350)
  %352 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %352, %struct.sk_buff** %4, align 8
  br label %353

353:                                              ; preds = %344, %93
  %354 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %354, %struct.sk_buff** %3, align 8
  br label %355

355:                                              ; preds = %353, %314, %190, %117
  %356 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %356
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_and_align_skb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_copy_and_csum_bits(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i64, i64) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i64, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
