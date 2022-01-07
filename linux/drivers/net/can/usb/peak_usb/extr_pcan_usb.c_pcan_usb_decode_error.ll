; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_msg_context = type { %struct.TYPE_15__*, i32, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@PCAN_USB_ERROR_QOVR = common dso_local global i64 0, align 8
@PCAN_USB_ERROR_BUS_LIGHT = common dso_local global i64 0, align 8
@PCAN_USB_ERROR_BUS_HEAVY = common dso_local global i64 0, align 8
@PCAN_USB_ERROR_BUS_OFF = common dso_local global i64 0, align 8
@PCAN_USB_ERROR_RXQOVR = common dso_local global i64 0, align 8
@CAN_STATE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_TIMESTAMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_msg_context*, i64, i64)* @pcan_usb_decode_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_decode_error(%struct.pcan_usb_msg_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcan_usb_msg_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.pcan_usb_msg_context* %0, %struct.pcan_usb_msg_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PCAN_USB_ERROR_QOVR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %17 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %286

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %27 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %34 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %103 [
    i32 130, label %40
    i32 128, label %47
    i32 129, label %75
  ]

40:                                               ; preds = %25
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @PCAN_USB_ERROR_BUS_LIGHT, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 128, i32* %10, align 4
  br label %104

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %25, %46
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @PCAN_USB_ERROR_BUS_HEAVY, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 129, i32* %10, align 4
  br label %104

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PCAN_USB_ERROR_BUS_OFF, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 131, i32* %10, align 4
  br label %104

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @PCAN_USB_ERROR_RXQOVR, align 8
  %62 = load i64, i64* @PCAN_USB_ERROR_QOVR, align 8
  %63 = or i64 %61, %62
  %64 = and i64 %60, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @CAN_STATE_MAX, align 4
  store i32 %67, i32* %10, align 4
  br label %104

68:                                               ; preds = %59
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @PCAN_USB_ERROR_BUS_LIGHT, align 8
  %71 = and i64 %69, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 130, i32* %10, align 4
  br label %104

74:                                               ; preds = %68
  br label %104

75:                                               ; preds = %25
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @PCAN_USB_ERROR_BUS_OFF, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 131, i32* %10, align 4
  br label %104

81:                                               ; preds = %75
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @PCAN_USB_ERROR_BUS_LIGHT, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 128, i32* %10, align 4
  br label %104

87:                                               ; preds = %81
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @PCAN_USB_ERROR_RXQOVR, align 8
  %90 = load i64, i64* @PCAN_USB_ERROR_QOVR, align 8
  %91 = or i64 %89, %90
  %92 = and i64 %88, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @CAN_STATE_MAX, align 4
  store i32 %95, i32* %10, align 4
  br label %104

96:                                               ; preds = %87
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @PCAN_USB_ERROR_BUS_HEAVY, align 8
  %99 = and i64 %97, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 128, i32* %10, align 4
  br label %104

102:                                              ; preds = %96
  br label %104

103:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %286

104:                                              ; preds = %102, %101, %94, %86, %80, %74, %73, %66, %58, %52, %45
  %105 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %106 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %105, i32 0, i32 2
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %286

115:                                              ; preds = %104
  %116 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %117 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_15__* %118, %struct.can_frame** %9)
  store %struct.sk_buff* %119, %struct.sk_buff** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %286

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  switch i32 %126, label %205 [
    i32 131, label %127
    i32 129, label %146
    i32 128, label %170
    i32 130, label %194
  ]

127:                                              ; preds = %125
  %128 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %129 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %130 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %134 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %143 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = call i32 @can_bus_off(%struct.TYPE_15__* %144)
  br label %239

146:                                              ; preds = %125
  %147 = load i32, i32* @CAN_ERR_CRTL, align 4
  %148 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %153 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %156 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %154
  store i32 %160, i32* %158, align 4
  %161 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %162 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %239

170:                                              ; preds = %125
  %171 = load i32, i32* @CAN_ERR_CRTL, align 4
  %172 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %173 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %177 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %180 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %186 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  br label %239

194:                                              ; preds = %125
  %195 = load i32, i32* @CAN_ERR_CRTL, align 4
  %196 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %197 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i32, i32* @CAN_ERR_CRTL_ACTIVE, align 4
  %201 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %202 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  br label %239

205:                                              ; preds = %125
  %206 = load i32, i32* @CAN_ERR_CRTL, align 4
  %207 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %208 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %212 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %213 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %211
  store i32 %217, i32* %215, align 4
  %218 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %219 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %218, i32 0, i32 0
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %226 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %225, i32 0, i32 0
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %233 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %232, i32 0, i32 2
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %10, align 4
  br label %239

239:                                              ; preds = %205, %194, %170, %146, %127
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %242 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %241, i32 0, i32 2
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32 %240, i32* %246, align 4
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* @PCAN_USB_STATUSLEN_TIMESTAMP, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %239
  %252 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %253 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %252)
  store %struct.skb_shared_hwtstamps* %253, %struct.skb_shared_hwtstamps** %11, align 8
  %254 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %255 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %254, i32 0, i32 2
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %259 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %11, align 8
  %262 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %261, i32 0, i32 0
  %263 = call i32 @peak_usb_get_ts_time(%struct.TYPE_14__* %257, i32 %260, i32* %262)
  br label %264

264:                                              ; preds = %251, %239
  %265 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %266 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %265, i32 0, i32 0
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  %272 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %273 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %5, align 8
  %276 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %275, i32 0, i32 0
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %274
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  %284 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %285 = call i32 @netif_rx(%struct.sk_buff* %284)
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %264, %122, %114, %103, %23
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_15__*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.TYPE_15__*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @peak_usb_get_ts_time(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
