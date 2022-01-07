; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_rx.c_mwifiex_process_sta_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_rx.c_mwifiex_process_sta_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.mwifiex_adapter*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rxpd = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.rx_packet_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mwifiex_sta_node = type { i8** }

@ETH_ALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"wrong rx packet: len=%d, rx_pkt_offset=%d, rx_pkt_length=%d\0A\00", align 1
@PKT_TYPE_MGMT = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Rx of mgmt packet failed\00", align 1
@MWIFIEX_RXPD_FLAGS_TDLS_PACKET = common dso_local global i32 0, align 4
@MAX_NUM_TID = common dso_local global i64 0, align 8
@PKT_TYPE_BAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_process_sta_rx_packet(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxpd*, align 8
  %9 = alloca %struct.rx_packet_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mwifiex_sta_node*, align 8
  %17 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 3
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %19, align 8
  store %struct.mwifiex_adapter* %20, %struct.mwifiex_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.rxpd*
  store %struct.rxpd* %28, %struct.rxpd** %8, align 8
  %29 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %30 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %35 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @le16_to_cpu(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %40 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %45 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %50 = bitcast %struct.rxpd* %49 to i8*
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to %struct.rx_packet_hdr*
  store %struct.rx_packet_hdr* %54, %struct.rx_packet_hdr** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %2
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %65 = load i32, i32* @ERROR, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %64, i32 %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %69, i32 %70)
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %253

80:                                               ; preds = %2
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @PKT_TYPE_MGMT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @mwifiex_process_mgmt_packet(%struct.mwifiex_private* %85, %struct.sk_buff* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %92 = load i32, i32* @DATA, align 4
  %93 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %91, i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %253

98:                                               ; preds = %80
  %99 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %100 = call i32 @IS_11N_ENABLED(%struct.mwifiex_private* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %104 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %103, i32 0, i32 3
  %105 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %104, align 8
  %106 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ISSUPP_TDLS_ENABLED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %102
  %111 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %112 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MWIFIEX_RXPD_FLAGS_TDLS_PACKET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %110, %98
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %119 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %9, align 8
  %122 = getelementptr inbounds %struct.rx_packet_hdr, %struct.rx_packet_hdr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ether_addr_equal_unaligned(i32 %120, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %117, %110, %102
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @mwifiex_process_rx_packet(%struct.mwifiex_private* %128, %struct.sk_buff* %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %253

132:                                              ; preds = %117
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %134 = call i64 @mwifiex_queuing_ra_based(%struct.mwifiex_private* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %132
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 3
  %139 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %138, align 8
  %140 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ISSUPP_TDLS_ENABLED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %136
  %145 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %146 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MWIFIEX_RXPD_FLAGS_TDLS_PACKET, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %197

151:                                              ; preds = %144, %132
  %152 = load %struct.rx_packet_hdr*, %struct.rx_packet_hdr** %9, align 8
  %153 = getelementptr inbounds %struct.rx_packet_hdr, %struct.rx_packet_hdr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ETH_ALEN, align 4
  %157 = call i32 @memcpy(i32* %24, i32 %155, i32 %156)
  %158 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %159 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MWIFIEX_RXPD_FLAGS_TDLS_PACKET, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %151
  %165 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %166 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MAX_NUM_TID, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %164
  %171 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %172 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %171, i32* %24)
  store %struct.mwifiex_sta_node* %172, %struct.mwifiex_sta_node** %16, align 8
  %173 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %16, align 8
  %174 = icmp ne %struct.mwifiex_sta_node* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %177 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @le16_to_cpu(i32 %178)
  %180 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %16, align 8
  %181 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %184 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8*, i8** %182, i64 %185
  store i8* %179, i8** %186, align 8
  br label %187

187:                                              ; preds = %175, %170
  %188 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %189 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %190 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %193 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @mwifiex_auto_tdls_update_peer_signal(%struct.mwifiex_private* %188, i32* %24, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %187, %164, %151
  br label %224

197:                                              ; preds = %144, %136
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @PKT_TYPE_BAR, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %197
  %202 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %203 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @MAX_NUM_TID, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load i32, i32* %15, align 4
  %209 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %210 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %213 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %208, i32* %215, align 4
  br label %216

216:                                              ; preds = %207, %201, %197
  %217 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %218 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ETH_ALEN, align 4
  %223 = call i32 @memcpy(i32* %24, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %216, %196
  %225 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.rxpd*, %struct.rxpd** %8, align 8
  %228 = getelementptr inbounds %struct.rxpd, %struct.rxpd* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = call i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private* %225, i32 %226, i64 %229, i32* %24, i32 %230, %struct.sk_buff* %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %224
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @PKT_TYPE_BAR, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235, %224
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %240)
  br label %242

242:                                              ; preds = %239, %235
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %247 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %242
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %253

253:                                              ; preds = %251, %127, %94, %63
  %254 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

declare dso_local i32 @mwifiex_process_mgmt_packet(%struct.mwifiex_private*, %struct.sk_buff*) #2

declare dso_local i32 @IS_11N_ENABLED(%struct.mwifiex_private*) #2

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #2

declare dso_local i32 @ether_addr_equal_unaligned(i32, i32) #2

declare dso_local i32 @mwifiex_process_rx_packet(%struct.mwifiex_private*, %struct.sk_buff*) #2

declare dso_local i64 @mwifiex_queuing_ra_based(%struct.mwifiex_private*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #2

declare dso_local i32 @mwifiex_auto_tdls_update_peer_signal(%struct.mwifiex_private*, i32*, i32, i32) #2

declare dso_local i32 @mwifiex_11n_rx_reorder_pkt(%struct.mwifiex_private*, i32, i64, i32*, i32, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
