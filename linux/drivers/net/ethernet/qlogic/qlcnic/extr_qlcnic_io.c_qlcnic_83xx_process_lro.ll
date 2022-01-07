; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i64, i32, %struct.TYPE_3__, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i8*, i32, i64 }
%struct.iphdr = type { i32, i8*, i32 }
%struct.ipv6hdr = type { i8* }
%struct.tcphdr = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4
@QLCNIC_TCP_TS_HDR_SIZE = common dso_local global i32 0, align 4
@QLCNIC_TCP_HDR_SIZE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, i64, i32*)* @qlcnic_83xx_process_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_83xx_process_lro(%struct.qlcnic_adapter* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_rx_buffer*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.qlcnic_recv_context*, align 8
  %10 = alloca %struct.qlcnic_rx_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca %struct.tcphdr*, align 8
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
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 5
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 4
  %32 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %31, align 8
  store %struct.qlcnic_recv_context* %32, %struct.qlcnic_recv_context** %9, align 8
  store i32 65535, i32* %25, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %4, align 8
  br label %282

42:                                               ; preds = %3
  %43 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %44 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %43, i32 0, i32 0
  %45 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %45, i64 %46
  store %struct.qlcnic_host_rds_ring* %47, %struct.qlcnic_host_rds_ring** %12, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @qlcnic_83xx_hndl(i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %54 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %4, align 8
  br label %282

61:                                               ; preds = %42
  %62 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %63 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %62, i32 0, i32 1
  %64 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %64, i64 %66
  store %struct.qlcnic_rx_buffer* %67, %struct.qlcnic_rx_buffer** %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @qlcnic_83xx_lro_pktln(i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qlcnic_83xx_l2_hdr_off(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qlcnic_83xx_l4_hdr_off(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @qlcnic_83xx_is_psh_bit(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %85 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %88 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %84, %struct.qlcnic_host_rds_ring* %85, i32 %86, i32 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %61
  %92 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %92, %struct.qlcnic_rx_buffer** %4, align 8
  br label %282

93:                                               ; preds = %61
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @qlcnic_83xx_is_tstamp(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @QLCNIC_TCP_TS_HDR_SIZE, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %23, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @QLCNIC_TCP_HDR_SIZE, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %23, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i32 @skb_put(%struct.sk_buff* %108, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @skb_pull(%struct.sk_buff* %113, i32 %114)
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %116, %struct.sk_buff* %117, i32* %25)
  store i32 %118, i32* %26, align 4
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %107
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @qlcnic_83xx_is_lb_pkt(i32 %126, i32 1)
  store i32 %127, i32* %20, align 4
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %25, align 4
  %132 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %128, %struct.sk_buff* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %123, %107
  %134 = load i32, i32* %26, align 4
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %139 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = call i32 @dev_kfree_skb(%struct.sk_buff* %143)
  %145 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %145, %struct.qlcnic_rx_buffer** %4, align 8
  br label %282

146:                                              ; preds = %133
  %147 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %148 = load %struct.net_device*, %struct.net_device** %8, align 8
  %149 = call i8* @eth_type_trans(%struct.sk_buff* %147, %struct.net_device* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @ntohs(i8* %154)
  %156 = load i64, i64* @ETH_P_IPV6, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %146
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %162, %struct.ipv6hdr** %14, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 8
  %167 = inttoptr i64 %166 to %struct.tcphdr*
  store %struct.tcphdr* %167, %struct.tcphdr** %15, align 8
  %168 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %169 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 2
  %172 = load i32, i32* %21, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = call i8* @htons(i64 %175)
  %177 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %178 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  br label %219

179:                                              ; preds = %146
  %180 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to %struct.iphdr*
  store %struct.iphdr* %183, %struct.iphdr** %13, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %188 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %186, %191
  %193 = inttoptr i64 %192 to %struct.tcphdr*
  store %struct.tcphdr* %193, %struct.tcphdr** %15, align 8
  %194 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = shl i32 %196, 2
  %198 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %199 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 2
  %202 = add nsw i32 %197, %201
  %203 = load i32, i32* %21, align 4
  %204 = add nsw i32 %202, %203
  store i32 %204, i32* %22, align 4
  %205 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %206 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %205, i32 0, i32 2
  %207 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = call i8* @htons(i64 %211)
  %213 = call i32 @csum_replace2(i32* %206, i8* %209, i8* %212)
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = call i8* @htons(i64 %215)
  %217 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %179, %158
  %220 = load i32, i32* %16, align 4
  %221 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %222 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %22, align 4
  %226 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %227 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %219
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @qlcnic_83xx_get_lro_sts_mss(i32 %235)
  store i32 %236, i32* %24, align 4
  %237 = load i32, i32* %24, align 4
  %238 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %239 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %238)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* @ETH_P_IPV6, align 8
  %245 = call i8* @htons(i64 %244)
  %246 = icmp eq i8* %243, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %232
  %248 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %250 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %249)
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 4
  br label %257

252:                                              ; preds = %232
  %253 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %255 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %254)
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %247
  br label %258

258:                                              ; preds = %257, %219
  %259 = load i32, i32* %25, align 4
  %260 = icmp ne i32 %259, 65535
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %263 = load i64, i64* @ETH_P_8021Q, align 8
  %264 = call i8* @htons(i64 %263)
  %265 = load i32, i32* %25, align 4
  %266 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %262, i8* %264, i32 %265)
  br label %267

267:                                              ; preds = %261, %258
  %268 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %269 = call i32 @netif_receive_skb(%struct.sk_buff* %268)
  %270 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %271 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %22, align 4
  %276 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %277 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, %275
  store i32 %280, i32* %278, align 4
  %281 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %281, %struct.qlcnic_rx_buffer** %4, align 8
  br label %282

282:                                              ; preds = %267, %137, %91, %60, %41
  %283 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %4, align 8
  ret %struct.qlcnic_rx_buffer* %283
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_lro_pktln(i32) #1

declare dso_local i32 @qlcnic_83xx_l2_hdr_off(i32) #1

declare dso_local i32 @qlcnic_83xx_l4_hdr_off(i32) #1

declare dso_local i32 @qlcnic_83xx_is_psh_bit(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_is_tstamp(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @qlcnic_83xx_is_lb_pkt(i32, i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @csum_replace2(i32*, i8*, i8*) #1

declare dso_local i32 @qlcnic_83xx_get_lro_sts_mss(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
