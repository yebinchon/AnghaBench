; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_enable_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_enable_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8*, i64 }
%struct.iavf_ring = type { i32 }
%union.anon = type { %struct.iphdr* }
%struct.iphdr = type { i32, i32 }
%union.anon.0 = type { %struct.tcphdr* }
%struct.tcphdr = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IAVF_TX_DESC_LENGTH_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IAVF_TX_CTX_EXT_IP_IPV4 = common dso_local global i32 0, align 4
@IAVF_TX_CTX_EXT_IP_IPV4_NO_CSUM = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_IPV6 = common dso_local global i32 0, align 4
@IAVF_TX_CTX_EXT_IP_IPV6 = common dso_local global i32 0, align 4
@IAVF_TXD_CTX_UDP_TUNNELING = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_VXLAN_TUNNEL = common dso_local global i32 0, align 4
@IAVF_TXD_CTX_GRE_TUNNELING = common dso_local global i32 0, align 4
@IAVF_TXD_CTX_QW0_EXT_IPLEN_SHIFT = common dso_local global i32 0, align 4
@IAVF_TXD_CTX_QW0_NATLEN_SHIFT = common dso_local global i32 0, align 4
@SKB_GSO_PARTIAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@IAVF_TXD_CTX_QW0_L4T_CS_MASK = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_IIPT_IPV4_CSUM = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_IIPT_IPV4 = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_IIPT_IPV6 = common dso_local global i32 0, align 4
@IAVF_TX_DESC_LENGTH_IPLEN_SHIFT = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_L4T_EOFT_TCP = common dso_local global i32 0, align 4
@IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_L4T_EOFT_SCTP = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_L4T_EOFT_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32*, i32*, %struct.iavf_ring*, i32*)* @iavf_tx_enable_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_tx_enable_csum(%struct.sk_buff* %0, i32* %1, i32* %2, i32* %3, %struct.iavf_ring* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iavf_ring*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca %union.anon.0, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.iavf_ring* %4, %struct.iavf_ring** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %370

28:                                               ; preds = %6
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i8* @skb_network_header(%struct.sk_buff* %29)
  %31 = bitcast %union.anon* %14 to i8**
  store i8* %30, i8** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i8* @skb_transport_header(%struct.sk_buff* %32)
  %34 = bitcast %union.anon.0* %15 to i8**
  store i8* %33, i8** %34, align 8
  %35 = bitcast %union.anon* %14 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %36 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv i64 %42, 2
  %44 = load i32, i32* @IAVF_TX_DESC_LENGTH_MACLEN_SHIFT, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %17, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %242

52:                                               ; preds = %28
  store i32 0, i32* %21, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IAVF_TX_FLAGS_IPV4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @IAVF_TX_CTX_EXT_IP_IPV4, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @IAVF_TX_CTX_EXT_IP_IPV4_NO_CSUM, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %21, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %21, align 4
  %72 = bitcast %union.anon* %14 to %struct.iphdr**
  %73 = load %struct.iphdr*, %struct.iphdr** %72, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  br label %110

76:                                               ; preds = %52
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IAVF_TX_FLAGS_IPV6, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %76
  %83 = load i32, i32* @IAVF_TX_CTX_EXT_IP_IPV6, align 4
  %84 = load i32, i32* %21, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %21, align 4
  %86 = bitcast %union.anon* %14 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  store i8* %88, i8** %16, align 8
  %89 = bitcast %union.anon* %14 to %struct.ipv6hdr**
  %90 = load %struct.ipv6hdr*, %struct.ipv6hdr** %89, align 8
  %91 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %20, align 4
  %93 = bitcast %union.anon.0* %15 to i8**
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %82
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %99 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %98, i32 %106, i32* %20, i32* %19)
  br label %108

108:                                              ; preds = %97, %82
  br label %109

109:                                              ; preds = %108, %76
  br label %110

110:                                              ; preds = %109, %68
  %111 = load i32, i32* %20, align 4
  switch i32 %111, label %136 [
    i32 128, label %112
    i32 133, label %120
    i32 132, label %128
    i32 131, label %128
  ]

112:                                              ; preds = %110
  %113 = load i32, i32* @IAVF_TXD_CTX_UDP_TUNNELING, align 4
  %114 = load i32, i32* %21, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* @IAVF_TX_FLAGS_VXLAN_TUNNEL, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %146

