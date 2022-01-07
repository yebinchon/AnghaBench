; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.sk_buff*, i32, i32, i64 }
%struct.ixgbe_ring = type { i64, i32, %struct.TYPE_5__*, %struct.ixgbe_tx_buffer*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, %struct.sk_buff*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_ipsec_tx_data = type { i32 }
%struct.vlan_hdr = type { i32 }
%struct.vlan_ethhdr = type { i64 }
%struct.TYPE_6__ = type { i16, i32, i32* }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@__IXGBE_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSTAMP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CC = common dso_local global i32 0, align 4
@NETIF_F_FCOE_CRC = common dso_local global i32 0, align 4
@NETIF_F_FSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_xmit_frame_ring(%struct.sk_buff* %0, %struct.ixgbe_adapter* %1, %struct.ixgbe_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_ring*, align 8
  %8 = alloca %struct.ixgbe_tx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca %struct.ixgbe_ipsec_tx_data, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vlan_hdr*, align 8
  %17 = alloca %struct.vlan_hdr, align 4
  %18 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ixgbe_adapter* %1, %struct.ixgbe_adapter** %6, align 8
  store %struct.ixgbe_ring* %2, %struct.ixgbe_ring** %7, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @skb_headlen(%struct.sk_buff* %19)
  %21 = call i64 @TXD_USE_COUNT(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = bitcast %struct.ixgbe_ipsec_tx_data* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i16 0, i16* %11, align 2
  br label %26

26:                                               ; preds = %47, %3
  %27 = load i16, i16* %11, align 2
  %28 = zext i16 %27 to i32
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @skb_frag_size(i32* %42)
  %44 = call i64 @TXD_USE_COUNT(i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i16, i16* %11, align 2
  %49 = add i16 %48, 1
  store i16 %49, i16* %11, align 2
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 3
  %54 = call i64 @ixgbe_maybe_stop_tx(%struct.ixgbe_ring* %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %58 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %62, i32* %4, align 4
  br label %294

63:                                               ; preds = %50
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %65 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %64, i32 0, i32 3
  %66 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %65, align 8
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %68 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %66, i64 %69
  store %struct.ixgbe_tx_buffer* %70, %struct.ixgbe_tx_buffer** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %72, i32 0, i32 2
  store %struct.sk_buff* %71, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %78 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %80 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %63
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %85)
  %87 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %119

94:                                               ; preds = %63
  %95 = load i64, i64* %14, align 8
  %96 = load i32, i32* @ETH_P_8021Q, align 4
  %97 = call i64 @htons(i32 %96)
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* @ETH_HLEN, align 4
  %102 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %100, i32 %101, i32 4, %struct.vlan_hdr* %17)
  store %struct.vlan_hdr* %102, %struct.vlan_hdr** %16, align 8
  %103 = load %struct.vlan_hdr*, %struct.vlan_hdr** %16, align 8
  %104 = icmp ne %struct.vlan_hdr* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %265

106:                                              ; preds = %99
  %107 = load %struct.vlan_hdr*, %struct.vlan_hdr** %16, align 8
  %108 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohs(i32 %109)
  %111 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %106, %94
  br label %119

119:                                              ; preds = %118, %84
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i64 @vlan_get_protocol(%struct.sk_buff* %120)
  store i64 %121, i64* %14, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %127 = and i32 %125, %126
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %119
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %130
  %136 = load i32, i32* @__IXGBE_PTP_TX_IN_PROGRESS, align 4
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %137, i32 0, i32 1
  %139 = call i32 @test_and_set_bit_lock(i32 %136, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %143)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @IXGBE_TX_FLAGS_TSTAMP, align 4
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %151)
  %153 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %154 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %153, i32 0, i32 3
  store %struct.sk_buff* %152, %struct.sk_buff** %154, align 8
  %155 = load i32, i32* @jiffies, align 4
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %158, i32 0, i32 2
  %160 = call i32 @schedule_work(i32* %159)
  br label %166

161:                                              ; preds = %135
  %162 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %163 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %161, %141
  br label %167

167:                                              ; preds = %166, %130, %119
  %168 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %169 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %225

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %177 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %174
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %225

187:                                              ; preds = %181, %174
  %188 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_PRIO_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %10, align 4
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 7
  %196 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %187
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = call i64 @skb_cow_head(%struct.sk_buff* %205, i32 0)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %265

209:                                              ; preds = %204
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %213, %struct.vlan_ethhdr** %18, align 8
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %216 = ashr i32 %214, %215
  %217 = call i64 @htons(i32 %216)
  %218 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %219 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  br label %224

220:                                              ; preds = %187
  %221 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %222 = load i32, i32* %10, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %220, %209
  br label %225

225:                                              ; preds = %224, %181, %167
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %228 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load i64, i64* %14, align 8
  %230 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %231 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %233 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %234 = call i32 @ixgbe_tso(%struct.ixgbe_ring* %232, %struct.ixgbe_tx_buffer* %233, i32* %15, %struct.ixgbe_ipsec_tx_data* %13)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  br label %265

238:                                              ; preds = %225
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %238
  %242 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %243 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %244 = call i32 @ixgbe_tx_csum(%struct.ixgbe_ring* %242, %struct.ixgbe_tx_buffer* %243, %struct.ixgbe_ipsec_tx_data* %13)
  br label %245

245:                                              ; preds = %241, %238
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %248 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %249 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %248, i32 0, i32 1
  %250 = call i64 @test_bit(i32 %247, i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %254 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %255 = call i32 @ixgbe_atr(%struct.ixgbe_ring* %253, %struct.ixgbe_tx_buffer* %254)
  br label %256

256:                                              ; preds = %252, %246
  %257 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %258 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i64 @ixgbe_tx_map(%struct.ixgbe_ring* %257, %struct.ixgbe_tx_buffer* %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %272

263:                                              ; preds = %256
  %264 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %264, i32* %4, align 4
  br label %294

265:                                              ; preds = %237, %208, %105
  %266 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %267 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %266, i32 0, i32 2
  %268 = load %struct.sk_buff*, %struct.sk_buff** %267, align 8
  %269 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %268)
  %270 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %271 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %270, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %271, align 8
  br label %272

272:                                              ; preds = %265, %262
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @IXGBE_TX_FLAGS_TSTAMP, align 4
  %275 = and i32 %273, %274
  %276 = call i64 @unlikely(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %272
  %279 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %280 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %279, i32 0, i32 3
  %281 = load %struct.sk_buff*, %struct.sk_buff** %280, align 8
  %282 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %281)
  %283 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %284 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %283, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %284, align 8
  %285 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %286 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %285, i32 0, i32 2
  %287 = call i32 @cancel_work_sync(i32* %286)
  %288 = load i32, i32* @__IXGBE_PTP_TX_IN_PROGRESS, align 4
  %289 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %290 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %289, i32 0, i32 1
  %291 = call i32 @clear_bit_unlock(i32 %288, i32* %290)
  br label %292

292:                                              ; preds = %278, %272
  %293 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %292, %263, %56
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @ixgbe_maybe_stop_tx(%struct.ixgbe_ring*, i64) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbe_tso(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*, i32*, %struct.ixgbe_ipsec_tx_data*) #1

declare dso_local i32 @ixgbe_tx_csum(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*, %struct.ixgbe_ipsec_tx_data*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_atr(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i64 @ixgbe_tx_map(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
