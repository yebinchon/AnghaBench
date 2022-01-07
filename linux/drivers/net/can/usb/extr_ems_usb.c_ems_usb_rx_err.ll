; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.ems_cpc_msg = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32 }

@CPC_MSG_TYPE_CAN_STATE = common dso_local global i64 0, align 8
@SJA1000_SR_BS = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@SJA1000_SR_ES = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@CPC_MSG_TYPE_CAN_FRAME_ERROR = common dso_local global i64 0, align 8
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@SJA1000_ECC_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@SJA1000_ECC_SEG = common dso_local global i32 0, align 4
@SJA1000_ECC_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CPC_MSG_TYPE_OVERRUN = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_usb*, %struct.ems_cpc_msg*)* @ems_usb_rx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_usb_rx_err(%struct.ems_usb* %0, %struct.ems_cpc_msg* %1) #0 {
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.ems_cpc_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  store %struct.ems_cpc_msg* %1, %struct.ems_cpc_msg** %4, align 8
  %12 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %13 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %17 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_17__* %18, %struct.can_frame** %5)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %260

23:                                               ; preds = %2
  %24 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %25 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CPC_MSG_TYPE_CAN_STATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %31 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SJA1000_SR_BS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %29
  %39 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %40 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %41 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %44 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %45 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %49 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %55 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %54, i32 0, i32 1
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = call i32 @can_bus_off(%struct.TYPE_17__* %56)
  br label %86

58:                                               ; preds = %29
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SJA1000_SR_ES, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %65 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %66 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %69 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %85

74:                                               ; preds = %58
  %75 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %76 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %77 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %80 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74, %63
  br label %86

86:                                               ; preds = %85, %38
  br label %244

87:                                               ; preds = %23
  %88 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %89 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CPC_MSG_TYPE_CAN_FRAME_ERROR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %217

93:                                               ; preds = %87
  %94 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %95 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %103 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %111 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %11, align 4
  %118 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %119 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %125 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @CAN_ERR_PROT, align 4
  %129 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %132 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SJA1000_ECC_MASK, align 4
  %137 = and i32 %135, %136
  switch i32 %137, label %162 [
    i32 130, label %138
    i32 129, label %146
    i32 128, label %154
  ]

138:                                              ; preds = %93
  %139 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %140 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  br label %170

146:                                              ; preds = %93
  %147 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %148 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 4
  br label %170

154:                                              ; preds = %93
  %155 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %156 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %157 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  br label %170

162:                                              ; preds = %93
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @SJA1000_ECC_SEG, align 4
  %165 = and i32 %163, %164
  %166 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %167 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %162, %154, %146, %138
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @SJA1000_ECC_DIR, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %177 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %178 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %176
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %175, %170
  %184 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %185 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %192 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %190, %183
  %198 = load i32, i32* @CAN_ERR_CRTL, align 4
  %199 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %200 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %210

208:                                              ; preds = %197
  %209 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  %212 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %213 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 %211, i32* %215, align 4
  br label %216

216:                                              ; preds = %210, %190
  br label %243

217:                                              ; preds = %87
  %218 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %219 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CPC_MSG_TYPE_OVERRUN, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load i32, i32* @CAN_ERR_CRTL, align 4
  %225 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %226 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %230 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %231 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %229, i32* %233, align 4
  %234 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %235 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  %238 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %239 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %223, %217
  br label %243

243:                                              ; preds = %242, %216
  br label %244

244:                                              ; preds = %243, %86
  %245 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %246 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  %249 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %250 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %253 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %259 = call i32 @netif_rx(%struct.sk_buff* %258)
  br label %260

260:                                              ; preds = %244, %22
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_17__*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.TYPE_17__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
