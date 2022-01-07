; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.esd_usb2_net_priv = type { i32, i32, %struct.esd_tx_urb_context*, i32, %struct.esd_usb2* }
%struct.esd_tx_urb_context = type { i32, i32, %struct.esd_usb2_net_priv* }
%struct.esd_usb2 = type { i32 }
%struct.can_frame = type { i32, i32, i32* }
%struct.esd_usb2_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32 }
%struct.urb = type { i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@CMD_CAN_TX = common dso_local global i32 0, align 4
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@ESD_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@ESD_EXTID = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't find free context\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@esd_usb2_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @esd_usb2_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.esd_usb2_net_priv*, align 8
  %7 = alloca %struct.esd_usb2*, align 8
  %8 = alloca %struct.esd_tx_urb_context*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca %struct.esd_usb2_msg*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.esd_usb2_net_priv* %19, %struct.esd_usb2_net_priv** %6, align 8
  %20 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %21 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %20, i32 0, i32 4
  %22 = load %struct.esd_usb2*, %struct.esd_usb2** %21, align 8
  store %struct.esd_usb2* %22, %struct.esd_usb2** %7, align 8
  store %struct.esd_tx_urb_context* null, %struct.esd_tx_urb_context** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store %struct.net_device_stats* %24, %struct.net_device_stats** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.can_frame*
  store %struct.can_frame* %28, %struct.can_frame** %10, align 8
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %29, i32* %16, align 4
  store i64 32, i64* %17, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 @can_dropped_invalid_skb(%struct.net_device* %30, %struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %321

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %37)
  store %struct.urb* %38, %struct.urb** %12, align 8
  %39 = load %struct.urb*, %struct.urb** %12, align 8
  %40 = icmp ne %struct.urb* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  br label %319

48:                                               ; preds = %36
  %49 = load %struct.esd_usb2*, %struct.esd_usb2** %7, align 8
  %50 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %17, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = load %struct.urb*, %struct.urb** %12, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = call i32* @usb_alloc_coherent(i32 %51, i64 %52, i32 %53, i32* %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %48
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  br label %316

68:                                               ; preds = %48
  %69 = load i32*, i32** %13, align 8
  %70 = bitcast i32* %69 to %struct.esd_usb2_msg*
  store %struct.esd_usb2_msg* %70, %struct.esd_usb2_msg** %11, align 8
  %71 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %72 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 3, i32* %74, align 8
  %75 = load i32, i32* @CMD_CAN_TX, align 4
  %76 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %77 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %81 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %84 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %82, i32* %86, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %91 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  %94 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CAN_ERR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @cpu_to_le32(i32 %98)
  %100 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %101 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 %99, i32* %103, align 8
  %104 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %105 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CAN_RTR_FLAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %68
  %111 = load i32, i32* @ESD_RTR, align 4
  %112 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %113 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %110, %68
  %119 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %120 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CAN_EFF_FLAG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load i32, i32* @ESD_EXTID, align 4
  %127 = call i32 @cpu_to_le32(i32 %126)
  %128 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %129 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %127
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %125, %118
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %157, %134
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %138 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %143 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %150 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %148, i32* %156, align 4
  br label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %135

160:                                              ; preds = %135
  %161 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %162 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 3
  %165 = ashr i32 %164, 2
  %166 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %167 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, %165
  store i32 %171, i32* %169, align 8
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %195, %160
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @MAX_TX_URBS, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %178 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %177, i32 0, i32 2
  %179 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %179, i64 %181
  %183 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MAX_TX_URBS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %176
  %188 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %189 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %188, i32 0, i32 2
  %190 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %190, i64 %192
  store %struct.esd_tx_urb_context* %193, %struct.esd_tx_urb_context** %8, align 8
  br label %198

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %172

198:                                              ; preds = %187, %172
  %199 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %200 = icmp ne %struct.esd_tx_urb_context* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %204 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %204, i32* %16, align 4
  br label %306

205:                                              ; preds = %198
  %206 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %207 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %208 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %207, i32 0, i32 2
  store %struct.esd_usb2_net_priv* %206, %struct.esd_usb2_net_priv** %208, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %211 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %213 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %216 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %14, align 4
  %218 = or i32 -2147483648, %217
  %219 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %220 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 4
  %223 = load %struct.urb*, %struct.urb** %12, align 8
  %224 = load %struct.esd_usb2*, %struct.esd_usb2** %7, align 8
  %225 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.esd_usb2*, %struct.esd_usb2** %7, align 8
  %228 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @usb_sndbulkpipe(i32 %229, i32 2)
  %231 = load i32*, i32** %13, align 8
  %232 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %11, align 8
  %233 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = shl i32 %236, 2
  %238 = load i32, i32* @esd_usb2_write_bulk_callback, align 4
  %239 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %240 = call i32 @usb_fill_bulk_urb(%struct.urb* %223, i32 %226, i32 %230, i32* %231, i32 %237, i32 %238, %struct.esd_tx_urb_context* %239)
  %241 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %242 = load %struct.urb*, %struct.urb** %12, align 8
  %243 = getelementptr inbounds %struct.urb, %struct.urb* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load %struct.urb*, %struct.urb** %12, align 8
  %247 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %248 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %247, i32 0, i32 1
  %249 = call i32 @usb_anchor_urb(%struct.urb* %246, i32* %248)
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = load %struct.net_device*, %struct.net_device** %5, align 8
  %252 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %253 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @can_put_echo_skb(%struct.sk_buff* %250, %struct.net_device* %251, i32 %254)
  %256 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %257 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %256, i32 0, i32 0
  %258 = call i32 @atomic_inc(i32* %257)
  %259 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %260 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %259, i32 0, i32 0
  %261 = call i32 @atomic_read(i32* %260)
  %262 = load i32, i32* @MAX_TX_URBS, align 4
  %263 = icmp sge i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %205
  %265 = load %struct.net_device*, %struct.net_device** %5, align 8
  %266 = call i32 @netif_stop_queue(%struct.net_device* %265)
  br label %267

267:                                              ; preds = %264, %205
  %268 = load %struct.urb*, %struct.urb** %12, align 8
  %269 = load i32, i32* @GFP_ATOMIC, align 4
  %270 = call i32 @usb_submit_urb(%struct.urb* %268, i32 %269)
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %300

273:                                              ; preds = %267
  %274 = load %struct.net_device*, %struct.net_device** %5, align 8
  %275 = load %struct.esd_tx_urb_context*, %struct.esd_tx_urb_context** %8, align 8
  %276 = getelementptr inbounds %struct.esd_tx_urb_context, %struct.esd_tx_urb_context* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @can_free_echo_skb(%struct.net_device* %274, i32 %277)
  %279 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %6, align 8
  %280 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %279, i32 0, i32 0
  %281 = call i32 @atomic_dec(i32* %280)
  %282 = load %struct.urb*, %struct.urb** %12, align 8
  %283 = call i32 @usb_unanchor_urb(%struct.urb* %282)
  %284 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %285 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* @ENODEV, align 4
  %290 = sub nsw i32 0, %289
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %273
  %293 = load %struct.net_device*, %struct.net_device** %5, align 8
  %294 = call i32 @netif_device_detach(%struct.net_device* %293)
  br label %299

295:                                              ; preds = %273
  %296 = load %struct.net_device*, %struct.net_device** %5, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %296, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %295, %292
  br label %306

300:                                              ; preds = %267
  %301 = load %struct.net_device*, %struct.net_device** %5, align 8
  %302 = call i32 @netif_trans_update(%struct.net_device* %301)
  %303 = load %struct.urb*, %struct.urb** %12, align 8
  %304 = call i32 @usb_free_urb(%struct.urb* %303)
  %305 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %305, i32* %3, align 4
  br label %321

306:                                              ; preds = %299, %201
  %307 = load %struct.esd_usb2*, %struct.esd_usb2** %7, align 8
  %308 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i64, i64* %17, align 8
  %311 = load i32*, i32** %13, align 8
  %312 = load %struct.urb*, %struct.urb** %12, align 8
  %313 = getelementptr inbounds %struct.urb, %struct.urb* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @usb_free_coherent(i32 %309, i64 %310, i32* %311, i32 %314)
  br label %316

316:                                              ; preds = %306, %59
  %317 = load %struct.urb*, %struct.urb** %12, align 8
  %318 = call i32 @usb_free_urb(%struct.urb* %317)
  br label %319

319:                                              ; preds = %316, %41
  %320 = load i32, i32* %16, align 4
  store i32 %320, i32* %3, align 4
  br label %321

321:                                              ; preds = %319, %300, %34
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.esd_tx_urb_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
