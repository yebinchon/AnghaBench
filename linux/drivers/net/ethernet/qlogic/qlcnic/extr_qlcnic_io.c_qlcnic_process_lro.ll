; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_3__, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i8*, i32, i64 }
%struct.iphdr = type { i32, i8*, i32 }
%struct.ipv6hdr = type { i8* }
%struct.tcphdr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4
@QLC_TCP_TS_HDR_SIZE = common dso_local global i32 0, align 4
@QLC_TCP_HDR_SIZE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, i32, i32, i32)* @qlcnic_process_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_process_lro(%struct.qlcnic_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.qlcnic_recv_context*, align 8
  %12 = alloca %struct.qlcnic_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.tcphdr*, align 8
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
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 5
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %10, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 4
  %35 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %34, align 8
  store %struct.qlcnic_recv_context* %35, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %28, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %275

45:                                               ; preds = %4
  %46 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %47 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %46, i32 0, i32 0
  %48 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %48, i64 %50
  store %struct.qlcnic_host_rds_ring* %51, %struct.qlcnic_host_rds_ring** %14, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @qlcnic_get_lro_sts_refhandle(i32 %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %56 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %275

63:                                               ; preds = %45
  %64 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %65 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %64, i32 0, i32 1
  %66 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %65, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %66, i64 %68
  store %struct.qlcnic_rx_buffer* %69, %struct.qlcnic_rx_buffer** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @qlcnic_get_lro_sts_timestamp(i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @qlcnic_get_lro_sts_length(i32 %72)
  store i32 %73, i32* %24, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @qlcnic_get_lro_sts_l2_hdr_offset(i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @qlcnic_get_lro_sts_l4_hdr_offset(i32 %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @qlcnic_get_lro_sts_push_flag(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @qlcnic_get_lro_sts_seq_number(i32 %80)
  store i32 %81, i32* %29, align 4
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %83 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %86 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %82, %struct.qlcnic_host_rds_ring* %83, i32 %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %13, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %63
  %90 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %90, %struct.qlcnic_rx_buffer** %5, align 8
  br label %275

91:                                               ; preds = %63
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  store i32 0, i32* %27, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @qlcnic_82xx_is_lb_pkt(i32 %97)
  store i32 %98, i32* %23, align 4
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %99, %struct.sk_buff* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* @QLC_TCP_TS_HDR_SIZE, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %26, align 4
  br label %115

111:                                              ; preds = %104
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* @QLC_TCP_HDR_SIZE, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %26, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %26, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @skb_put(%struct.sk_buff* %116, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @skb_pull(%struct.sk_buff* %121, i32 %122)
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %124, %struct.sk_buff* %125, i32* %28)
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %115
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %131 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = call i32 @dev_kfree_skb(%struct.sk_buff* %135)
  %137 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %137, %struct.qlcnic_rx_buffer** %5, align 8
  br label %275

138:                                              ; preds = %115
  %139 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %140 = load %struct.net_device*, %struct.net_device** %10, align 8
  %141 = call i8* @eth_type_trans(%struct.sk_buff* %139, %struct.net_device* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @ntohs(i8* %146)
  %148 = load i64, i64* @ETH_P_IPV6, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %138
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %154, %struct.ipv6hdr** %16, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 8
  %159 = inttoptr i64 %158 to %struct.tcphdr*
  store %struct.tcphdr* %159, %struct.tcphdr** %17, align 8
  %160 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %161 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 2
  %164 = load i32, i32* %24, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %25, align 4
  %167 = sext i32 %166 to i64
  %168 = call i8* @htons(i64 %167)
  %169 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %170 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %211

171:                                              ; preds = %138
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.iphdr*
  store %struct.iphdr* %175, %struct.iphdr** %15, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %180 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %178, %183
  %185 = inttoptr i64 %184 to %struct.tcphdr*
  store %struct.tcphdr* %185, %struct.tcphdr** %17, align 8
  %186 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 2
  %190 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %191 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 2
  %194 = add nsw i32 %189, %193
  %195 = load i32, i32* %24, align 4
  %196 = add nsw i32 %194, %195
  store i32 %196, i32* %25, align 4
  %197 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 2
  %199 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %200 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %25, align 4
  %203 = sext i32 %202 to i64
  %204 = call i8* @htons(i64 %203)
  %205 = call i32 @csum_replace2(i32* %198, i8* %201, i8* %204)
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = call i8* @htons(i64 %207)
  %209 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %171, %150
  %212 = load i32, i32* %18, align 4
  %213 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %214 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %29, align 4
  %216 = call i32 @htonl(i32 %215)
  %217 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %25, align 4
  %222 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %223 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %211
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @qlcnic_get_lro_sts_mss(i32 %229)
  %231 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %232 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 4
  %234 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i64, i64* @ETH_P_IPV6, align 8
  %238 = call i8* @htons(i64 %237)
  %239 = icmp eq i8* %236, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %228
  %241 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %243 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %242)
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  store i32 %241, i32* %244, align 4
  br label %250

245:                                              ; preds = %228
  %246 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %248 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %247)
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %211
  %252 = load i32, i32* %28, align 4
  %253 = icmp ne i32 %252, 65535
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %256 = load i64, i64* @ETH_P_8021Q, align 8
  %257 = call i8* @htons(i64 %256)
  %258 = load i32, i32* %28, align 4
  %259 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %255, i8* %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %251
  %261 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %262 = call i32 @netif_receive_skb(%struct.sk_buff* %261)
  %263 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %264 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* %25, align 4
  %269 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %270 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, %268
  store i32 %273, i32* %271, align 8
  %274 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %274, %struct.qlcnic_rx_buffer** %5, align 8
  br label %275

275:                                              ; preds = %260, %129, %89, %62, %44
  %276 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %276
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_refhandle(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_timestamp(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_length(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_l2_hdr_offset(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_l4_hdr_offset(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_push_flag(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_seq_number(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_82xx_is_lb_pkt(i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @csum_replace2(i32*, i8*, i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_mss(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