120:                                              ; preds = %110
  %121 = load i32, i32* @IAVF_TXD_CTX_GRE_TUNNELING, align 4
  %122 = load i32, i32* %21, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* @IAVF_TX_FLAGS_VXLAN_TUNNEL, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %146

128:                                              ; preds = %110, %110
  %129 = load i32, i32* @IAVF_TX_FLAGS_VXLAN_TUNNEL, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i8* @skb_inner_network_header(%struct.sk_buff* %133)
  %135 = bitcast %union.anon.0* %15 to i8**
  store i8* %134, i8** %135, align 8
  br label %146

136:                                              ; preds = %110
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 -1, i32* %7, align 4
  br label %370

143:                                              ; preds = %136
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = call i32 @skb_checksum_help(%struct.sk_buff* %144)
  store i32 0, i32* %7, align 4
  br label %370

146:                                              ; preds = %128, %120, %112
  %147 = bitcast %union.anon.0* %15 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = bitcast %union.anon* %14 to i8**
  %150 = load i8*, i8** %149, align 8
  %151 = ptrtoint i8* %148 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv i64 %153, 4
  %155 = load i32, i32* @IAVF_TXD_CTX_QW0_EXT_IPLEN_SHIFT, align 4
  %156 = zext i32 %155 to i64
  %157 = shl i64 %154, %156
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = or i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %21, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = call i8* @skb_inner_network_header(%struct.sk_buff* %162)
  %164 = bitcast %union.anon* %14 to i8**
  store i8* %163, i8** %164, align 8
  %165 = bitcast %union.anon* %14 to i8**
  %166 = load i8*, i8** %165, align 8
  %167 = bitcast %union.anon.0* %15 to i8**
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %166 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv i64 %171, 2
  %173 = load i32, i32* @IAVF_TXD_CTX_QW0_NATLEN_SHIFT, align 4
  %174 = zext i32 %173 to i64
  %175 = shl i64 %172, %174
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = or i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %21, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %146
  %186 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %187 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %186)
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SKB_GSO_PARTIAL, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %185
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %194)
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i32, i32* @IAVF_TXD_CTX_QW0_L4T_CS_MASK, align 4
  %203 = load i32, i32* %21, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %21, align 4
  br label %205

205:                                              ; preds = %201, %193, %185, %146
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = call i8* @skb_inner_transport_header(%struct.sk_buff* %210)
  %212 = bitcast %union.anon.0* %15 to i8**
  store i8* %211, i8** %212, align 8
  store i32 0, i32* %20, align 4
  %213 = load i32, i32* @IAVF_TX_FLAGS_IPV4, align 4
  %214 = load i32, i32* @IAVF_TX_FLAGS_IPV6, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %216
  store i32 %219, i32* %217, align 4
  %220 = bitcast %union.anon* %14 to %struct.iphdr**
  %221 = load %struct.iphdr*, %struct.iphdr** %220, align 8
  %222 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %230

225:                                              ; preds = %205
  %226 = load i32, i32* @IAVF_TX_FLAGS_IPV4, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %226
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %225, %205
  %231 = bitcast %union.anon* %14 to %struct.ipv6hdr**
  %232 = load %struct.ipv6hdr*, %struct.ipv6hdr** %231, align 8
  %233 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 6
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load i32, i32* @IAVF_TX_FLAGS_IPV6, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %237
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %236, %230
  br label %242

242:                                              ; preds = %241, %28
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @IAVF_TX_FLAGS_IPV4, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %266

248:                                              ; preds = %242
  %249 = bitcast %union.anon* %14 to %struct.iphdr**
  %250 = load %struct.iphdr*, %struct.iphdr** %249, align 8
  %251 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %20, align 4
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = load i32, i32* @IAVF_TX_DESC_CMD_IIPT_IPV4_CSUM, align 4
  br label %262

260:                                              ; preds = %248
  %261 = load i32, i32* @IAVF_TX_DESC_CMD_IIPT_IPV4, align 4
  br label %262

262:                                              ; preds = %260, %258
  %263 = phi i32 [ %259, %258 ], [ %261, %260 ]
  %264 = load i32, i32* %18, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %18, align 4
  br label %300

