; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.vxlan_dev = type { i32, %struct.TYPE_7__*, i32 }
%struct.vxlan_sock = type { i32 }
%struct.vxlanhdr = type { i32, i32 }
%struct.vxlan_metadata = type { i32 }
%struct.metadata_dst = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry = type { i32 }

@ETH_P_TEB = common dso_local global i32 0, align 4
@VXLAN_HLEN = common dso_local global i32 0, align 4
@VXLAN_HF_VNI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid vxlan flags=%#x vni=%#x\0A\00", align 1
@VXLAN_VNI_MASK = common dso_local global i32 0, align 4
@VXLAN_F_GPE = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@VXLAN_F_REMCSUM_RX = common dso_local global i32 0, align 4
@VXLAN_F_GBP = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @vxlan_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pcpu_sw_netstats*, align 8
  %7 = alloca %struct.vxlan_dev*, align 8
  %8 = alloca %struct.vxlan_sock*, align 8
  %9 = alloca %struct.vxlanhdr, align 4
  %10 = alloca %struct.vxlan_metadata, align 4
  %11 = alloca %struct.vxlan_metadata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.metadata_dst*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.vxlan_metadata* %10, %struct.vxlan_metadata** %11, align 8
  %17 = load i32, i32* @ETH_P_TEB, align 4
  %18 = call i32 @htons(i32 %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @VXLAN_HLEN, align 4
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %283

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff* %25)
  %27 = bitcast %struct.vxlanhdr* %9 to i8*
  %28 = bitcast %struct.vxlanhdr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VXLAN_HF_VNI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = call i32 @netdev_dbg(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47)
  br label %283

49:                                               ; preds = %24
  %50 = load i32, i32* @VXLAN_HF_VNI, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @VXLAN_VNI_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call %struct.vxlan_sock* @rcu_dereference_sk_user_data(%struct.sock* %60)
  store %struct.vxlan_sock* %61, %struct.vxlan_sock** %8, align 8
  %62 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %63 = icmp ne %struct.vxlan_sock* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %49
  br label %283

65:                                               ; preds = %49
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vxlan_vni(i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock* %71, i32 %76, i32 %77)
  store %struct.vxlan_dev* %78, %struct.vxlan_dev** %7, align 8
  %79 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %80 = icmp ne %struct.vxlan_dev* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %65
  br label %283

