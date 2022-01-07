; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2_net_priv = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32 }

@ESD_IDMASK = common dso_local global i64 0, align 8
@ESD_EV_CAN_ERROR_EXT = common dso_local global i64 0, align 8
@ESD_BUSSTATE_MASK = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@SJA1000_ECC_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@SJA1000_ECC_SEG = common dso_local global i32 0, align 4
@SJA1000_ECC_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esd_usb2_net_priv*, %struct.esd_usb2_msg*)* @esd_usb2_rx_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esd_usb2_rx_event(%struct.esd_usb2_net_priv* %0, %struct.esd_usb2_msg* %1) #0 {
  %3 = alloca %struct.esd_usb2_net_priv*, align 8
  %4 = alloca %struct.esd_usb2_msg*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.esd_usb2_net_priv* %0, %struct.esd_usb2_net_priv** %3, align 8
  store %struct.esd_usb2_msg* %1, %struct.esd_usb2_msg** %4, align 8
  %13 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %14 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %5, align 8
  %17 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %18 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = load i64, i64* @ESD_IDMASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ESD_EV_CAN_ERROR_EXT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %258

28:                                               ; preds = %2
  %29 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %30 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %37 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %44 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %51 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %58 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %57, i32 0, i32 3
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_13__* %59, %struct.can_frame** %6)
  store %struct.sk_buff* %60, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = icmp eq %struct.sk_buff* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %28
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %258

68:                                               ; preds = %28
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %71 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %77 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ESD_BUSSTATE_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %123 [
    i32 133, label %81
    i32 131, label %101
    i32 132, label %112
  ]

81:                                               ; preds = %74
  %82 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %83 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %84 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %92 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %98 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = call i32 @can_bus_off(%struct.TYPE_13__* %99)
  br label %128

101:                                              ; preds = %74
  %102 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %103 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %104 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %107 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %128

112:                                              ; preds = %74
  %113 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %114 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %115 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  %117 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %118 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %128

123:                                              ; preds = %74
  %124 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %125 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %126 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %112, %101, %81
  br label %234

129:                                              ; preds = %68
  %130 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %131 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @CAN_ERR_PROT, align 4
  %141 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %144 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SJA1000_ECC_MASK, align 4
  %149 = and i32 %147, %148
  switch i32 %149, label %174 [
    i32 130, label %150
    i32 129, label %158
    i32 128, label %166
  ]

150:                                              ; preds = %129
  %151 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %152 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %153 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %182

158:                                              ; preds = %129
  %159 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %160 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %161 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %159
  store i32 %165, i32* %163, align 4
  br label %182

166:                                              ; preds = %129
  %167 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %168 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %169 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 4
  br label %182

174:                                              ; preds = %129
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @SJA1000_ECC_SEG, align 4
  %177 = and i32 %175, %176
  %178 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %179 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %166, %158, %150
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @SJA1000_ECC_DIR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %189 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %190 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %187, %182
  %196 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %197 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %209, label %202

202:                                              ; preds = %195
  %203 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %204 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %223

209:                                              ; preds = %202, %195
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %220 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %202
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %226 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 6
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %231 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 7
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %223, %128
  %235 = load i32, i32* %11, align 4
  %236 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %237 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %241 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 4
  %243 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %244 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %248 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %251 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %249
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %257 = call i32 @netif_rx(%struct.sk_buff* %256)
  br label %258

258:                                              ; preds = %63, %234, %2
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_13__*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.TYPE_13__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
