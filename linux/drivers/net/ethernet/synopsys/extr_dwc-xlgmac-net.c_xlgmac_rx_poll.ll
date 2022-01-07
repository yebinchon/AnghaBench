; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, %struct.napi_struct, %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.napi_struct = type { i32 }
%struct.xlgmac_ring = type { i32, %struct.xlgmac_pkt_info }
%struct.xlgmac_pkt_info = type { i32, i32, i32, i32, i64 }
%struct.xlgmac_pdata = type { %struct.TYPE_10__, i32, %struct.napi_struct, i64, %struct.xlgmac_hw_ops, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.xlgmac_hw_ops = type { i64 (%struct.xlgmac_channel.0*)* }
%struct.xlgmac_channel.0 = type opaque
%struct.net_device = type { i32, i32 }
%struct.xlgmac_desc_data = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32, %struct.net_device*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@XLGMAC_RX_DESC_MAX_DIRTY = common dso_local global i64 0, align 8
@RX_PACKET_ATTRIBUTES_INCOMPLETE_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_INCOMPLETE_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CONTEXT_LEN = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error in received packet\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"packet length exceeds configured MTU\0A\00", align 1
@RX_PACKET_ATTRIBUTES_CSUM_DONE_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_CSUM_DONE_LEN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_VLAN_CTAG_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RSS_HASH_POS = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES_RSS_HASH_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"packet_count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_channel*, i32)* @xlgmac_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_rx_poll(%struct.xlgmac_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlgmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.xlgmac_ring*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xlgmac_desc_data*, align 8
  %15 = alloca %struct.xlgmac_pkt_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xlgmac_hw_ops*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.napi_struct*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %24 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %23, i32 0, i32 3
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %24, align 8
  store %struct.xlgmac_pdata* %25, %struct.xlgmac_pdata** %6, align 8
  %26 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %27 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %26, i32 0, i32 2
  %28 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %27, align 8
  store %struct.xlgmac_ring* %28, %struct.xlgmac_ring** %7, align 8
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 5
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %33 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %32, i32 0, i32 4
  store %struct.xlgmac_hw_ops* %33, %struct.xlgmac_hw_ops** %18, align 8
  %34 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %35 = icmp ne %struct.xlgmac_ring* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %408

37:                                               ; preds = %2
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %39 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %44 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %43, i32 0, i32 1
  br label %48

45:                                               ; preds = %37
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %47 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %46, i32 0, i32 2
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi %struct.napi_struct* [ %44, %42 ], [ %47, %45 ]
  store %struct.napi_struct* %49, %struct.napi_struct** %20, align 8
  %50 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %51 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %52 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %50, i32 %53)
  store %struct.xlgmac_desc_data* %54, %struct.xlgmac_desc_data** %14, align 8
  %55 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %56 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %55, i32 0, i32 1
  store %struct.xlgmac_pkt_info* %56, %struct.xlgmac_pkt_info** %15, align 8
  br label %57

57:                                               ; preds = %372, %48
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %375

61:                                               ; preds = %57
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %66 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %71 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %21, align 8
  %74 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %75 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %17, align 4
  %78 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %79 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %85

82:                                               ; preds = %64, %61
  %83 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %84 = call i32 @memset(%struct.xlgmac_pkt_info* %83, i32 0, i32 24)
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %69
  br label %86

86:                                               ; preds = %252, %141, %85
  %87 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %88 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %89 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %87, i32 %90)
  store %struct.xlgmac_desc_data* %91, %struct.xlgmac_desc_data** %14, align 8
  %92 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %93 = call i64 @xlgmac_rx_dirty_desc(%struct.xlgmac_ring* %92)
  %94 = load i64, i64* @XLGMAC_RX_DESC_MAX_DIRTY, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %98 = call i32 @xlgmac_rx_refresh(%struct.xlgmac_channel* %97)
  br label %99