82:                                               ; preds = %65
  %83 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %84 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VXLAN_F_GPE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %92 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vxlan_parse_gpe_hdr(%struct.vxlanhdr* %9, i32* %12, %struct.sk_buff* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %283

97:                                               ; preds = %89
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* @VXLAN_HLEN, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %104 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %107 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = call i32 @dev_net(%struct.TYPE_7__* %108)
  %110 = call i32 @net_eq(i32 %105, i32 %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i64 @__iptunnel_pull_header(%struct.sk_buff* %99, i32 %100, i32 %101, i32 %102, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %98
  br label %283

117:                                              ; preds = %98
  %118 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %119 = call i64 @vxlan_collect_metadata(%struct.vxlan_sock* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %124 = call i32 @vxlan_get_sk_family(%struct.vxlan_sock* %123)
  %125 = load i32, i32* @TUNNEL_KEY, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @key32_to_tunnel_id(i32 %126)
  %128 = call %struct.metadata_dst* @udp_tun_rx_dst(%struct.sk_buff* %122, i32 %124, i32 %125, i32 %127, i32 4)
  store %struct.metadata_dst* %128, %struct.metadata_dst** %16, align 8
  %129 = load %struct.metadata_dst*, %struct.metadata_dst** %16, align 8
  %130 = icmp ne %struct.metadata_dst* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %121
  br label %283

132:                                              ; preds = %121
  %133 = load %struct.metadata_dst*, %struct.metadata_dst** %16, align 8
  %134 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = call %struct.vxlan_metadata* @ip_tunnel_info_opts(i32* %135)
  store %struct.vxlan_metadata* %136, %struct.vxlan_metadata** %11, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = load %struct.metadata_dst*, %struct.metadata_dst** %16, align 8
  %139 = bitcast %struct.metadata_dst* %138 to %struct.dst_entry*
  %140 = call i32 @skb_dst_set(%struct.sk_buff* %137, %struct.dst_entry* %139)
  br label %144

141:                                              ; preds = %117
  %142 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %11, align 8
  %143 = call i32 @memset(%struct.vxlan_metadata* %142, i32 0, i32 4)
  br label %144

144:                                              ; preds = %141, %132
  %145 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %146 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @VXLAN_F_REMCSUM_RX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %144
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %154 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @vxlan_remcsum(%struct.vxlanhdr* %9, %struct.sk_buff* %152, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  br label %283

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %144
  %161 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %162 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @VXLAN_F_GBP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %170 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %11, align 8
  %173 = call i32 @vxlan_parse_gbp_hdr(%struct.vxlanhdr* %9, %struct.sk_buff* %168, i32 %171, %struct.vxlan_metadata* %172)
  br label %174

174:                                              ; preds = %167, %160
  %175 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %9, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %9, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178, %174
  br label %283

183:                                              ; preds = %178
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %183
  %187 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %188 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @vxlan_set_mac(%struct.vxlan_dev* %187, %struct.vxlan_sock* %188, %struct.sk_buff* %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  br label %283

194:                                              ; preds = %186
  br label %206

195:                                              ; preds = %183
  %196 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %197 = call i32 @skb_reset_mac_header(%struct.sk_buff* %196)
  %198 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %199 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %198, i32 0, i32 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 2
  store %struct.TYPE_7__* %200, %struct.TYPE_7__** %202, align 8
  %203 = load i32, i32* @PACKET_HOST, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %195, %194
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = call i8* @skb_network_header(%struct.sk_buff* %207)
  store i8* %208, i8** %14, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = call i32 @skb_reset_network_header(%struct.sk_buff* %209)
  %211 = load %struct.vxlan_sock*, %struct.vxlan_sock** %8, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = call i32 @vxlan_ecn_decapsulate(%struct.vxlan_sock* %211, i8* %212, %struct.sk_buff* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %231, label %216

216:                                              ; preds = %206
  %217 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %218 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %217, i32 0, i32 1
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %225 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %224, i32 0, i32 1
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %283

231:                                              ; preds = %206
  %232 = call i32 (...) @rcu_read_lock()
  %233 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %234 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %233, i32 0, i32 1
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @IFF_UP, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %231
  %246 = call i32 (...) @rcu_read_unlock()
  %247 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %248 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %247, i32 0, i32 1
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = call i32 @atomic_long_inc(i32* %250)
  br label %283

252:                                              ; preds = %231
  %253 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %254 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %253, i32 0, i32 1
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %257)
  store %struct.pcpu_sw_netstats* %258, %struct.pcpu_sw_netstats** %6, align 8
  %259 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %260 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %259, i32 0, i32 0
  %261 = call i32 @u64_stats_update_begin(i32* %260)
  %262 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %263 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  %266 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %270 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %268
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 4
  %275 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %6, align 8
  %276 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %275, i32 0, i32 0
  %277 = call i32 @u64_stats_update_end(i32* %276)
  %278 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %279 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %278, i32 0, i32 0
  %280 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %281 = call i32 @gro_cells_receive(i32* %279, %struct.sk_buff* %280)
  %282 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %286

283:                                              ; preds = %245, %216, %193, %182, %158, %131, %116, %96, %81, %64, %34, %23
  %284 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %285 = call i32 @kfree_skb(%struct.sk_buff* %284)
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %283, %252
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.vxlan_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @vxlan_vni(i32) #1

declare dso_local %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock*, i32, i32) #1

declare dso_local i32 @vxlan_parse_gpe_hdr(%struct.vxlanhdr*, i32*, %struct.sk_buff*, i32) #1

declare dso_local i64 @__iptunnel_pull_header(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_7__*) #1

declare dso_local i64 @vxlan_collect_metadata(%struct.vxlan_sock*) #1

declare dso_local %struct.metadata_dst* @udp_tun_rx_dst(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @vxlan_get_sk_family(%struct.vxlan_sock*) #1

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local %struct.vxlan_metadata* @ip_tunnel_info_opts(i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @memset(%struct.vxlan_metadata*, i32, i32) #1

declare dso_local i32 @vxlan_remcsum(%struct.vxlanhdr*, %struct.sk_buff*, i32) #1

declare dso_local i32 @vxlan_parse_gbp_hdr(%struct.vxlanhdr*, %struct.sk_buff*, i32, %struct.vxlan_metadata*) #1

declare dso_local i32 @vxlan_set_mac(%struct.vxlan_dev*, %struct.vxlan_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @vxlan_ecn_decapsulate(%struct.vxlan_sock*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @gro_cells_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
