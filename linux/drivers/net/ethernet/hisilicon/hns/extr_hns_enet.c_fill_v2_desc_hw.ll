; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_fill_v2_desc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_fill_v2_desc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i64, %struct.TYPE_6__*, %struct.hnae_desc_cb*, %struct.hnae_desc* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hnae_desc_cb = type { i32, i32, i32, i8* }
%struct.hnae_desc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.iphdr = type { i64 }
%struct.ipv6hdr = type { i64 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@HNSV2_TXD_VLD_B = common dso_local global i32 0, align 4
@HNSV2_TXD_BUFNUM_M = common dso_local global i32 0, align 4
@HNSV2_TXD_PORTID_M = common dso_local global i32 0, align 4
@HNSV2_TXD_PORTID_S = common dso_local global i32 0, align 4
@DESC_TYPE_SKB = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i8* null, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@HNSV2_TXD_L3CS_B = common dso_local global i32 0, align 4
@HNSV2_TXD_L4CS_B = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@HNSV2_TXD_TSE_B = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@HNSV2_TXD_IPV6_B = common dso_local global i32 0, align 4
@HNSV2_TXD_FE_B = common dso_local global i32 0, align 4
@next_to_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i8*, i32, i32, i32, i32, i32, i32, i32)* @fill_v2_desc_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_v2_desc_hw(%struct.hnae_ring* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.hnae_ring*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hnae_desc*, align 8
  %20 = alloca %struct.hnae_desc_cb*, align 8
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca %struct.ipv6hdr*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %33 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %32, i32 0, i32 3
  %34 = load %struct.hnae_desc*, %struct.hnae_desc** %33, align 8
  %35 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %36 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %34, i64 %37
  store %struct.hnae_desc* %38, %struct.hnae_desc** %19, align 8
  %39 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %40 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %39, i32 0, i32 2
  %41 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %40, align 8
  %42 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %43 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %41, i64 %44
  store %struct.hnae_desc_cb* %45, %struct.hnae_desc_cb** %20, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  store i64 0, i64* %29, align 8
  store i8* null, i8** %30, align 8
  store i64 0, i64* %31, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %20, align 8
  %48 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %20, align 8
  %51 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %20, align 8
  %54 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %20, align 8
  %57 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @cpu_to_le64(i32 %58)
  %60 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %61 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = call i8* @cpu_to_le16(i64 %63)
  %65 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %66 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 7
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** %26, align 8
  %69 = load i32, i32* @HNSV2_TXD_VLD_B, align 4
  %70 = call i32 @hnae_set_bit(i8* %68, i32 %69, i32 1)
  %71 = load i8*, i8** %25, align 8
  %72 = load i32, i32* @HNSV2_TXD_BUFNUM_M, align 4
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @hnae_set_field(i8* %71, i32 %72, i32 0, i32 %74)
  %76 = load i8*, i8** %25, align 8
  %77 = load i32, i32* @HNSV2_TXD_PORTID_M, align 4
  %78 = load i32, i32* @HNSV2_TXD_PORTID_S, align 4
  %79 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %80 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @hnae_set_field(i8* %76, i32 %77, i32 %78, i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @DESC_TYPE_SKB, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %231

90:                                               ; preds = %9
  %91 = load i8*, i8** %11, align 8
  %92 = bitcast i8* %91 to %struct.sk_buff*
  store %struct.sk_buff* %92, %struct.sk_buff** %23, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %230

98:                                               ; preds = %90
  %99 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %100 = call i32 @skb_reset_mac_len(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %24, align 8
  %104 = load i8*, i8** @ETH_HLEN, align 8
  store i8* %104, i8** %27, align 8
  %105 = load i64, i64* %24, align 8
  %106 = load i32, i32* @ETH_P_8021Q, align 4
  %107 = call i64 @htons(i32 %106)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load i64, i64* @VLAN_HLEN, align 8
  %111 = load i8*, i8** %27, align 8
  %112 = getelementptr i8, i8* %111, i64 %110
  store i8* %112, i8** %27, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %114 = call i64 @vlan_get_protocol(%struct.sk_buff* %113)
  store i64 %114, i64* %24, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %98
  %119 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @ETH_P_IP, align 4
  %123 = call i64 @htons(i32 %122)
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %127 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %126)
  store %struct.iphdr* %127, %struct.iphdr** %21, align 8
  %128 = load i8*, i8** %26, align 8
  %129 = load i32, i32* @HNSV2_TXD_L3CS_B, align 4
  %130 = call i32 @hnae_set_bit(i8* %128, i32 %129, i32 1)
  %131 = load i8*, i8** %26, align 8
  %132 = load i32, i32* @HNSV2_TXD_L4CS_B, align 4
  %133 = call i32 @hnae_set_bit(i8* %131, i32 %132, i32 1)
  %134 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IPPROTO_TCP, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %125
  %140 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %141 = call i64 @skb_is_gso(%struct.sk_buff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i8*, i8** %28, align 8
  %145 = load i32, i32* @HNSV2_TXD_TSE_B, align 4
  %146 = call i32 @hnae_set_bit(i8* %144, i32 %145, i32 1)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %148 = call i8* @tcp_hdrlen(%struct.sk_buff* %147)
  store i8* %148, i8** %30, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %150 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %29, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %157 = call i64 @SKB_TMP_LEN(%struct.sk_buff* %156)
  %158 = sub nsw i64 %155, %157
  store i64 %158, i64* %31, align 8
  br label %159

159:                                              ; preds = %143, %139, %125
  br label %207

160:                                              ; preds = %118
  %161 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @ETH_P_IPV6, align 4
  %165 = call i64 @htons(i32 %164)
  %166 = icmp eq i64 %163, %165
  br i1 %166, label %167, label %206

167:                                              ; preds = %160
  %168 = load i8*, i8** %28, align 8
  %169 = load i32, i32* @HNSV2_TXD_IPV6_B, align 4
  %170 = call i32 @hnae_set_bit(i8* %168, i32 %169, i32 1)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %172 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %171)
  store %struct.ipv6hdr* %172, %struct.ipv6hdr** %22, align 8
  %173 = load i8*, i8** %26, align 8
  %174 = load i32, i32* @HNSV2_TXD_L4CS_B, align 4
  %175 = call i32 @hnae_set_bit(i8* %173, i32 %174, i32 1)
  %176 = load %struct.ipv6hdr*, %struct.ipv6hdr** %22, align 8
  %177 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @IPPROTO_TCP, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %167
  %182 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %183 = call i64 @skb_is_gso(%struct.sk_buff* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %181
  %186 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %187 = call i64 @skb_is_gso_v6(%struct.sk_buff* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load i8*, i8** %28, align 8
  %191 = load i32, i32* @HNSV2_TXD_TSE_B, align 4
  %192 = call i32 @hnae_set_bit(i8* %190, i32 %191, i32 1)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %194 = call i8* @tcp_hdrlen(%struct.sk_buff* %193)
  store i8* %194, i8** %30, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %196 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %29, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %203 = call i64 @SKB_TMP_LEN(%struct.sk_buff* %202)
  %204 = sub nsw i64 %201, %203
  store i64 %204, i64* %31, align 8
  br label %205

205:                                              ; preds = %189, %185, %181, %167
  br label %206

206:                                              ; preds = %205, %160
  br label %207

207:                                              ; preds = %206, %159
  %208 = load i8*, i8** %27, align 8
  %209 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %210 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  store i8* %208, i8** %211, align 8
  %212 = load i8*, i8** %28, align 8
  %213 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %214 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 5
  store i8* %212, i8** %215, align 8
  %216 = load i64, i64* %29, align 8
  %217 = call i8* @cpu_to_le16(i64 %216)
  %218 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %219 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 4
  store i8* %217, i8** %220, align 8
  %221 = load i8*, i8** %30, align 8
  %222 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %223 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 3
  store i8* %221, i8** %224, align 8
  %225 = load i64, i64* %31, align 8
  %226 = call i8* @cpu_to_le16(i64 %225)
  %227 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %228 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  store i8* %226, i8** %229, align 8
  br label %230

230:                                              ; preds = %207, %90
  br label %231

231:                                              ; preds = %230, %9
  %232 = load i8*, i8** %26, align 8
  %233 = load i32, i32* @HNSV2_TXD_FE_B, align 4
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @hnae_set_bit(i8* %232, i32 %233, i32 %234)
  %236 = load i8*, i8** %25, align 8
  %237 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %238 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  store i8* %236, i8** %239, align 8
  %240 = load i8*, i8** %26, align 8
  %241 = load %struct.hnae_desc*, %struct.hnae_desc** %19, align 8
  %242 = getelementptr inbounds %struct.hnae_desc, %struct.hnae_desc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  store i8* %240, i8** %243, align 8
  %244 = load %struct.hnae_ring*, %struct.hnae_ring** %10, align 8
  %245 = load i32, i32* @next_to_use, align 4
  %246 = call i32 @ring_ptr_move_fw(%struct.hnae_ring* %244, i32 %245)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @hnae_set_bit(i8*, i32, i32) #1

declare dso_local i32 @hnae_set_field(i8*, i32, i32, i32) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i8* @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @SKB_TMP_LEN(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso_v6(%struct.sk_buff*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hnae_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
