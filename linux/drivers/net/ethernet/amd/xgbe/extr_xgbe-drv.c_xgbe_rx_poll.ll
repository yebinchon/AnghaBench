; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, %struct.napi_struct, %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.napi_struct = type { i32 }
%struct.xgbe_ring = type { i32, %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32, i32, i32, i32, i32, i64 }
%struct.xgbe_prv_data = type { i32, i32, %struct.napi_struct, i64, %struct.net_device*, %struct.xgbe_hw_if }
%struct.net_device = type { i32, i32 }
%struct.xgbe_hw_if = type { i64 (%struct.xgbe_channel.0*)* }
%struct.xgbe_channel.0 = type opaque
%struct.xgbe_ring_data = type { i32, %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32, i32, i32, %struct.net_device*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"-->xgbe_rx_poll: budget=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  cur = %d\0A\00", align 1
@XGBE_RX_DESC_CNT = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@CONTEXT_NEXT = common dso_local global i32 0, align 4
@CONTEXT = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"error in received packet\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"packet length exceeds configured MTU\0A\00", align 1
@CSUM_DONE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@TNP = common dso_local global i32 0, align 4
@TNPCSUM_DONE = common dso_local global i32 0, align 4
@VLAN_CTAG = common dso_local global i32 0, align 4
@RX_TSTAMP = common dso_local global i32 0, align 4
@RSS_HASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"<--xgbe_rx_poll: packet_count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*, i32)* @xgbe_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_rx_poll(%struct.xgbe_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca %struct.xgbe_ring*, align 8
  %9 = alloca %struct.xgbe_ring_data*, align 8
  %10 = alloca %struct.xgbe_packet_data*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.napi_struct*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.skb_shared_hwtstamps*, align 8
  %15 = alloca i32, align 4
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
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %26 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %26, i32 0, i32 3
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %27, align 8
  store %struct.xgbe_prv_data* %28, %struct.xgbe_prv_data** %6, align 8
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 5
  store %struct.xgbe_hw_if* %30, %struct.xgbe_hw_if** %7, align 8
  %31 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %31, i32 0, i32 2
  %33 = load %struct.xgbe_ring*, %struct.xgbe_ring** %32, align 8
  store %struct.xgbe_ring* %33, %struct.xgbe_ring** %8, align 8
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 4
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  store %struct.net_device* %36, %struct.net_device** %11, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DBGPR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %40 = icmp ne %struct.xgbe_ring* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %457

42:                                               ; preds = %2
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %49 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %48, i32 0, i32 1
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %52 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %51, i32 0, i32 2
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi %struct.napi_struct* [ %49, %47 ], [ %52, %50 ]
  store %struct.napi_struct* %54, %struct.napi_struct** %12, align 8
  %55 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %57 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %55, i32 %58)
  store %struct.xgbe_ring_data* %59, %struct.xgbe_ring_data** %9, align 8
  %60 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %61 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %60, i32 0, i32 1
  store %struct.xgbe_packet_data* %61, %struct.xgbe_packet_data** %10, align 8
  br label %62

62:                                               ; preds = %421, %53
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %424

66:                                               ; preds = %62
  %67 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %68 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DBGPR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %66
  %74 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %75 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %80 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %13, align 8
  %83 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %84 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  %87 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %88 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %19, align 4
  br label %94

91:                                               ; preds = %73, %66
  %92 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %93 = call i32 @memset(%struct.xgbe_packet_data* %92, i32 0, i32 32)
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %91, %78
  br label %95

