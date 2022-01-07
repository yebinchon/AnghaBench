; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_pro_interface = type { i32, %struct.peak_usb_device** }
%struct.peak_usb_device = type { %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.pcan_usb_pro_rxstatus = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@PCAN_USBPRO_STATUS_OVERRUN = common dso_local global i32 0, align 4
@PCAN_USBPRO_STATUS_QOVERRUN = common dso_local global i32 0, align 4
@CAN_STATE_MAX = common dso_local global i32 0, align 4
@PCAN_USBPRO_STATUS_BUS = common dso_local global i32 0, align 4
@PCAN_USBPRO_STATUS_ERROR = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_OVERLOAD = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_rxstatus*)* @pcan_usb_pro_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_handle_error(%struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_rxstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_pro_interface*, align 8
  %5 = alloca %struct.pcan_usb_pro_rxstatus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.peak_usb_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.skb_shared_hwtstamps*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_interface** %4, align 8
  store %struct.pcan_usb_pro_rxstatus* %1, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %17 = load %struct.pcan_usb_pro_rxstatus*, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %18 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, %struct.pcan_usb_pro_rxstatus* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pcan_usb_pro_rxstatus*, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %22 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, %struct.pcan_usb_pro_rxstatus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %7, align 4
  %26 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %4, align 8
  %27 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %26, i32 0, i32 1
  %28 = load %struct.peak_usb_device**, %struct.peak_usb_device*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.peak_usb_device*, %struct.peak_usb_device** %28, i64 %30
  %32 = load %struct.peak_usb_device*, %struct.peak_usb_device** %31, align 8
  store %struct.peak_usb_device* %32, %struct.peak_usb_device** %8, align 8
  %33 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %34 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %33, i32 0, i32 1
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %9, align 8
  store i32 130, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %37 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %291

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %47 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 130, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %291

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PCAN_USBPRO_STATUS_OVERRUN, align 4
  %52 = load i32, i32* @PCAN_USBPRO_STATUS_QOVERRUN, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @CAN_STATE_MAX, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PCAN_USBPRO_STATUS_BUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 131, i32* %11, align 4
  br label %130

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PCAN_USBPRO_STATUS_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %129

69:                                               ; preds = %64
  %70 = load %struct.pcan_usb_pro_rxstatus*, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %71 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, %struct.pcan_usb_pro_rxstatus* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = and i32 %73, 16711680
  %75 = ashr i32 %74, 16
  store i32 %75, i32* %15, align 4
  %76 = load %struct.pcan_usb_pro_rxstatus*, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %77 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, %struct.pcan_usb_pro_rxstatus* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = and i32 %79, -16777216
  %81 = lshr i32 %80, 24
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp sgt i32 %82, 127
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %69
  %89 = load i32, i32* %15, align 4
  %90 = icmp sgt i32 %89, 96
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %16, align 4
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load i32, i32* %16, align 4
  %105 = icmp sgt i32 %104, 96
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %99
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %114 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 128, i32* %11, align 4
  br label %128

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %122 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 129, i32* %11, align 4
  br label %127

127:                                              ; preds = %126, %119
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %64
  br label %130

130:                                              ; preds = %129, %63
  %131 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %132 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %291

138:                                              ; preds = %130
  %139 = load %struct.net_device*, %struct.net_device** %9, align 8
  %140 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %139, %struct.can_frame** %10)
  store %struct.sk_buff* %140, %struct.sk_buff** %13, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %291

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  switch i32 %147, label %201 [
    i32 131, label %148
    i32 129, label %162
    i32 128, label %181
    i32 130, label %200
  ]

148:                                              ; preds = %146
  %149 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %150 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %151 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %155 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.net_device*, %struct.net_device** %9, align 8
  %161 = call i32 @can_bus_off(%struct.net_device* %160)
  br label %258

162:                                              ; preds = %146
  %163 = load i32, i32* @CAN_ERR_CRTL, align 4
  %164 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %165 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %170 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %168
  store i32 %174, i32* %172, align 4
  %175 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %176 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  br label %258

181:                                              ; preds = %146
  %182 = load i32, i32* @CAN_ERR_CRTL, align 4
  %183 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %184 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %189 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %187
  store i32 %193, i32* %191, align 4
  %194 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %195 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %258

200:                                              ; preds = %146
  br label %258

201:                                              ; preds = %146
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @PCAN_USBPRO_STATUS_OVERRUN, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %201
  %207 = load i32, i32* @CAN_ERR_PROT, align 4
  %208 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %209 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @CAN_ERR_PROT_OVERLOAD, align 4
  %213 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %214 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %212
  store i32 %218, i32* %216, align 4
  %219 = load %struct.net_device*, %struct.net_device** %9, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.net_device*, %struct.net_device** %9, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %206, %201
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @PCAN_USBPRO_STATUS_QOVERRUN, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %229
  %235 = load i32, i32* @CAN_ERR_CRTL, align 4
  %236 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %237 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %241 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %242 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %240
  store i32 %246, i32* %244, align 4
  %247 = load %struct.net_device*, %struct.net_device** %9, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.net_device*, %struct.net_device** %9, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %234, %229
  store i32 130, i32* %11, align 4
  br label %258

258:                                              ; preds = %257, %200, %181, %162, %148
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.peak_usb_device*, %struct.peak_usb_device** %8, align 8
  %261 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %264 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %263)
  store %struct.skb_shared_hwtstamps* %264, %struct.skb_shared_hwtstamps** %14, align 8
  %265 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %4, align 8
  %266 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %265, i32 0, i32 0
  %267 = load %struct.pcan_usb_pro_rxstatus*, %struct.pcan_usb_pro_rxstatus** %5, align 8
  %268 = getelementptr inbounds %struct.pcan_usb_pro_rxstatus, %struct.pcan_usb_pro_rxstatus* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le32_to_cpu(i32 %269)
  %271 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %272 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %271, i32 0, i32 0
  %273 = call i32 @peak_usb_get_ts_time(i32* %266, i32 %270, i32* %272)
  %274 = load %struct.net_device*, %struct.net_device** %9, align 8
  %275 = getelementptr inbounds %struct.net_device, %struct.net_device* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %280 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.net_device*, %struct.net_device** %9, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %286, %281
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %284, align 4
  %289 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %290 = call i32 @netif_rx(%struct.sk_buff* %289)
  store i32 0, i32* %3, align 4
  br label %291

291:                                              ; preds = %258, %143, %137, %45, %41
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @peak_usb_get_ts_time(i32*, i32, i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
