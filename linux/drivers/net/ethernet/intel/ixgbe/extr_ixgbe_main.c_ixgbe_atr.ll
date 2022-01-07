; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_atr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i32, %struct.ixgbe_q_vector* }
%struct.ixgbe_q_vector = type { %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { i64, i64, i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i8*, i64 }
%union.ixgbe_atr_hash_dword = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%union.anon = type { i8* }
%struct.tcphdr = type { i32, i32, i32, i64 }
%struct.iphdr = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ipv6hdr = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@__const.ixgbe_atr.input = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@__const.ixgbe_atr.common = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@VXLAN_HEADROOM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_TCPV4 = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_TCPV6 = common dso_local global i32 0, align 4
@IXGBE_ATR_L4TYPE_TUNNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*)* @ixgbe_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_atr(%struct.ixgbe_ring* %0, %struct.ixgbe_tx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_tx_buffer*, align 8
  %5 = alloca %struct.ixgbe_q_vector*, align 8
  %6 = alloca %union.ixgbe_atr_hash_dword, align 4
  %7 = alloca %union.ixgbe_atr_hash_dword, align 4
  %8 = alloca %union.anon, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.ixgbe_tx_buffer* %1, %struct.ixgbe_tx_buffer** %4, align 8
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 3
  %17 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, align 8
  store %struct.ixgbe_q_vector* %17, %struct.ixgbe_q_vector** %5, align 8
  %18 = bitcast %union.ixgbe_atr_hash_dword* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.ixgbe_atr.input to i8*), i64 8, i1 false)
  %19 = bitcast %union.ixgbe_atr_hash_dword* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.ixgbe_atr.common to i8*), i64 8, i1 false)
  %20 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %5, align 8
  %21 = icmp ne %struct.ixgbe_q_vector* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %406

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %406

29:                                               ; preds = %23
  %30 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_P_IP, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETH_P_IPV6, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %406

48:                                               ; preds = %40, %29
  %49 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %11, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = call i8* @skb_network_header(%struct.sk_buff* %52)
  %54 = bitcast %union.anon* %8 to i8**
  store i8* %53, i8** %54, align 8
  %55 = bitcast %union.anon* %8 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ule i8* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %406

65:                                               ; preds = %48
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %137

70:                                               ; preds = %65
  %71 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ETH_P_IP, align 4
  %75 = call i32 @htons(i32 %74)
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %137

77:                                               ; preds = %70
  %78 = bitcast %union.anon* %8 to %struct.iphdr**
  %79 = load %struct.iphdr*, %struct.iphdr** %78, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_UDP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %137

84:                                               ; preds = %77
  %85 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %85, i32 0, i32 0
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %86, align 8
  store %struct.ixgbe_adapter* %87, %struct.ixgbe_adapter** %14, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i8* @skb_tail_pointer(%struct.sk_buff* %88)
  %90 = bitcast %union.anon* %8 to i8**
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @VXLAN_HEADROOM, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = icmp ult i8* %89, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %406