95:                                               ; preds = %263, %151, %94
  %96 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %97 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %98 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %96, i32 %99)
  store %struct.xgbe_ring_data* %100, %struct.xgbe_ring_data** %9, align 8
  %101 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %102 = call i32 @xgbe_rx_dirty_desc(%struct.xgbe_ring* %101)
  %103 = load i32, i32* @XGBE_RX_DESC_CNT, align 4
  %104 = ashr i32 %103, 3
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %108 = call i32 @xgbe_rx_refresh(%struct.xgbe_channel* %107)
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %111 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %110, i32 0, i32 0
  %112 = load i64 (%struct.xgbe_channel.0*)*, i64 (%struct.xgbe_channel.0*)** %111, align 8
  %113 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %114 = bitcast %struct.xgbe_channel* %113 to %struct.xgbe_channel.0*
  %115 = call i64 %112(%struct.xgbe_channel.0* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %424

118:                                              ; preds = %109
  %119 = load i32, i32* %23, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %23, align 4
  %121 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %122 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %126 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %129 = load i32, i32* @LAST, align 4
  %130 = call i32 @XGMAC_GET_BITS(i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %132 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %135 = load i32, i32* @CONTEXT_NEXT, align 4
  %136 = call i32 @XGMAC_GET_BITS(i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %17, align 4
  %137 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %138 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %141 = load i32, i32* @CONTEXT, align 4
  %142 = call i32 @XGMAC_GET_BITS(i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %118
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145, %118
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %95

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %157 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155, %152
  %161 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %162 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %167 = load i32, i32* @rx_err, align 4
  %168 = load %struct.net_device*, %struct.net_device** %11, align 8
  %169 = call i32 @netif_err(%struct.xgbe_prv_data* %166, i32 %167, %struct.net_device* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %160
  %171 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %172 = call i32 @dev_kfree_skb(%struct.sk_buff* %171)
  br label %421

173:                                              ; preds = %155
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %256, label %176

176:                                              ; preds = %173
  %177 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %178 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %179 = call i32 @xgbe_rx_buf1_len(%struct.xgbe_ring_data* %177, %struct.xgbe_packet_data* %178)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %19, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %19, align 4
  %183 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %184 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %185 = load i32, i32* %19, align 4
  %186 = call i32 @xgbe_rx_buf2_len(%struct.xgbe_ring_data* %183, %struct.xgbe_packet_data* %184, i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %19, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %19, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %191 = icmp ne %struct.sk_buff* %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %176
  %193 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %194 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %195 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %196 = load i32, i32* %20, align 4
  %197 = call %struct.sk_buff* @xgbe_create_skb(%struct.xgbe_prv_data* %193, %struct.napi_struct* %194, %struct.xgbe_ring_data* %195, i32 %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %13, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %199 = icmp ne %struct.sk_buff* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  store i32 1, i32* %16, align 4
  br label %257

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %176
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %255

205:                                              ; preds = %202
  %206 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %207 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %210 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %215 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %220 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %225 = call i32 @dma_sync_single_range_for_cpu(i32 %208, i32 %213, i32 %218, i32 %223, i32 %224)
  %226 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %228 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %227)
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %232 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %238 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %21, align 4
  %244 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %245 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @skb_add_rx_frag(%struct.sk_buff* %226, i32 %230, i32* %236, i32 %242, i32 %243, i32 %248)
  %250 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %251 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i32* null, i32** %254, align 8
  br label %255

255:                                              ; preds = %205, %202
  br label %256

256:                                              ; preds = %255, %173
  br label %257

257:                                              ; preds = %256, %200
  %258 = load i32, i32* %15, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %17, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260, %257
  br label %95

264:                                              ; preds = %260
  %265 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %266 = icmp ne %struct.sk_buff* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %264
  br label %421

268:                                              ; preds = %264
  %269 = load %struct.net_device*, %struct.net_device** %11, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @ETH_HLEN, align 4
  %273 = add i32 %271, %272
  store i32 %273, i32* %22, align 4
  %274 = load %struct.net_device*, %struct.net_device** %11, align 8
  %275 = getelementptr inbounds %struct.net_device, %struct.net_device* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %268
  %281 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @ETH_P_8021Q, align 4
  %285 = call i64 @htons(i32 %284)
  %286 = icmp eq i64 %283, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i64, i64* @VLAN_HLEN, align 8
  %289 = load i32, i32* %22, align 4
  %290 = zext i32 %289 to i64
  %291 = add nsw i64 %290, %288
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %22, align 4
  br label %293

293:                                              ; preds = %287, %280, %268
  %294 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %22, align 4
  %298 = icmp ugt i32 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %301 = load i32, i32* @rx_err, align 4
  %302 = load %struct.net_device*, %struct.net_device** %11, align 8
  %303 = call i32 @netif_err(%struct.xgbe_prv_data* %300, i32 %301, %struct.net_device* %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %304 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %305 = call i32 @dev_kfree_skb(%struct.sk_buff* %304)
  br label %421

306:                                              ; preds = %293
  %307 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %308 = call i64 @netif_msg_pktdata(%struct.xgbe_prv_data* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load %struct.net_device*, %struct.net_device** %11, align 8
  %312 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %313 = call i32 @xgbe_print_pkt(%struct.net_device* %311, %struct.sk_buff* %312, i32 0)
  br label %314

314:                                              ; preds = %310, %306
  %315 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %316 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %315)
  %317 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %318 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %321 = load i32, i32* @CSUM_DONE, align 4
  %322 = call i32 @XGMAC_GET_BITS(i32 %319, i32 %320, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %314
  %325 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %326 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %327 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %326, i32 0, i32 5
  store i32 %325, i32* %327, align 8
  br label %328

328:                                              ; preds = %324, %314
  %329 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %330 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %333 = load i32, i32* @TNP, align 4
  %334 = call i32 @XGMAC_GET_BITS(i32 %331, i32 %332, i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %350

336:                                              ; preds = %328
  %337 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %338 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %337, i32 0, i32 2
  store i32 1, i32* %338, align 4
  %339 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %340 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %343 = load i32, i32* @TNPCSUM_DONE, align 4
  %344 = call i32 @XGMAC_GET_BITS(i32 %341, i32 %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %336
  %347 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 3
  store i32 1, i32* %348, align 8
  br label %349

349:                                              ; preds = %346, %336
  br label %350

350:                                              ; preds = %349, %328
  %351 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %352 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %355 = load i32, i32* @VLAN_CTAG, align 4
  %356 = call i32 @XGMAC_GET_BITS(i32 %353, i32 %354, i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %350
  %359 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %360 = load i32, i32* @ETH_P_8021Q, align 4
  %361 = call i64 @htons(i32 %360)
  %362 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %363 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %359, i64 %361, i32 %364)
  br label %366

366:                                              ; preds = %358, %350
  %367 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %368 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %371 = load i32, i32* @RX_TSTAMP, align 4
  %372 = call i32 @XGMAC_GET_BITS(i32 %369, i32 %370, i32 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %387

374:                                              ; preds = %366
  %375 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %376 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %375, i32 0, i32 0
  %377 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %378 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @timecounter_cyc2time(i32* %376, i32 %379)
  store i32 %380, i32* %25, align 4
  %381 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %382 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %381)
  store %struct.skb_shared_hwtstamps* %382, %struct.skb_shared_hwtstamps** %14, align 8
  %383 = load i32, i32* %25, align 4
  %384 = call i32 @ns_to_ktime(i32 %383)
  %385 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %386 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 4
  br label %387

387:                                              ; preds = %374, %366
  %388 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %389 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %392 = load i32, i32* @RSS_HASH, align 4
  %393 = call i32 @XGMAC_GET_BITS(i32 %390, i32 %391, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %387
  %396 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %397 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %398 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %401 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @skb_set_hash(%struct.sk_buff* %396, i32 %399, i32 %402)
  br label %404

404:                                              ; preds = %395, %387
  %405 = load %struct.net_device*, %struct.net_device** %11, align 8
  %406 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %407 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %406, i32 0, i32 4
  store %struct.net_device* %405, %struct.net_device** %407, align 8
  %408 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %409 = load %struct.net_device*, %struct.net_device** %11, align 8
  %410 = call i64 @eth_type_trans(%struct.sk_buff* %408, %struct.net_device* %409)
  %411 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %412 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %411, i32 0, i32 0
  store i64 %410, i64* %412, align 8
  %413 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %414 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %415 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @skb_record_rx_queue(%struct.sk_buff* %413, i32 %416)
  %418 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %419 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %420 = call i32 @napi_gro_receive(%struct.napi_struct* %418, %struct.sk_buff* %419)
  br label %421

421:                                              ; preds = %404, %299, %267, %170
  %422 = load i32, i32* %24, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %24, align 4
  br label %62

424:                                              ; preds = %117, %62
  %425 = load i32, i32* %23, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %453

427:                                              ; preds = %424
  %428 = load i32, i32* %15, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load i32, i32* %17, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %453

433:                                              ; preds = %430, %427
  %434 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %435 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %436 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %434, i32 %437)
  store %struct.xgbe_ring_data* %438, %struct.xgbe_ring_data** %9, align 8
  %439 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %440 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %439, i32 0, i32 0
  store i32 1, i32* %440, align 8
  %441 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %442 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %443 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 2
  store %struct.sk_buff* %441, %struct.sk_buff** %444, align 8
  %445 = load i32, i32* %19, align 4
  %446 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %447 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 1
  store i32 %445, i32* %448, align 4
  %449 = load i32, i32* %16, align 4
  %450 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %451 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 0
  store i32 %449, i32* %452, align 8
  br label %453

453:                                              ; preds = %433, %430, %424
  %454 = load i32, i32* %24, align 4
  %455 = call i32 @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %454)
  %456 = load i32, i32* %24, align 4
  store i32 %456, i32* %3, align 4
  br label %457

457:                                              ; preds = %453, %41
  %458 = load i32, i32* %3, align 4
  ret i32 %458
}

declare dso_local i32 @DBGPR(i8*, i32) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @memset(%struct.xgbe_packet_data*, i32, i32) #1

declare dso_local i32 @xgbe_rx_dirty_desc(%struct.xgbe_ring*) #1

declare dso_local i32 @xgbe_rx_refresh(%struct.xgbe_channel*) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xgbe_rx_buf1_len(%struct.xgbe_ring_data*, %struct.xgbe_packet_data*) #1

declare dso_local i32 @xgbe_rx_buf2_len(%struct.xgbe_ring_data*, %struct.xgbe_packet_data*, i32) #1

declare dso_local %struct.sk_buff* @xgbe_create_skb(%struct.xgbe_prv_data*, %struct.napi_struct*, %struct.xgbe_ring_data*, i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_print_pkt(%struct.net_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
