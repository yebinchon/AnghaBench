; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.ems_usb = type { i64, i32, i32, i32, %struct.ems_tx_urb_context* }
%struct.ems_tx_urb_context = type { i32, i32, %struct.ems_usb* }
%struct.can_frame = type { i32, i32, i32* }
%struct.ems_cpc_msg = type { i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.urb = type { i32, i32 }

@CPC_HEADER_SIZE = common dso_local global i32 0, align 4
@CPC_MSG_HEADER_LEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_EXT_RTR_FRAME = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_RTR_FRAME = common dso_local global i32 0, align 4
@CPC_CAN_MSG_MIN_SIZE = common dso_local global i8* null, align 8
@CPC_CMD_TYPE_EXT_CAN_FRAME = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_CAN_FRAME = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't find free context\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ems_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@CPC_TX_QUEUE_TRIGGER_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ems_usb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ems_usb*, align 8
  %7 = alloca %struct.ems_tx_urb_context*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.ems_cpc_msg*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %16)
  store %struct.ems_usb* %17, %struct.ems_usb** %6, align 8
  store %struct.ems_tx_urb_context* null, %struct.ems_tx_urb_context** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.can_frame*
  store %struct.can_frame* %23, %struct.can_frame** %9, align 8
  %24 = load i32, i32* @CPC_HEADER_SIZE, align 4
  %25 = load i32, i32* @CPC_MSG_HEADER_LEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  store i64 %28, i64* %15, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i64 @can_dropped_invalid_skb(%struct.net_device* %29, %struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %315

35:                                               ; preds = %2
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %36)
  store %struct.urb* %37, %struct.urb** %11, align 8
  %38 = load %struct.urb*, %struct.urb** %11, align 8
  %39 = icmp ne %struct.urb* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %307

