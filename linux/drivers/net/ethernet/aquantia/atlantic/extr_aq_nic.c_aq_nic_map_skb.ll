; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64, i64, i32, i32 }
%struct.aq_ring_s = type { i32, %struct.aq_ring_buff_s* }
%struct.aq_ring_buff_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.sk_buff*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@NEXTHDR_TCP = common dso_local global i64 0, align 8
@NEXTHDR_UDP = common dso_local global i64 0, align 8
@AQ_CFG_TX_FRAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_nic_s*, %struct.sk_buff*, %struct.aq_ring_s*)* @aq_nic_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_nic_map_skb(%struct.aq_nic_s* %0, %struct.sk_buff* %1, %struct.aq_ring_s* %2) #0 {
  %4 = alloca %struct.aq_nic_s*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.aq_ring_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aq_ring_buff_s*, align 8
  %12 = alloca %struct.aq_ring_buff_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.aq_ring_s* %2, %struct.aq_ring_s** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %24 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  store %struct.aq_ring_buff_s* null, %struct.aq_ring_buff_s** %11, align 8
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 1
  %28 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %28, i64 %30
  store %struct.aq_ring_buff_s* %31, %struct.aq_ring_buff_s** %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %33 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @skb_is_gso(%struct.sk_buff* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %44 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 4
  %45 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %46 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %51 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ETH_HLEN, align 4
  %53 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %54 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %53, i32 0, i32 18
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @ip_hdrlen(%struct.sk_buff* %55)
  %57 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %58 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @tcp_hdrlen(%struct.sk_buff* %59)
  %61 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %62 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 8
  %63 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %64 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %63, i32 0, i32 2
  store i32 65535, i32* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 6
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %73 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %38, %3
  %75 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %76 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %85)
  %87 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %88 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %87, i32 0, i32 15
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %93 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 8
  %94 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %95 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %84, %80, %74
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @aq_ring_next_dx(%struct.aq_ring_s* %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %104 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %103, i32 0, i32 1
  %105 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %105, i64 %107
  store %struct.aq_ring_buff_s* %108, %struct.aq_ring_buff_s** %12, align 8
  %109 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %110 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %99, %96
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 @skb_headlen(%struct.sk_buff* %114)
  %116 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %117 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %119 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %124 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DMA_TO_DEVICE, align 4
  %127 = call i64 @dma_map_single(i32 %119, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %129 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %128, i32 0, i32 12
  store i64 %127, i64* %129, align 8
  %130 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %131 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %130)
  %132 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %133 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %132, i32 0, i32 12
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @dma_mapping_error(i32 %131, i64 %134)
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %113
  br label %372

139:                                              ; preds = %113
  %140 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  store %struct.aq_ring_buff_s* %140, %struct.aq_ring_buff_s** %11, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %145 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %144, i32 0, i32 14
  store i32 %143, i32* %145, align 8
  %146 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %147 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %146, i32 0, i32 6
  store i32 1, i32* %147, align 8
  %148 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %149 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %148, i32 0, i32 7
  store i32 1, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %223

157:                                              ; preds = %139
  %158 = load i32, i32* @ETH_P_IP, align 4
  %159 = call i64 @htons(i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %167 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %194

173:                                              ; preds = %157
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IPPROTO_TCP, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 1, i32 0
  %182 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %183 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %184)
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @IPPROTO_UDP, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %193 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %192, i32 0, i32 10
  store i32 %191, i32* %193, align 8
  br label %222

194:                                              ; preds = %157
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 6
  br i1 %199, label %200, label %221

200:                                              ; preds = %194
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %201)
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NEXTHDR_TCP, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 1, i32 0
  %209 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %210 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 4
  %211 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %212 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %211)
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NEXTHDR_UDP, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 1, i32 0
  %219 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %220 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %219, i32 0, i32 10
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %200, %194
  br label %222

222:                                              ; preds = %221, %173
  br label %223

223:                                              ; preds = %222, %139
  br label %224

224:                                              ; preds = %295, %223
  %225 = load i32, i32* %8, align 4
  %226 = add i32 %225, -1
  store i32 %226, i32* %8, align 4
  %227 = icmp ne i32 %225, 0
  br i1 %227, label %228, label %298

228:                                              ; preds = %224
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %230 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %229)
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32* %235, i32** %18, align 8
  %236 = load i32*, i32** %18, align 8
  %237 = call i32 @skb_frag_size(i32* %236)
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %264, %228
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %294