266:                                              ; preds = %242
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IAVF_TX_FLAGS_IPV6, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %299

272:                                              ; preds = %266
  %273 = load i32, i32* @IAVF_TX_DESC_CMD_IIPT_IPV6, align 4
  %274 = load i32, i32* %18, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %18, align 4
  %276 = bitcast %union.anon* %14 to i8**
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 8
  store i8* %278, i8** %16, align 8
  %279 = bitcast %union.anon* %14 to %struct.ipv6hdr**
  %280 = load %struct.ipv6hdr*, %struct.ipv6hdr** %279, align 8
  %281 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %20, align 4
  %283 = bitcast %union.anon.0* %15 to i8**
  %284 = load i8*, i8** %283, align 8
  %285 = load i8*, i8** %16, align 8
  %286 = icmp ne i8* %284, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %272
  %288 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %289 = load i8*, i8** %16, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = ptrtoint i8* %289 to i64
  %294 = ptrtoint i8* %292 to i64
  %295 = sub i64 %293, %294
  %296 = trunc i64 %295 to i32
  %297 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %288, i32 %296, i32* %20, i32* %19)
  br label %298

298:                                              ; preds = %287, %272
  br label %299

299:                                              ; preds = %298, %266
  br label %300

300:                                              ; preds = %299, %262
  %301 = bitcast %union.anon.0* %15 to i8**
  %302 = load i8*, i8** %301, align 8
  %303 = bitcast %union.anon* %14 to i8**
  %304 = load i8*, i8** %303, align 8
  %305 = ptrtoint i8* %302 to i64
  %306 = ptrtoint i8* %304 to i64
  %307 = sub i64 %305, %306
  %308 = sdiv i64 %307, 4
  %309 = load i32, i32* @IAVF_TX_DESC_LENGTH_IPLEN_SHIFT, align 4
  %310 = zext i32 %309 to i64
  %311 = shl i64 %308, %310
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = or i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %17, align 4
  %316 = load i32, i32* %20, align 4
  switch i32 %316, label %351 [
    i32 129, label %317
    i32 130, label %329
    i32 128, label %340
  ]

317:                                              ; preds = %300
  %318 = load i32, i32* @IAVF_TX_DESC_CMD_L4T_EOFT_TCP, align 4
  %319 = load i32, i32* %18, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %18, align 4
  %321 = bitcast %union.anon.0* %15 to %struct.tcphdr**
  %322 = load %struct.tcphdr*, %struct.tcphdr** %321, align 8
  %323 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %326 = shl i32 %324, %325
  %327 = load i32, i32* %17, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %17, align 4
  br label %361

329:                                              ; preds = %300
  %330 = load i32, i32* @IAVF_TX_DESC_CMD_L4T_EOFT_SCTP, align 4
  %331 = load i32, i32* %18, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %18, align 4
  %333 = load i32, i32* @IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %334 = zext i32 %333 to i64
  %335 = shl i64 1, %334
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = or i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %17, align 4
  br label %361

340:                                              ; preds = %300
  %341 = load i32, i32* @IAVF_TX_DESC_CMD_L4T_EOFT_UDP, align 4
  %342 = load i32, i32* %18, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %18, align 4
  %344 = load i32, i32* @IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %345 = zext i32 %344 to i64
  %346 = shl i64 1, %345
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = or i64 %348, %346
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %17, align 4
  br label %361

351:                                              ; preds = %300
  %352 = load i32*, i32** %9, align 8
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  store i32 -1, i32* %7, align 4
  br label %370

358:                                              ; preds = %351
  %359 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %360 = call i32 @skb_checksum_help(%struct.sk_buff* %359)
  store i32 0, i32* %7, align 4
  br label %370

361:                                              ; preds = %340, %329, %317
  %362 = load i32, i32* %18, align 4
  %363 = load i32*, i32** %10, align 8
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %362
  store i32 %365, i32* %363, align 4
  %366 = load i32, i32* %17, align 4
  %367 = load i32*, i32** %11, align 8
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %366
  store i32 %369, i32* %367, align 4
  store i32 1, i32* %7, align 4
  br label %370

370:                                              ; preds = %361, %358, %357, %143, %142, %27
  %371 = load i32, i32* %7, align 4
  ret i32 %371
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i32*, i32*) #1

declare dso_local i8* @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_inner_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
