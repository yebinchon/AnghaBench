; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_map_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_map_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i16 }
%struct.sk_buff = type { i64, i32, i64, i8* }
%struct.gmac_txq = type { %struct.gmac_txdesc*, %struct.sk_buff** }
%struct.gmac_txdesc = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.gemini_ethernet_port = type { i32, %struct.gemini_ethernet* }
%struct.gemini_ethernet = type { i32 }
%struct.skb_shared_info = type { i32, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@ETH_HLEN = common dso_local global i16 0, align 2
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@SOF_BIT = common dso_local global i32 0, align 4
@TSS_MTU_ENABLE_BIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@TSS_IP_CHKSUM_BIT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TSS_IPV6_ENABLE_BIT = common dso_local global i32 0, align 4
@TSS_TCP_CHKSUM_BIT = common dso_local global i32 0, align 4
@TSS_UDP_CHKSUM_BIT = common dso_local global i32 0, align 4
@EOF_BIT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTU_SIZE_BIT_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.gmac_txq*, i16*)* @gmac_map_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_map_tx_bufs(%struct.net_device* %0, %struct.sk_buff* %1, %struct.gmac_txq* %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.gmac_txq*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca %struct.gemini_ethernet_port*, align 8
  %11 = alloca %struct.skb_shared_info*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca %struct.gemini_ethernet*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca %struct.gmac_txdesc*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.gmac_txq* %2, %struct.gmac_txq** %8, align 8
  store i16* %3, i16** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %26)
  store %struct.gemini_ethernet_port* %27, %struct.gemini_ethernet_port** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %28)
  store %struct.skb_shared_info* %29, %struct.skb_shared_info** %11, align 8
  %30 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %10, align 8
  %31 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %12, align 2
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %14, align 2
  %41 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %10, align 8
  %42 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %41, i32 0, i32 1
  %43 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %42, align 8
  store %struct.gemini_ethernet* %43, %struct.gemini_ethernet** %15, align 8
  %44 = load i16*, i16** %9, align 8
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %19, align 2
  %46 = load i16, i16* @ETH_HLEN, align 2
  store i16 %46, i16* %23, align 2
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %23, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %23, align 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @ETH_P_8021Q, align 4
  %59 = call i64 @htons(i32 %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load i64, i64* @VLAN_HLEN, align 8
  %63 = load i16, i16* %23, align 2
  %64 = zext i16 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i16
  store i16 %66, i16* %23, align 2
  br label %67

67:                                               ; preds = %61, %4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @SOF_BIT, align 4
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i16, i16* %23, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* @TSS_MTU_ENABLE_BIT, align 4
  %78 = load i32, i32* %16, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i16, i16* %23, align 2
  %81 = zext i16 %80 to i32
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %76, %67
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHECKSUM_NONE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %84
  store i32 0, i32* %25, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ETH_P_IP, align 4
  %95 = call i64 @htons(i32 %94)
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* @TSS_IP_CHKSUM_BIT, align 4
  %99 = load i32, i32* %16, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %16, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IPPROTO_TCP, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %25, align 4
  br label %119

108:                                              ; preds = %90
  %109 = load i32, i32* @TSS_IPV6_ENABLE_BIT, align 4
  %110 = load i32, i32* %16, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %16, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IPPROTO_TCP, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %25, align 4
  br label %119

119:                                              ; preds = %108, %97
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @TSS_TCP_CHKSUM_BIT, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @TSS_UDP_CHKSUM_BIT, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load i32, i32* %16, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %126, %84
  store i16 -1, i16* %13, align 2
  br label %131

131:                                              ; preds = %191, %130
  %132 = load i16, i16* %13, align 2
  %133 = sext i16 %132 to i32
  %134 = load i16, i16* %14, align 2
  %135 = sext i16 %134 to i32
  %136 = icmp sle i32 %133, %135
  br i1 %136, label %137, label %228

137:                                              ; preds = %131
  %138 = load i16, i16* %13, align 2
  %139 = sext i16 %138 to i32
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %24, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @skb_headlen(%struct.sk_buff* %145)
  store i32 %146, i32* %18, align 4
  br label %159

147:                                              ; preds = %137
  %148 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %149 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i16, i16* %13, align 2
  %152 = sext i16 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32* %154, i32** %21, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = call i8* @skb_frag_address(i32* %155)
  store i8* %156, i8** %24, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 @skb_frag_size(i32* %157)
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %147, %141
  %160 = load i16, i16* %13, align 2
  %161 = sext i16 %160 to i32
  %162 = load i16, i16* %14, align 2
  %163 = sext i16 %162 to i32
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load i32, i32* @EOF_BIT, align 4
  %167 = load i32, i32* %17, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %17, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %170 = load %struct.gmac_txq*, %struct.gmac_txq** %8, align 8
  %171 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %170, i32 0, i32 1
  %172 = load %struct.sk_buff**, %struct.sk_buff*** %171, align 8
  %173 = load i16, i16* %19, align 2
  %174 = zext i16 %173 to i64
  %175 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %172, i64 %174
  store %struct.sk_buff* %169, %struct.sk_buff** %175, align 8
  br label %176

176:                                              ; preds = %165, %159
  %177 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %15, align 8
  %178 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %24, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* @DMA_TO_DEVICE, align 4
  %183 = call i32 @dma_map_single(i32 %179, i8* %180, i32 %181, i32 %182)
  store i32 %183, i32* %22, align 4
  %184 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %15, align 8
  %185 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %22, align 4
  %188 = call i64 @dma_mapping_error(i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %231

191:                                              ; preds = %176
  %192 = load %struct.gmac_txq*, %struct.gmac_txq** %8, align 8
  %193 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %192, i32 0, i32 0
  %194 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %193, align 8
  %195 = load i16, i16* %19, align 2
  %196 = zext i16 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %194, i64 %197
  store %struct.gmac_txdesc* %198, %struct.gmac_txdesc** %20, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %20, align 8
  %201 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %20, align 8
  %205 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %22, align 4
  %208 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %20, align 8
  %209 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %20, align 8
  %213 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* @MTU_SIZE_BIT_MASK, align 4
  %216 = load i32, i32* %17, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %17, align 4
  %218 = load i16, i16* %19, align 2
  %219 = add i16 %218, 1
  store i16 %219, i16* %19, align 2
  %220 = load i16, i16* %12, align 2
  %221 = zext i16 %220 to i32
  %222 = load i16, i16* %19, align 2
  %223 = zext i16 %222 to i32
  %224 = and i32 %223, %221
  %225 = trunc i32 %224 to i16
  store i16 %225, i16* %19, align 2
  %226 = load i16, i16* %13, align 2
  %227 = add i16 %226, 1
  store i16 %227, i16* %13, align 2
  br label %131

228:                                              ; preds = %131
  %229 = load i16, i16* %19, align 2
  %230 = load i16*, i16** %9, align 8
  store i16 %229, i16* %230, align 2
  store i32 0, i32* %5, align 4
  br label %275

231:                                              ; preds = %190
  br label %232

232:                                              ; preds = %239, %231
  %233 = load i16, i16* %19, align 2
  %234 = zext i16 %233 to i32
  %235 = load i16*, i16** %9, align 8
  %236 = load i16, i16* %235, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %272

239:                                              ; preds = %232
  %240 = load i16, i16* %19, align 2
  %241 = add i16 %240, -1
  store i16 %241, i16* %19, align 2
  %242 = load i16, i16* %12, align 2
  %243 = zext i16 %242 to i32
  %244 = load i16, i16* %19, align 2
  %245 = zext i16 %244 to i32
  %246 = and i32 %245, %243
  %247 = trunc i32 %246 to i16
  store i16 %247, i16* %19, align 2
  %248 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %15, align 8
  %249 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.gmac_txq*, %struct.gmac_txq** %8, align 8
  %252 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %251, i32 0, i32 0
  %253 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %252, align 8
  %254 = load i16, i16* %19, align 2
  %255 = zext i16 %254 to i64
  %256 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %253, i64 %255
  %257 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.gmac_txq*, %struct.gmac_txq** %8, align 8
  %261 = getelementptr inbounds %struct.gmac_txq, %struct.gmac_txq* %260, i32 0, i32 0
  %262 = load %struct.gmac_txdesc*, %struct.gmac_txdesc** %261, align 8
  %263 = load i16, i16* %19, align 2
  %264 = zext i16 %263 to i64
  %265 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %262, i64 %264
  %266 = getelementptr inbounds %struct.gmac_txdesc, %struct.gmac_txdesc* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @DMA_TO_DEVICE, align 4
  %271 = call i32 @dma_unmap_page(i32 %250, i32 %259, i32 %269, i32 %270)
  br label %232

272:                                              ; preds = %232
  %273 = load i32, i32* @ENOMEM, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %272, %228
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @skb_frag_address(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
