; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.peak_canfd_priv = type { i32, i32 (%struct.peak_canfd_priv*, %struct.pucan_tx_msg*)*, i32, %struct.TYPE_2__, i32, %struct.pucan_tx_msg* (%struct.peak_canfd_priv*, i32, i32*)* }
%struct.pucan_tx_msg = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.canfd_frame = type { i32, i32, i64, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@PUCAN_MSG_CAN_TX = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_ID = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_DATA_LEN = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@PUCAN_MSG_BITRATE_SWITCH = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@PUCAN_MSG_ERROR_STATE_IND = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_RTR = common dso_local global i32 0, align 4
@PUCAN_MSG_LOOPED_BACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@PUCAN_MSG_SELF_RECEIVE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CANFD_MAX_DLEN = common dso_local global i32 0, align 4
@CAN_MAX_DLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @peak_canfd_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peak_canfd_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.peak_canfd_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.canfd_frame*, align 8
  %9 = alloca %struct.pucan_tx_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.peak_canfd_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.peak_canfd_priv* %17, %struct.peak_canfd_priv** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.canfd_frame*
  store %struct.canfd_frame* %23, %struct.canfd_frame** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @can_dropped_invalid_skb(%struct.net_device* %24, %struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %259

30:                                               ; preds = %2
  %31 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %32 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add i64 48, %33
  %35 = call i32 @ALIGN(i64 %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %37 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %36, i32 0, i32 5
  %38 = load %struct.pucan_tx_msg* (%struct.peak_canfd_priv*, i32, i32*)*, %struct.pucan_tx_msg* (%struct.peak_canfd_priv*, i32, i32*)** %37, align 8
  %39 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.pucan_tx_msg* %38(%struct.peak_canfd_priv* %39, i32 %40, i32* %14)
  store %struct.pucan_tx_msg* %41, %struct.pucan_tx_msg** %9, align 8
  %42 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %43 = icmp ne %struct.pucan_tx_msg* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %30
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_stop_queue(%struct.net_device* %49)
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %259

52:                                               ; preds = %30
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %56 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @PUCAN_MSG_CAN_TX, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %60 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %11, align 4
  %61 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %62 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CAN_EFF_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %52
  %68 = load i32, i32* @PUCAN_MSG_EXT_ID, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %72 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CAN_EFF_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %78 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %88

79:                                               ; preds = %52
  %80 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %81 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAN_SFF_MASK, align 4
  %84 = and i32 %82, %83
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %87 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %79, %67
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i64 @can_is_canfd_skb(%struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %94 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @can_len2dlc(i64 %95)
  store i64 %96, i64* %15, align 8
  %97 = load i32, i32* @PUCAN_MSG_EXT_DATA_LEN, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %101 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CANFD_BRS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load i32, i32* @PUCAN_MSG_BITRATE_SWITCH, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %92
  %111 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %112 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CANFD_ESI, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @PUCAN_MSG_ERROR_STATE_IND, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %110
  br label %137

122:                                              ; preds = %88
  %123 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %124 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %15, align 8
  %126 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %127 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CAN_RTR_FLAG, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i32, i32* @PUCAN_MSG_RTR, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %132, %122
  br label %137

137:                                              ; preds = %136, %121
  %138 = load i32, i32* @PUCAN_MSG_LOOPED_BACK, align 4
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %142 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i32, i32* @PUCAN_MSG_SELF_RECEIVE, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %148, %137
  %153 = load i32, i32* %11, align 4
  %154 = call i8* @cpu_to_le16(i32 %153)
  %155 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %156 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %158 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @PUCAN_MSG_CHANNEL_DLC(i32 %159, i64 %160)
  %162 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %163 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %165 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %168 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %171 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @memcpy(i32 %166, i32 %169, i64 %172)
  %174 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %175 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %178 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %180 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %179, i32 0, i32 2
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %186 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @can_put_echo_skb(%struct.sk_buff* %183, %struct.net_device* %184, i32 %187)
  %189 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %190 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  %193 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %194 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = srem i32 %192, %196
  %198 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %199 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %201 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %205 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %13, align 4
  %214 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %215 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %152
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* @CANFD_MAX_DLEN, align 4
  %225 = sext i32 %224 to i64
  %226 = add i64 48, %225
  %227 = icmp ult i64 %223, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %13, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %13, align 4
  br label %241

231:                                              ; preds = %152
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* @CAN_MAX_DLEN, align 4
  %235 = sext i32 %234 to i64
  %236 = add i64 48, %235
  %237 = icmp ult i64 %233, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %13, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %231, %221
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.net_device*, %struct.net_device** %5, align 8
  %246 = call i32 @netif_stop_queue(%struct.net_device* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %249 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %248, i32 0, i32 2
  %250 = load i64, i64* %12, align 8
  %251 = call i32 @spin_unlock_irqrestore(i32* %249, i64 %250)
  %252 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %253 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %252, i32 0, i32 1
  %254 = load i32 (%struct.peak_canfd_priv*, %struct.pucan_tx_msg*)*, i32 (%struct.peak_canfd_priv*, %struct.pucan_tx_msg*)** %253, align 8
  %255 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %6, align 8
  %256 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %257 = call i32 %254(%struct.peak_canfd_priv* %255, %struct.pucan_tx_msg* %256)
  %258 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %247, %44, %28
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local %struct.peak_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i64 @can_len2dlc(i64) #1

declare dso_local i32 @PUCAN_MSG_CHANNEL_DLC(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