100:                                              ; preds = %84
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = call %struct.TYPE_10__* @udp_hdr(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = call i8* @skb_inner_network_header(%struct.sk_buff* %115)
  %117 = bitcast %union.anon* %8 to i8**
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %105, %100
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %125 = call %struct.TYPE_10__* @udp_hdr(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %129 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %134 = call i8* @skb_inner_network_header(%struct.sk_buff* %133)
  %135 = bitcast %union.anon* %8 to i8**
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %123, %118
  br label %137

137:                                              ; preds = %136, %77, %70, %65
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = call i8* @skb_tail_pointer(%struct.sk_buff* %138)
  %140 = bitcast %union.anon* %8 to i8**
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 40
  %143 = icmp ult i8* %139, %142
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %406

148:                                              ; preds = %137
  %149 = bitcast %union.anon* %8 to %struct.iphdr**
  %150 = load %struct.iphdr*, %struct.iphdr** %149, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %191 [
    i32 128, label %153
    i32 6, label %166
  ]

153:                                              ; preds = %148
  %154 = bitcast %union.anon* %8 to i8**
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 15
  %160 = shl i32 %159, 2
  store i32 %160, i32* %10, align 4
  %161 = bitcast %union.anon* %8 to %struct.iphdr**
  %162 = load %struct.iphdr*, %struct.iphdr** %161, align 8
  %163 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %13, align 4
  br label %192

166:                                              ; preds = %148
  %167 = bitcast %union.anon* %8 to i8**
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = ptrtoint i8* %168 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %10, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = load i32, i32* @IPPROTO_TCP, align 4
  %178 = call i32 @ipv6_find_hdr(%struct.sk_buff* %176, i32* %10, i32 %177, i32* null, i32* null)
  store i32 %178, i32* %13, align 4
  %179 = bitcast %union.anon* %8 to i8**
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %180 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = load i32, i32* %10, align 4
  %188 = zext i32 %187 to i64
  %189 = sub nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %10, align 4
  br label %192

191:                                              ; preds = %148
  br label %406

192:                                              ; preds = %166, %153
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @IPPROTO_TCP, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %406

197:                                              ; preds = %192
  %198 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %199 = call i8* @skb_tail_pointer(%struct.sk_buff* %198)
  %200 = bitcast %union.anon* %8 to i8**
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 24
  %206 = icmp ult i8* %199, %205
  %207 = zext i1 %206 to i32
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %406

211:                                              ; preds = %197
  %212 = bitcast %union.anon* %8 to i8**
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = bitcast i8* %216 to %struct.tcphdr*
  store %struct.tcphdr* %217, %struct.tcphdr** %9, align 8
  %218 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %219 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %406

223:                                              ; preds = %211
  %224 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %225 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %223
  %229 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %230 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %233 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp slt i64 %231, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %406

237:                                              ; preds = %228, %223
  %238 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  %240 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %241 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %244 = ashr i32 %242, %243
  %245 = call i32 @htons(i32 %244)
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_9__*
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %250 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %253 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %237
  %258 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %259 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ETH_P_8021Q, align 4
  %262 = call i32 @htons(i32 %261)
  %263 = xor i32 %260, %262
  %264 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = xor i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %280

268:                                              ; preds = %237
  %269 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %273 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = xor i32 %271, %274
  %276 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = xor i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %268, %257
  %281 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %282 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = xor i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = bitcast %union.anon* %8 to %struct.iphdr**
  %289 = load %struct.iphdr*, %struct.iphdr** %288, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  switch i32 %291, label %378 [
    i32 128, label %292
    i32 6, label %308
  ]

292:                                              ; preds = %280
  %293 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV4, align 4
  %294 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_9__*
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = bitcast %union.anon* %8 to %struct.iphdr**
  %297 = load %struct.iphdr*, %struct.iphdr** %296, align 8
  %298 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = bitcast %union.anon* %8 to %struct.iphdr**
  %301 = load %struct.iphdr*, %struct.iphdr** %300, align 8
  %302 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = xor i32 %299, %303
  %305 = bitcast %union.ixgbe_atr_hash_dword* %7 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = xor i32 %306, %304
  store i32 %307, i32* %305, align 4
  br label %379

308:                                              ; preds = %280
  %309 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV6, align 4
  %310 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_9__*
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %313 = load %struct.ipv6hdr*, %struct.ipv6hdr** %312, align 8
  %314 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %320 = load %struct.ipv6hdr*, %struct.ipv6hdr** %319, align 8
  %321 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = xor i32 %318, %325
  %327 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %328 = load %struct.ipv6hdr*, %struct.ipv6hdr** %327, align 8
  %329 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 2
  %333 = load i32, i32* %332, align 4
  %334 = xor i32 %326, %333
  %335 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %336 = load %struct.ipv6hdr*, %struct.ipv6hdr** %335, align 8
  %337 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 3
  %341 = load i32, i32* %340, align 4
  %342 = xor i32 %334, %341
  %343 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %344 = load %struct.ipv6hdr*, %struct.ipv6hdr** %343, align 8
  %345 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = xor i32 %342, %349
  %351 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %352 = load %struct.ipv6hdr*, %struct.ipv6hdr** %351, align 8
  %353 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = xor i32 %350, %357
  %359 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %360 = load %struct.ipv6hdr*, %struct.ipv6hdr** %359, align 8
  %361 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %364, align 4
  %366 = xor i32 %358, %365
  %367 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %368 = load %struct.ipv6hdr*, %struct.ipv6hdr** %367, align 8
  %369 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 3
  %373 = load i32, i32* %372, align 4
  %374 = xor i32 %366, %373
  %375 = bitcast %union.ixgbe_atr_hash_dword* %7 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = xor i32 %376, %374
  store i32 %377, i32* %375, align 4
  br label %379

378:                                              ; preds = %280
  br label %379

379:                                              ; preds = %378, %308, %292
  %380 = bitcast %union.anon* %8 to i8**
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %383 = call i8* @skb_network_header(%struct.sk_buff* %382)
  %384 = icmp ne i8* %381, %383
  br i1 %384, label %385, label %391

385:                                              ; preds = %379
  %386 = load i32, i32* @IXGBE_ATR_L4TYPE_TUNNEL_MASK, align 4
  %387 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_9__*
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %385, %379
  %392 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %5, align 8
  %393 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %392, i32 0, i32 0
  %394 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %393, align 8
  %395 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %394, i32 0, i32 2
  %396 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %397 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %6, i32 0, i32 0
  %400 = bitcast %struct.TYPE_9__* %399 to i64*
  %401 = load i64, i64* %400, align 4
  %402 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %7, i32 0, i32 0
  %403 = bitcast %struct.TYPE_9__* %402 to i64*
  %404 = load i64, i64* %403, align 4
  %405 = call i32 @ixgbe_fdir_add_signature_filter_82599(i32* %395, i64 %401, i64 %404, i32 %398)
  br label %406

406:                                              ; preds = %391, %236, %222, %210, %196, %191, %147, %99, %64, %47, %28, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htons(i32) #2

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_10__* @udp_hdr(%struct.sk_buff*) #2

declare dso_local i8* @skb_inner_network_header(%struct.sk_buff*) #2

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ixgbe_fdir_add_signature_filter_82599(i32*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
