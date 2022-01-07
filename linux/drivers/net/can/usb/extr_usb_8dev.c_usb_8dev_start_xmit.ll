; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.usb_8dev_priv = type { i32, i32, i32, %struct.usb_8dev_tx_urb_context* }
%struct.usb_8dev_tx_urb_context = type { i32, i32, %struct.usb_8dev_priv* }
%struct.can_frame = type { i32, i32, i32 }
%struct.usb_8dev_tx_msg = type { i32, i32, i32, i32, i32, i32 }
%struct.urb = type { i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@USB_8DEV_DATA_START = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@USB_8DEV_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@USB_8DEV_EXTID = common dso_local global i32 0, align 4
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@USB_8DEV_DATA_END = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@USB_8DEV_ENDP_DATA_TX = common dso_local global i32 0, align 4
@usb_8dev_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't find free context\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @usb_8dev_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.usb_8dev_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.usb_8dev_tx_msg*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.usb_8dev_tx_urb_context*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.usb_8dev_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.usb_8dev_priv* %17, %struct.usb_8dev_priv** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.can_frame*
  store %struct.can_frame* %23, %struct.can_frame** %8, align 8
  store %struct.usb_8dev_tx_urb_context* null, %struct.usb_8dev_tx_urb_context** %11, align 8
  store i64 24, i64* %15, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @can_dropped_invalid_skb(%struct.net_device* %24, %struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %266

30:                                               ; preds = %2
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %31)
  store %struct.urb* %32, %struct.urb** %10, align 8
  %33 = load %struct.urb*, %struct.urb** %10, align 8
  %34 = icmp ne %struct.urb* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %258

36:                                               ; preds = %30
  %37 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %38 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %15, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = load %struct.urb*, %struct.urb** %10, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = call i32* @usb_alloc_coherent(i32 %39, i64 %40, i32 %41, i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %255

50:                                               ; preds = %36
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @memset(i32* %51, i32 0, i64 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = bitcast i32* %54 to %struct.usb_8dev_tx_msg*
  store %struct.usb_8dev_tx_msg* %55, %struct.usb_8dev_tx_msg** %9, align 8
  %56 = load i32, i32* @USB_8DEV_DATA_START, align 4
  %57 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %58 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %60 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAN_RTR_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %50
  %68 = load i32, i32* @USB_8DEV_RTR, align 4
  %69 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %70 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %50
  %74 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CAN_EFF_FLAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @USB_8DEV_EXTID, align 4
  %82 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %83 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CAN_ERR_MASK, align 4
  %91 = and i32 %89, %90
  %92 = call i32 @cpu_to_be32(i32 %91)
  %93 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %94 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %96 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %99 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %101 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %107 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* @USB_8DEV_DATA_END, align 4
  %111 = load %struct.usb_8dev_tx_msg*, %struct.usb_8dev_tx_msg** %9, align 8
  %112 = getelementptr inbounds %struct.usb_8dev_tx_msg, %struct.usb_8dev_tx_msg* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %136, %86
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @MAX_TX_URBS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %119 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %118, i32 0, i32 3
  %120 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %120, i64 %122
  %124 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MAX_TX_URBS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %130 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %129, i32 0, i32 3
  %131 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %131, i64 %133
  store %struct.usb_8dev_tx_urb_context* %134, %struct.usb_8dev_tx_urb_context** %11, align 8
  br label %139

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %113

139:                                              ; preds = %128, %113
  %140 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %141 = icmp ne %struct.usb_8dev_tx_urb_context* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %208

143:                                              ; preds = %139
  %144 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %145 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %146 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %145, i32 0, i32 2
  store %struct.usb_8dev_priv* %144, %struct.usb_8dev_priv** %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %149 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %151 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %154 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.urb*, %struct.urb** %10, align 8
  %156 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %157 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %160 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @USB_8DEV_ENDP_DATA_TX, align 4
  %163 = call i32 @usb_sndbulkpipe(i32 %161, i32 %162)
  %164 = load i32*, i32** %12, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i32, i32* @usb_8dev_write_bulk_callback, align 4
  %167 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %168 = call i32 @usb_fill_bulk_urb(%struct.urb* %155, i32 %158, i32 %163, i32* %164, i64 %165, i32 %166, %struct.usb_8dev_tx_urb_context* %167)
  %169 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %170 = load %struct.urb*, %struct.urb** %10, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.urb*, %struct.urb** %10, align 8
  %175 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %176 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %175, i32 0, i32 2
  %177 = call i32 @usb_anchor_urb(%struct.urb* %174, i32* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %181 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @can_put_echo_skb(%struct.sk_buff* %178, %struct.net_device* %179, i32 %182)
  %184 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %185 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %184, i32 0, i32 0
  %186 = call i32 @atomic_inc(i32* %185)
  %187 = load %struct.urb*, %struct.urb** %10, align 8
  %188 = load i32, i32* @GFP_ATOMIC, align 4
  %189 = call i32 @usb_submit_urb(%struct.urb* %187, i32 %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %143
  br label %223

194:                                              ; preds = %143
  %195 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %196 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %195, i32 0, i32 0
  %197 = call i32 @atomic_read(i32* %196)
  %198 = load i32, i32* @MAX_TX_URBS, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.net_device*, %struct.net_device** %5, align 8
  %202 = call i32 @netif_stop_queue(%struct.net_device* %201)
  br label %203

203:                                              ; preds = %200, %194
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.urb*, %struct.urb** %10, align 8
  %206 = call i32 @usb_free_urb(%struct.urb* %205)
  %207 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %207, i32* %3, align 4
  br label %266

208:                                              ; preds = %142
  %209 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %210 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i64, i64* %15, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = load %struct.urb*, %struct.urb** %10, align 8
  %215 = getelementptr inbounds %struct.urb, %struct.urb* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @usb_free_coherent(i32 %211, i64 %212, i32* %213, i32 %216)
  %218 = load %struct.urb*, %struct.urb** %10, align 8
  %219 = call i32 @usb_free_urb(%struct.urb* %218)
  %220 = load %struct.net_device*, %struct.net_device** %5, align 8
  %221 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %222, i32* %3, align 4
  br label %266

223:                                              ; preds = %193
  %224 = load %struct.net_device*, %struct.net_device** %5, align 8
  %225 = load %struct.usb_8dev_tx_urb_context*, %struct.usb_8dev_tx_urb_context** %11, align 8
  %226 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, %struct.usb_8dev_tx_urb_context* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @can_free_echo_skb(%struct.net_device* %224, i32 %227)
  %229 = load %struct.urb*, %struct.urb** %10, align 8
  %230 = call i32 @usb_unanchor_urb(%struct.urb* %229)
  %231 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %232 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* %15, align 8
  %235 = load i32*, i32** %12, align 8
  %236 = load %struct.urb*, %struct.urb** %10, align 8
  %237 = getelementptr inbounds %struct.urb, %struct.urb* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @usb_free_coherent(i32 %233, i64 %234, i32* %235, i32 %238)
  %240 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %6, align 8
  %241 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %240, i32 0, i32 0
  %242 = call i32 @atomic_dec(i32* %241)
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @ENODEV, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %223
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = call i32 @netif_device_detach(%struct.net_device* %248)
  br label %254

250:                                              ; preds = %223
  %251 = load %struct.net_device*, %struct.net_device** %5, align 8
  %252 = load i32, i32* %14, align 4
  %253 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %250, %247
  br label %255

255:                                              ; preds = %254, %47
  %256 = load %struct.urb*, %struct.urb** %10, align 8
  %257 = call i32 @usb_free_urb(%struct.urb* %256)
  br label %258

258:                                              ; preds = %255, %35
  %259 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %260 = call i32 @dev_kfree_skb(%struct.sk_buff* %259)
  %261 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %262 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %258, %208, %204, %28
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.usb_8dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i64, i32, %struct.usb_8dev_tx_urb_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
