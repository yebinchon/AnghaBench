; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ibmvnic_adapter = type { i32, i64, i64, i32*, i32*, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.ibmvnic_rx_buff = type { i64, %struct.sk_buff* }
%union.sub_crq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i32, i64, i32 }

@VNIC_RESET_NON_FATAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"rx buffer returned with rc %x\0A\00", align 1
@IBMVNIC_VLAN_STRIPPED = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IBMVNIC_IP_CHKSUM_GOOD = common dso_local global i32 0, align 4
@IBMVNIC_TCP_UDP_CHKSUM_GOOD = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@VNIC_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ibmvnic_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ibmvnic_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ibmvnic_rx_buff*, align 8
  %12 = alloca %union.sub_crq*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %17 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %19)
  store %struct.ibmvnic_adapter* %20, %struct.ibmvnic_adapter** %7, align 8
  %21 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %21, i64 %26
  %28 = ptrtoint %struct.napi_struct* %27 to i32
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %293, %2
  br label %30

30:                                               ; preds = %204, %120, %97, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %247

34:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  %35 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %35, i32 0, i32 7
  %37 = call i64 @test_bit(i32 0, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VNIC_RESET_NON_FATAL, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ false, %34 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %52 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %51, i32 %58)
  %60 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @napi_complete_done(%struct.napi_struct* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %306

64:                                               ; preds = %45
  %65 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %66 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @pending_scrq(%struct.ibmvnic_adapter* %65, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %247

76:                                               ; preds = %64
  %77 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %78 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call %union.sub_crq* @ibmvnic_next_scrq(%struct.ibmvnic_adapter* %77, i32 %84)
  store %union.sub_crq* %85, %union.sub_crq** %12, align 8
  %86 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %87 = bitcast %union.sub_crq* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @be64_to_cpu(i32 %89)
  %91 = inttoptr i64 %90 to %struct.ibmvnic_rx_buff*
  store %struct.ibmvnic_rx_buff* %91, %struct.ibmvnic_rx_buff** %11, align 8
  %92 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %93 = bitcast %union.sub_crq* %92 to %struct.TYPE_4__*
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %76
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %100 = bitcast %union.sub_crq* %99 to %struct.TYPE_4__*
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @be16_to_cpu(i64 %102)
  %104 = call i32 @netdev_dbg(%struct.net_device* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %106 = bitcast %union.sub_crq* %105 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %109 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %108, i32 0, i32 1
  %110 = load %struct.sk_buff*, %struct.sk_buff** %109, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %110)
  %112 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %113 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %114 = call i32 @remove_buff_from_pool(%struct.ibmvnic_adapter* %112, %struct.ibmvnic_rx_buff* %113)
  br label %30

115:                                              ; preds = %76
  %116 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %117 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %116, i32 0, i32 1
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %122 = bitcast %union.sub_crq* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %125 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %126 = call i32 @remove_buff_from_pool(%struct.ibmvnic_adapter* %124, %struct.ibmvnic_rx_buff* %125)
  br label %30

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127
  %129 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %130 = bitcast %union.sub_crq* %129 to %struct.TYPE_4__*
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @be32_to_cpu(i32 %132)
  store i64 %133, i64* %13, align 8
  %134 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %135 = bitcast %union.sub_crq* %134 to %struct.TYPE_4__*
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @be16_to_cpu(i64 %137)
  store i64 %138, i64* %14, align 8
  %139 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %140 = bitcast %union.sub_crq* %139 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %15, align 4
  %143 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %144 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %143, i32 0, i32 1
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %10, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %147 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %148 = getelementptr inbounds %struct.ibmvnic_rx_buff, %struct.ibmvnic_rx_buff* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %146, i64 %151, i64 %152)
  %154 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %155 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %128
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @IBMVNIC_VLAN_STRIPPED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %165 = load i32, i32* @ETH_P_8021Q, align 4
  %166 = call i32 @htons(i32 %165)
  %167 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %168 = bitcast %union.sub_crq* %167 to %struct.TYPE_4__*
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ntohs(i32 %170)
  %172 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %164, i32 %166, i32 %171)
  br label %173

173:                                              ; preds = %163, %158, %128
  %174 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %175 = bitcast %union.sub_crq* %174 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %178 = load %struct.ibmvnic_rx_buff*, %struct.ibmvnic_rx_buff** %11, align 8
  %179 = call i32 @remove_buff_from_pool(%struct.ibmvnic_adapter* %177, %struct.ibmvnic_rx_buff* %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @skb_put(%struct.sk_buff* %180, i64 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = call i32 @eth_type_trans(%struct.sk_buff* %183, %struct.net_device* %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @skb_record_rx_queue(%struct.sk_buff* %188, i32 %189)
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @IBMVNIC_IP_CHKSUM_GOOD, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %173
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @IBMVNIC_TCP_UDP_CHKSUM_GOOD, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %195, %173
  %205 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %13, align 8
  %208 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = call i32 @napi_gro_receive(%struct.napi_struct* %208, %struct.sk_buff* %209)
  %211 = load %struct.net_device*, %struct.net_device** %6, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = load i64, i64* %13, align 8
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %216
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %225 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %224, i32 0, i32 5
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load i64, i64* %13, align 8
  %234 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %235 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %234, i32 0, i32 5
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %233
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %30

247:                                              ; preds = %75, %30
  %248 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %249 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @VNIC_CLOSING, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %255 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %256 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = call i32 @replenish_rx_pool(%struct.ibmvnic_adapter* %254, i32* %260)
  br label %262

262:                                              ; preds = %253, %247
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %5, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %304

266:                                              ; preds = %262
  %267 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %268 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %269 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %267, i32 %274)
  %276 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @napi_complete_done(%struct.napi_struct* %276, i32 %277)
  %279 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %280 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %281 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @pending_scrq(%struct.ibmvnic_adapter* %279, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %266
  %290 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %291 = call i64 @napi_reschedule(%struct.napi_struct* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %295 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %296 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @disable_scrq_irq(%struct.ibmvnic_adapter* %294, i32 %301)
  br label %29

303:                                              ; preds = %289, %266
  br label %304

304:                                              ; preds = %303, %262
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %304, %50
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @enable_scrq_irq(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i64 @pending_scrq(%struct.ibmvnic_adapter*, i32) #1

declare dso_local %union.sub_crq* @ibmvnic_next_scrq(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @remove_buff_from_pool(%struct.ibmvnic_adapter*, %struct.ibmvnic_rx_buff*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @replenish_rx_pool(%struct.ibmvnic_adapter*, i32*) #1

declare dso_local i64 @napi_reschedule(%struct.napi_struct*) #1

declare dso_local i32 @disable_scrq_irq(%struct.ibmvnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