241:                                              ; preds = %238
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @AQ_CFG_TX_FRAME_MAX, align 4
  %244 = icmp ugt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i32, i32* @AQ_CFG_TX_FRAME_MAX, align 4
  store i32 %246, i32* %16, align 4
  br label %249

247:                                              ; preds = %241
  %248 = load i32, i32* %14, align 4
  store i32 %248, i32* %16, align 4
  br label %249

249:                                              ; preds = %247, %245
  %250 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %251 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %250)
  %252 = load i32*, i32** %18, align 8
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* @DMA_TO_DEVICE, align 4
  %256 = call i64 @skb_frag_dma_map(i32 %251, i32* %252, i32 %253, i32 %254, i32 %255)
  store i64 %256, i64* %17, align 8
  %257 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %258 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %257)
  %259 = load i64, i64* %17, align 8
  %260 = call i32 @dma_mapping_error(i32 %258, i64 %259)
  %261 = call i64 @unlikely(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %249
  br label %307

264:                                              ; preds = %249
  %265 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @aq_ring_next_dx(%struct.aq_ring_s* %265, i32 %266)
  store i32 %267, i32* %10, align 4
  %268 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %269 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %268, i32 0, i32 1
  %270 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %270, i64 %272
  store %struct.aq_ring_buff_s* %273, %struct.aq_ring_buff_s** %12, align 8
  %274 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %275 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %274, i32 0, i32 0
  store i32 0, i32* %275, align 8
  %276 = load i32, i32* %16, align 4
  %277 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %278 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 4
  %279 = load i64, i64* %17, align 8
  %280 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %281 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %280, i32 0, i32 12
  store i64 %279, i64* %281, align 8
  %282 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %283 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %282, i32 0, i32 7
  store i32 1, i32* %283, align 4
  %284 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %285 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %284, i32 0, i32 2
  store i32 65535, i32* %285, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* %14, align 4
  %288 = sub i32 %287, %286
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %15, align 4
  %291 = add i32 %290, %289
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %7, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %238

294:                                              ; preds = %238
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %9, align 4
  %297 = add i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %224

298:                                              ; preds = %224
  %299 = load i32, i32* %10, align 4
  %300 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %11, align 8
  %301 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %303 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %302, i32 0, i32 11
  store i32 1, i32* %303, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %305 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %306 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %305, i32 0, i32 13
  store %struct.sk_buff* %304, %struct.sk_buff** %306, align 8
  br label %372

307:                                              ; preds = %263
  %308 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %309 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %10, align 4
  br label %311

311:                                              ; preds = %365, %307
  %312 = load i32, i32* %7, align 4
  %313 = icmp ugt i32 %312, 0
  br i1 %313, label %314, label %371

314:                                              ; preds = %311
  %315 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %316 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %315, i32 0, i32 1
  %317 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %317, i64 %319
  store %struct.aq_ring_buff_s* %320, %struct.aq_ring_buff_s** %12, align 8
  %321 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %322 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %364, label %325

325:                                              ; preds = %314
  %326 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %327 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %364, label %330

330:                                              ; preds = %325
  %331 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %332 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %331, i32 0, i32 12
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %364

335:                                              ; preds = %330
  %336 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %337 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i64 @unlikely(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %335
  %342 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %343 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %342)
  %344 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %345 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %344, i32 0, i32 12
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %348 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @DMA_TO_DEVICE, align 4
  %351 = call i32 @dma_unmap_single(i32 %343, i64 %346, i32 %349, i32 %350)
  br label %363

352:                                              ; preds = %335
  %353 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %354 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %353)
  %355 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %356 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %355, i32 0, i32 12
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %359 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DMA_TO_DEVICE, align 4
  %362 = call i32 @dma_unmap_page(i32 %354, i64 %357, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %352, %341
  br label %364

364:                                              ; preds = %363, %330, %325, %314
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %7, align 4
  %367 = add i32 %366, -1
  store i32 %367, i32* %7, align 4
  %368 = load %struct.aq_ring_s*, %struct.aq_ring_s** %6, align 8
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @aq_ring_next_dx(%struct.aq_ring_s* %368, i32 %369)
  store i32 %370, i32* %10, align 4
  br label %311

371:                                              ; preds = %311
  br label %372

372:                                              ; preds = %371, %298, %138
  %373 = load i32, i32* %7, align 4
  ret i32 %373
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @aq_ring_next_dx(%struct.aq_ring_s*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @aq_nic_get_dev(%struct.aq_nic_s*) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