99:                                               ; preds = %96, %86
  %100 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %18, align 8
  %101 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %100, i32 0, i32 0
  %102 = load i64 (%struct.xlgmac_channel.0*)*, i64 (%struct.xlgmac_channel.0*)** %101, align 8
  %103 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %104 = bitcast %struct.xlgmac_channel* %103 to %struct.xlgmac_channel.0*
  %105 = call i64 %102(%struct.xlgmac_channel.0* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %375

108:                                              ; preds = %99
  %109 = load i32, i32* %19, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %112 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %116 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_POS, align 4
  %119 = load i32, i32* @RX_PACKET_ATTRIBUTES_INCOMPLETE_LEN, align 4
  %120 = call i32 @XLGMAC_GET_REG_BITS(i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %122 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_POS, align 4
  %125 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_NEXT_LEN, align 4
  %126 = call i32 @XLGMAC_GET_REG_BITS(i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %128 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_POS, align 4
  %131 = load i32, i32* @RX_PACKET_ATTRIBUTES_CONTEXT_LEN, align 4
  %132 = call i32 @XLGMAC_GET_REG_BITS(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %108
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135, %108
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %86

142:                                              ; preds = %138, %135
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %147 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145, %142
  %151 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %152 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %157 = load i32, i32* @rx_err, align 4
  %158 = load %struct.net_device*, %struct.net_device** %8, align 8
  %159 = call i32 @netif_err(%struct.xlgmac_pdata* %156, i32 %157, %struct.net_device* %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %155, %150
  %161 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %162 = call i32 @dev_kfree_skb(%struct.sk_buff* %161)
  br label %372

163:                                              ; preds = %145
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %246, label %166

166:                                              ; preds = %163
  %167 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %168 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sub i32 %170, %171
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %166
  %179 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %180 = icmp ne %struct.sk_buff* %179, null
  br i1 %180, label %191, label %181

181:                                              ; preds = %178
  %182 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %183 = load %struct.napi_struct*, %struct.napi_struct** %20, align 8
  %184 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call %struct.sk_buff* @xlgmac_create_skb(%struct.xlgmac_pdata* %182, %struct.napi_struct* %183, %struct.xlgmac_desc_data* %184, i32 %185)
  store %struct.sk_buff* %186, %struct.sk_buff** %21, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %188 = icmp ne %struct.sk_buff* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  store i32 1, i32* %17, align 4
  br label %190

190:                                              ; preds = %189, %181
  br label %245

191:                                              ; preds = %178, %166
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %244

194:                                              ; preds = %191
  %195 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %196 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %199 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %204 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %209 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %214 = call i32 @dma_sync_single_range_for_cpu(i32 %197, i32 %202, i32 %207, i32 %212, i32 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %217 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %216)
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %221 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %227 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %234 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @skb_add_rx_frag(%struct.sk_buff* %215, i32 %219, i32* %225, i32 %231, i32 %232, i32 %237)
  %239 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %240 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %194, %191
  br label %245

245:                                              ; preds = %244, %190
  br label %246

246:                                              ; preds = %245, %163
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249, %246
  br label %86

253:                                              ; preds = %249
  %254 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %255 = icmp ne %struct.sk_buff* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  br label %372

257:                                              ; preds = %253
  %258 = load %struct.net_device*, %struct.net_device** %8, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @ETH_HLEN, align 4
  %262 = add i32 %260, %261
  store i32 %262, i32* %11, align 4
  %263 = load %struct.net_device*, %struct.net_device** %8, align 8
  %264 = getelementptr inbounds %struct.net_device, %struct.net_device* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %282, label %269

269:                                              ; preds = %257
  %270 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @ETH_P_8021Q, align 4
  %274 = call i64 @htons(i32 %273)
  %275 = icmp eq i64 %272, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %269
  %277 = load i64, i64* @VLAN_HLEN, align 8
  %278 = load i32, i32* %11, align 4
  %279 = zext i32 %278 to i64
  %280 = add nsw i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %11, align 4
  br label %282

282:                                              ; preds = %276, %269, %257
  %283 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = icmp ugt i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %282
  %289 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %290 = load i32, i32* @rx_err, align 4
  %291 = load %struct.net_device*, %struct.net_device** %8, align 8
  %292 = call i32 @netif_err(%struct.xlgmac_pdata* %289, i32 %290, %struct.net_device* %291, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %293 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %294 = call i32 @dev_kfree_skb(%struct.sk_buff* %293)
  br label %372

295:                                              ; preds = %282
  %296 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %297 = call i64 @netif_msg_pktdata(%struct.xlgmac_pdata* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load %struct.net_device*, %struct.net_device** %8, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %302 = call i32 @xlgmac_print_pkt(%struct.net_device* %300, %struct.sk_buff* %301, i32 0)
  br label %303

303:                                              ; preds = %299, %295
  %304 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %305 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %304)
  %306 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %307 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_POS, align 4
  %310 = load i32, i32* @RX_PACKET_ATTRIBUTES_CSUM_DONE_LEN, align 4
  %311 = call i32 @XLGMAC_GET_REG_BITS(i32 %308, i32 %309, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %303
  %314 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %315 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 8
  br label %317

317:                                              ; preds = %313, %303
  %318 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %319 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @RX_PACKET_ATTRIBUTES_VLAN_CTAG_POS, align 4
  %322 = load i32, i32* @RX_PACKET_ATTRIBUTES_VLAN_CTAG_LEN, align 4
  %323 = call i32 @XLGMAC_GET_REG_BITS(i32 %320, i32 %321, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %317
  %326 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %327 = load i32, i32* @ETH_P_8021Q, align 4
  %328 = call i64 @htons(i32 %327)
  %329 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %330 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %326, i64 %328, i32 %331)
  %333 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %334 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %325, %317
  %339 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %340 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @RX_PACKET_ATTRIBUTES_RSS_HASH_POS, align 4
  %343 = load i32, i32* @RX_PACKET_ATTRIBUTES_RSS_HASH_LEN, align 4
  %344 = call i32 @XLGMAC_GET_REG_BITS(i32 %341, i32 %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %338
  %347 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %348 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %349 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.xlgmac_pkt_info*, %struct.xlgmac_pkt_info** %15, align 8
  %352 = getelementptr inbounds %struct.xlgmac_pkt_info, %struct.xlgmac_pkt_info* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @skb_set_hash(%struct.sk_buff* %347, i32 %350, i32 %353)
  br label %355

355:                                              ; preds = %346, %338
  %356 = load %struct.net_device*, %struct.net_device** %8, align 8
  %357 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %358 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %357, i32 0, i32 2
  store %struct.net_device* %356, %struct.net_device** %358, align 8
  %359 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %360 = load %struct.net_device*, %struct.net_device** %8, align 8
  %361 = call i64 @eth_type_trans(%struct.sk_buff* %359, %struct.net_device* %360)
  %362 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %363 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  %364 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %365 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %366 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @skb_record_rx_queue(%struct.sk_buff* %364, i32 %367)
  %369 = load %struct.napi_struct*, %struct.napi_struct** %20, align 8
  %370 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %371 = call i32 @napi_gro_receive(%struct.napi_struct* %369, %struct.sk_buff* %370)
  br label %372

372:                                              ; preds = %355, %288, %256, %160
  %373 = load i32, i32* %22, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %22, align 4
  br label %57

375:                                              ; preds = %107, %57
  %376 = load i32, i32* %19, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %404

378:                                              ; preds = %375
  %379 = load i32, i32* %16, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %404

384:                                              ; preds = %381, %378
  %385 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %386 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %387 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %385, i32 %388)
  store %struct.xlgmac_desc_data* %389, %struct.xlgmac_desc_data** %14, align 8
  %390 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %391 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %390, i32 0, i32 0
  store i32 1, i32* %391, align 8
  %392 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %393 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %394 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 2
  store %struct.sk_buff* %392, %struct.sk_buff** %395, align 8
  %396 = load i32, i32* %9, align 4
  %397 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %398 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 1
  store i32 %396, i32* %399, align 4
  %400 = load i32, i32* %17, align 4
  %401 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %14, align 8
  %402 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  store i32 %400, i32* %403, align 8
  br label %404

404:                                              ; preds = %384, %381, %375
  %405 = load i32, i32* %22, align 4
  %406 = call i32 @XLGMAC_PR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %405)
  %407 = load i32, i32* %22, align 4
  store i32 %407, i32* %3, align 4
  br label %408

408:                                              ; preds = %404, %36
  %409 = load i32, i32* %3, align 4
  ret i32 %409
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @memset(%struct.xlgmac_pkt_info*, i32, i32) #1

declare dso_local i64 @xlgmac_rx_dirty_desc(%struct.xlgmac_ring*) #1

declare dso_local i32 @xlgmac_rx_refresh(%struct.xlgmac_channel*) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.xlgmac_pdata*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @xlgmac_create_skb(%struct.xlgmac_pdata*, %struct.napi_struct*, %struct.xlgmac_desc_data*, i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_print_pkt(%struct.net_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @XLGMAC_PR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
