; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_5__*, %struct.pch_gbe_hw }
%struct.TYPE_5__ = type { i32 }
%struct.pch_gbe_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, i32, i64, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i64, i32, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64, i64, i64, i32*, i8* }
%struct.pch_gbe_tx_desc = type { i64, i64, i32, i32, i64 }
%struct.iphdr = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@PCH_GBE_SHORT_PKT = common dso_local global i64 0, align 8
@PCH_GBE_TXD_CTRL_APAD = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DSC_INIT16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*, %struct.sk_buff*)* @pch_gbe_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_tx_queue(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_tx_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca %struct.pch_gbe_tx_desc*, align 8
  %9 = alloca %struct.pch_gbe_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 2
  store %struct.pch_gbe_hw* %16, %struct.pch_gbe_hw** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCH_GBE_SHORT_PKT, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @PCH_GBE_TXD_CTRL_APAD, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHECKSUM_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCH_GBE_SHORT_PKT, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %156

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHECKSUM_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %156

51:                                               ; preds = %45
  %52 = load i32, i32* @PCH_GBE_TXD_CTRL_APAD, align 4
  %53 = load i32, i32* @PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ETH_P_IP, align 4
  %61 = call i64 @htons(i32 %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %155

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %64)
  store %struct.iphdr* %65, %struct.iphdr** %13, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @skb_transport_offset(%struct.sk_buff* %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IPPROTO_TCP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 4
  store i8* null, i8** %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i8* null, i8** %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = call i8* @skb_checksum(%struct.sk_buff* %79, i32 %80, i64 %86, i32 0)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = sub nsw i64 %98, %100
  %102 = load i64, i64* @IPPROTO_TCP, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @csum_tcpudp_magic(i32 %92, i32 %95, i64 %101, i64 %102, i8* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  br label %154

110:                                              ; preds = %63
  %111 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %112 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IPPROTO_UDP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %110
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 4
  store i8* null, i8** %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call %struct.TYPE_7__* @udp_hdr(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i8* null, i8** %121, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = sub nsw i64 %126, %128
  %130 = call i8* @skb_checksum(%struct.sk_buff* %122, i32 %123, i64 %129, i32 0)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = zext i32 %142 to i64
  %144 = sub nsw i64 %141, %143
  %145 = load i64, i64* @IPPROTO_UDP, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @csum_tcpudp_magic(i32 %135, i32 %138, i64 %144, i64 %145, i8* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call %struct.TYPE_7__* @udp_hdr(%struct.sk_buff* %150)
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  br label %153

153:                                              ; preds = %116, %110
  br label %154

154:                                              ; preds = %153, %73
  br label %155

155:                                              ; preds = %154, %51
  br label %156

156:                                              ; preds = %155, %45, %39
  %157 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %158 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %160, 1
  %162 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %163 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %161, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %156
  %170 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %171 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %177

172:                                              ; preds = %156
  %173 = load i32, i32* %12, align 4
  %174 = add i32 %173, 1
  %175 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %176 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %169
  %178 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %179 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %178, i32 0, i32 3
  %180 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %180, i64 %182
  store %struct.pch_gbe_buffer* %183, %struct.pch_gbe_buffer** %9, align 8
  %184 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %185 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %184, i32 0, i32 4
  %186 = load %struct.sk_buff*, %struct.sk_buff** %185, align 8
  store %struct.sk_buff* %186, %struct.sk_buff** %10, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @ETH_HLEN, align 8
  %194 = call i32 @memcpy(i32* %189, i32* %192, i64 %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @ETH_HLEN, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 0, i32* %199, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @ETH_HLEN, align 8
  %204 = add i64 %203, 1
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 0, i32* %205, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @ETH_HLEN, align 8
  %215 = add i64 %214, 2
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @ETH_HLEN, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @ETH_HLEN, align 8
  %226 = sub i64 %224, %225
  %227 = call i32 @memcpy(i32* %216, i32* %221, i64 %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %232 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %234 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %233, i32 0, i32 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %241 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @DMA_TO_DEVICE, align 4
  %244 = call i64 @dma_map_single(i32* %236, i32* %239, i64 %242, i32 %243)
  %245 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %246 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %248 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %247, i32 0, i32 1
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %252 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @dma_mapping_error(i32* %250, i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %177
  %257 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %258 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @netdev_err(i32 %259, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %261 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %262 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %261, i32 0, i32 2
  store i64 0, i64* %262, align 8
  %263 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %264 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %263, i32 0, i32 3
  store i64 0, i64* %264, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %267 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  br label %327

268:                                              ; preds = %177
  %269 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %270 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %269, i32 0, i32 1
  store i32 1, i32* %270, align 8
  %271 = load i64, i64* @jiffies, align 8
  %272 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %273 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %272, i32 0, i32 3
  store i64 %271, i64* %273, align 8
  %274 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %274, i32 %275)
  store %struct.pch_gbe_tx_desc* %276, %struct.pch_gbe_tx_desc** %8, align 8
  %277 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %278 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %281 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %280, i32 0, i32 4
  store i64 %279, i64* %281, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %286 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %288 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 3
  %291 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %292 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  %293 = load i32, i32* %11, align 4
  %294 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %295 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* @DSC_INIT16, align 4
  %297 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %298 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %297, i32 0, i32 3
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %12, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %12, align 4
  %301 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %302 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %300, %303
  %305 = zext i1 %304 to i32
  %306 = call i64 @unlikely(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %268
  store i32 0, i32* %12, align 4
  br label %309

309:                                              ; preds = %308, %268
  %310 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %311 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = mul i32 32, %313
  %315 = zext i32 %314 to i64
  %316 = add nsw i64 %312, %315
  %317 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %318 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = call i32 @iowrite32(i64 %316, i32* %320)
  %322 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %323 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %324 = call i32 @pch_tx_timestamp(%struct.pch_gbe_adapter* %322, %struct.sk_buff* %323)
  %325 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %326 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %325)
  br label %327

327:                                              ; preds = %309, %256
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i8* @csum_tcpudp_magic(i32, i32, i64, i64, i8*) #1

declare dso_local %struct.TYPE_7__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @dma_map_single(i32*, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8, i32) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i32 @pch_tx_timestamp(%struct.pch_gbe_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
