; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.net_device = type { i32 }
%struct.fjes_adapter = type { i32, %struct.TYPE_6__, i32, i32, i64, %struct.fjes_hw }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fjes_hw = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.ethhdr = type { i32* }

@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@EP_PARTNER_SHARED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FJES_TX_RETRY_TIMEOUT = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.net_device*)* @fjes_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fjes_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fjes_adapter*, align 8
  %6 = alloca %struct.fjes_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ethhdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %22)
  store %struct.fjes_adapter* %23, %struct.fjes_adapter** %5, align 8
  %24 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %24, i32 0, i32 5
  store %struct.fjes_hw* %25, %struct.fjes_hw** %6, align 8
  %26 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %30, i64* %19, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %31, i32 %32)
  store %struct.netdev_queue* %33, %struct.netdev_queue** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.ethhdr*
  store %struct.ethhdr* %37, %struct.ethhdr** %16, align 8
  %38 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %39 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i64 @vlan_get_tag(%struct.sk_buff* %41, i32* %18)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %15, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %20, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %21, align 4
  %52 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @is_multicast_ether_addr(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %58 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %59 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  store i32 1, i32* %14, align 4
  br label %186

61:                                               ; preds = %2
  %62 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %63 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @is_local_ether_addr(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %151

67:                                               ; preds = %61
  %68 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %69 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %79 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %116

84:                                               ; preds = %67
  %85 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %86 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %91 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %89, %94
  %96 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %97 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %95, %100
  %102 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %103 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %101, %106
  %108 = icmp eq i32 0, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %84
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %112 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %150

116:                                              ; preds = %109, %84, %67
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %117 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %117, i64* %19, align 8
  %118 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %124 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %141 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %139
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %116, %115
  br label %185

151:                                              ; preds = %61
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %152 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %152, i64* %19, align 8
  %153 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %154 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %159 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %158, i32 0, i32 2
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %170 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %168
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %21, align 4
  %175 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %176 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %174
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %151, %150
  br label %186

186:                                              ; preds = %185, %57
  br label %187

187:                                              ; preds = %498, %186
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %501

191:                                              ; preds = %187
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %498

196:                                              ; preds = %191
  %197 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %197, i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @EP_PARTNER_SHARED, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %196
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %203
  %207 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %208 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %207, i32 0, i32 2
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %206, %203
  %218 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %218, i64* %19, align 8
  br label %497

219:                                              ; preds = %196
  %220 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %221 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %221, i32 0, i32 2
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = call i32 @fjes_hw_check_epbuf_version(i32* %227, i32 0)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %219
  %231 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %232 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  %236 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %237 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %247 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %246, i32 0, i32 2
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  %256 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %256, i64* %19, align 8
  br label %496

257:                                              ; preds = %219
  %258 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %259 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %259, i32 0, i32 2
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  %266 = load %struct.net_device*, %struct.net_device** %4, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @fjes_hw_check_mtu(i32* %265, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %313, label %271

271:                                              ; preds = %257
  %272 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %273 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %278 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %277, i32 0, i32 2
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %288 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  %292 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %293 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %292, i32 0, i32 2
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 4
  %302 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %303 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %302, i32 0, i32 2
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  %312 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %312, i64* %19, align 8
  br label %495

313:                                              ; preds = %257
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %340

316:                                              ; preds = %313
  %317 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %318 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %318, i32 0, i32 2
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 2
  %325 = load i32, i32* %18, align 4
  %326 = call i32 @fjes_hw_check_vlan_id(i32* %324, i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %340, label %328

328:                                              ; preds = %316
  %329 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %330 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %329, i32 0, i32 2
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 4
  %339 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %339, i64* %19, align 8
  br label %494

340:                                              ; preds = %316, %313
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %355

344:                                              ; preds = %340
  %345 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %346 = call i32 @memset(i8* %29, i32 0, i32 %345)
  %347 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %351 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @memcpy(i8* %29, i8* %349, i32 %352)
  %354 = load i32, i32* @VLAN_ETH_HLEN, align 4
  store i32 %354, i32* %21, align 4
  store i8* %29, i8** %20, align 8
  br label %355

355:                                              ; preds = %344, %340
  %356 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %357 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %355
  %361 = load i64, i64* @jiffies, align 8
  %362 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %363 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %362, i32 0, i32 4
  store i64 %361, i64* %363, align 8
  %364 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %365 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %364, i32 0, i32 0
  store i32 1, i32* %365, align 8
  br label %371

366:                                              ; preds = %355
  %367 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %368 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %366, %360
  %372 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %373 = load i32, i32* %9, align 4
  %374 = load i8*, i8** %20, align 8
  %375 = load i32, i32* %21, align 4
  %376 = call i64 @fjes_tx_send(%struct.fjes_adapter* %372, i32 %373, i8* %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %453

378:                                              ; preds = %371
  %379 = load i32, i32* %14, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %382, i64* %19, align 8
  br label %452

383:                                              ; preds = %378
  %384 = load i64, i64* @jiffies, align 8
  %385 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %386 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %385, i32 0, i32 4
  %387 = load i64, i64* %386, align 8
  %388 = sub nsw i64 %384, %387
  %389 = load i64, i64* @FJES_TX_RETRY_TIMEOUT, align 8
  %390 = icmp sge i64 %388, %389
  br i1 %390, label %391, label %423

391:                                              ; preds = %383
  %392 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %393 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 4
  %397 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %398 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %397, i32 0, i32 2
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %398, align 8
  %400 = load i32, i32* %9, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %404, align 4
  %407 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %408 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4
  %412 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %413 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %412, i32 0, i32 2
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %419, align 4
  %422 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %422, i64* %19, align 8
  br label %451

423:                                              ; preds = %383
  %424 = load %struct.net_device*, %struct.net_device** %4, align 8
  %425 = call i32 @netif_trans_update(%struct.net_device* %424)
  %426 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %427 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %426, i32 0, i32 2
  %428 = load %struct.TYPE_8__*, %struct.TYPE_8__** %427, align 8
  %429 = load i32, i32* %9, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %433, align 4
  %436 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %437 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %436)
  %438 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %439 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %438, i32 0, i32 2
  %440 = call i32 @work_pending(i32* %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %449, label %442

442:                                              ; preds = %423
  %443 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %444 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %447 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %446, i32 0, i32 2
  %448 = call i32 @queue_work(i32 %445, i32* %447)
  br label %449

449:                                              ; preds = %442, %423
  %450 = load i64, i64* @NETDEV_TX_BUSY, align 8
  store i64 %450, i64* %19, align 8
  br label %451

451:                                              ; preds = %449, %391
  br label %452

452:                                              ; preds = %451, %381
  br label %493

453:                                              ; preds = %371
  %454 = load i32, i32* %14, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %489, label %456

456:                                              ; preds = %453
  %457 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %458 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  %462 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %463 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %462, i32 0, i32 2
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %463, align 8
  %465 = load i32, i32* %9, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %469, align 4
  %472 = load i32, i32* %21, align 4
  %473 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %474 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, %472
  store i32 %477, i32* %475, align 4
  %478 = load i32, i32* %21, align 4
  %479 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %480 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %479, i32 0, i32 2
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** %480, align 8
  %482 = load i32, i32* %9, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, %478
  store i32 %488, i32* %486, align 4
  br label %489

489:                                              ; preds = %456, %453
  %490 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %491 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %490, i32 0, i32 0
  store i32 0, i32* %491, align 8
  %492 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %492, i64* %19, align 8
  br label %493

493:                                              ; preds = %489, %452
  br label %494

494:                                              ; preds = %493, %328
  br label %495

495:                                              ; preds = %494, %271
  br label %496

496:                                              ; preds = %495, %230
  br label %497

497:                                              ; preds = %496, %217
  br label %498

498:                                              ; preds = %497, %195
  %499 = load i32, i32* %9, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %9, align 4
  br label %187

501:                                              ; preds = %187
  %502 = load i64, i64* %19, align 8
  %503 = load i64, i64* @NETDEV_TX_OK, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %543

505:                                              ; preds = %501
  %506 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %507 = call i32 @dev_kfree_skb(%struct.sk_buff* %506)
  %508 = load i32, i32* %14, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %542

510:                                              ; preds = %505
  %511 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %512 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 4
  %516 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %517 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %516, i32 0, i32 2
  %518 = load %struct.TYPE_8__*, %struct.TYPE_8__** %517, align 8
  %519 = load i32, i32* %8, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %523, align 4
  %526 = load %struct.fjes_adapter*, %struct.fjes_adapter** %5, align 8
  %527 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %528, align 4
  %531 = load i32, i32* %21, align 4
  %532 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %533 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %532, i32 0, i32 2
  %534 = load %struct.TYPE_8__*, %struct.TYPE_8__** %533, align 8
  %535 = load i32, i32* %8, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, %531
  store i32 %541, i32* %539, align 4
  br label %542

542:                                              ; preds = %510, %505
  br label %543

543:                                              ; preds = %542, %501
  %544 = load i64, i64* %19, align 8
  %545 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %545)
  ret i64 %544
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_local_ether_addr(i32*) #1

declare dso_local i32 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @fjes_hw_check_epbuf_version(i32*, i32) #1

declare dso_local i32 @fjes_hw_check_mtu(i32*, i32) #1

declare dso_local i32 @fjes_hw_check_vlan_id(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @fjes_tx_send(%struct.fjes_adapter*, i32, i8*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