41:                                               ; preds = %35
  %42 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %43 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = load %struct.urb*, %struct.urb** %11, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = call i32* @usb_alloc_coherent(i32 %44, i64 %45, i32 %46, i32* %48)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @netdev_err(%struct.net_device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.urb*, %struct.urb** %11, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  br label %307

57:                                               ; preds = %41
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @CPC_HEADER_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to %struct.ems_cpc_msg*
  store %struct.ems_cpc_msg* %62, %struct.ems_cpc_msg** %10, align 8
  %63 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CAN_ERR_MASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @cpu_to_le32(i32 %67)
  %69 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %70 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 8
  %73 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %77 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %81 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAN_RTR_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %57
  %87 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CAN_EFF_FLAG, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @CPC_CMD_TYPE_EXT_RTR_FRAME, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @CPC_CMD_TYPE_RTR_FRAME, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %100 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @CPC_CAN_MSG_MIN_SIZE, align 8
  %102 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %103 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %153

104:                                              ; preds = %57
  %105 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CAN_EFF_FLAG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @CPC_CMD_TYPE_EXT_CAN_FRAME, align 4
  br label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @CPC_CMD_TYPE_CAN_FRAME, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %118 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %141, %115
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %122 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %134 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %132, i32* %140, align 4
  br label %141

141:                                              ; preds = %125
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load i8*, i8** @CPC_CAN_MSG_MIN_SIZE, align 8
  %146 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %147 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr i8, i8* %145, i64 %149
  %151 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %152 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %144, %97
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %177, %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @MAX_TX_URBS, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %154
  %159 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %160 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %159, i32 0, i32 4
  %161 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %161, i64 %163
  %165 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MAX_TX_URBS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %158
  %170 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %171 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %170, i32 0, i32 4
  %172 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %172, i64 %174
  store %struct.ems_tx_urb_context* %175, %struct.ems_tx_urb_context** %7, align 8
  br label %180

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %154

180:                                              ; preds = %169, %154
  %181 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %182 = icmp ne %struct.ems_tx_urb_context* %181, null
  br i1 %182, label %198, label %183

183:                                              ; preds = %180
  %184 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %185 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %15, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = load %struct.urb*, %struct.urb** %11, align 8
  %190 = getelementptr inbounds %struct.urb, %struct.urb* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @usb_free_coherent(i32 %186, i64 %187, i32* %188, i32 %191)
  %193 = load %struct.urb*, %struct.urb** %11, align 8
  %194 = call i32 @usb_free_urb(%struct.urb* %193)
  %195 = load %struct.net_device*, %struct.net_device** %5, align 8
  %196 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %197 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %197, i32* %3, align 4
  br label %315

198:                                              ; preds = %180
  %199 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %200 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %201 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %200, i32 0, i32 2
  store %struct.ems_usb* %199, %struct.ems_usb** %201, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %204 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %206 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %209 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.urb*, %struct.urb** %11, align 8
  %211 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %212 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %215 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @usb_sndbulkpipe(i32 %216, i32 2)
  %218 = load i32*, i32** %12, align 8
  %219 = load i64, i64* %15, align 8
  %220 = load i32, i32* @ems_usb_write_bulk_callback, align 4
  %221 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %222 = call i32 @usb_fill_bulk_urb(%struct.urb* %210, i32 %213, i32 %217, i32* %218, i64 %219, i32 %220, %struct.ems_tx_urb_context* %221)
  %223 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %224 = load %struct.urb*, %struct.urb** %11, align 8
  %225 = getelementptr inbounds %struct.urb, %struct.urb* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.urb*, %struct.urb** %11, align 8
  %229 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %230 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %229, i32 0, i32 3
  %231 = call i32 @usb_anchor_urb(%struct.urb* %228, i32* %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = load %struct.net_device*, %struct.net_device** %5, align 8
  %234 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %235 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @can_put_echo_skb(%struct.sk_buff* %232, %struct.net_device* %233, i32 %236)
  %238 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %239 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %238, i32 0, i32 1
  %240 = call i32 @atomic_inc(i32* %239)
  %241 = load %struct.urb*, %struct.urb** %11, align 8
  %242 = load i32, i32* @GFP_ATOMIC, align 4
  %243 = call i32 @usb_submit_urb(%struct.urb* %241, i32 %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %285

247:                                              ; preds = %198
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %250 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @can_free_echo_skb(%struct.net_device* %248, i32 %251)
  %253 = load %struct.urb*, %struct.urb** %11, align 8
  %254 = call i32 @usb_unanchor_urb(%struct.urb* %253)
  %255 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %256 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %15, align 8
  %259 = load i32*, i32** %12, align 8
  %260 = load %struct.urb*, %struct.urb** %11, align 8
  %261 = getelementptr inbounds %struct.urb, %struct.urb* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @usb_free_coherent(i32 %257, i64 %258, i32* %259, i32 %262)
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = call i32 @dev_kfree_skb(%struct.sk_buff* %264)
  %266 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %267 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %266, i32 0, i32 1
  %268 = call i32 @atomic_dec(i32* %267)
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @ENODEV, align 4
  %271 = sub nsw i32 0, %270
  %272 = icmp eq i32 %269, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %247
  %274 = load %struct.net_device*, %struct.net_device** %5, align 8
  %275 = call i32 @netif_device_detach(%struct.net_device* %274)
  br label %284

276:                                              ; preds = %247
  %277 = load %struct.net_device*, %struct.net_device** %5, align 8
  %278 = load i32, i32* %14, align 4
  %279 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %277, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %278)
  %280 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %281 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %276, %273
  br label %303

285:                                              ; preds = %198
  %286 = load %struct.net_device*, %struct.net_device** %5, align 8
  %287 = call i32 @netif_trans_update(%struct.net_device* %286)
  %288 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %289 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %288, i32 0, i32 1
  %290 = call i32 @atomic_read(i32* %289)
  %291 = load i32, i32* @MAX_TX_URBS, align 4
  %292 = icmp sge i32 %290, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %285
  %294 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %295 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @CPC_TX_QUEUE_TRIGGER_LOW, align 8
  %298 = icmp slt i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293, %285
  %300 = load %struct.net_device*, %struct.net_device** %5, align 8
  %301 = call i32 @netif_stop_queue(%struct.net_device* %300)
  br label %302

302:                                              ; preds = %299, %293
  br label %303

303:                                              ; preds = %302, %284
  %304 = load %struct.urb*, %struct.urb** %11, align 8
  %305 = call i32 @usb_free_urb(%struct.urb* %304)
  %306 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %306, i32* %3, align 4
  br label %315

307:                                              ; preds = %52, %40
  %308 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %309 = call i32 @dev_kfree_skb(%struct.sk_buff* %308)
  %310 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %311 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %307, %303, %183, %33
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i64, i32, %struct.ems_tx_urb_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
