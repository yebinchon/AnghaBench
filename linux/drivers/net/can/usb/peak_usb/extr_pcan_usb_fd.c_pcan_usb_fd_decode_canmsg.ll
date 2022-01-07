; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_canmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_canmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_fd_if = type { i32, %struct.peak_usb_device** }
%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pucan_msg = type { i32 }
%struct.pucan_rx_msg = type { i32, i32, i32, i32 }
%struct.canfd_frame = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@PUCAN_MSG_EXT_DATA_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PUCAN_MSG_BITRATE_SWITCH = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@PUCAN_MSG_ERROR_STATE_IND = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_ID = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_fd_if*, %struct.pucan_msg*)* @pcan_usb_fd_decode_canmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_decode_canmsg(%struct.pcan_usb_fd_if* %0, %struct.pucan_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_fd_if*, align 8
  %5 = alloca %struct.pucan_msg*, align 8
  %6 = alloca %struct.pucan_rx_msg*, align 8
  %7 = alloca %struct.peak_usb_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.canfd_frame*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.pcan_usb_fd_if* %0, %struct.pcan_usb_fd_if** %4, align 8
  store %struct.pucan_msg* %1, %struct.pucan_msg** %5, align 8
  %12 = load %struct.pucan_msg*, %struct.pucan_msg** %5, align 8
  %13 = bitcast %struct.pucan_msg* %12 to %struct.pucan_rx_msg*
  store %struct.pucan_rx_msg* %13, %struct.pucan_rx_msg** %6, align 8
  %14 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %4, align 8
  %15 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %14, i32 0, i32 1
  %16 = load %struct.peak_usb_device**, %struct.peak_usb_device*** %15, align 8
  %17 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %18 = call i64 @pucan_msg_get_channel(%struct.pucan_rx_msg* %17)
  %19 = getelementptr inbounds %struct.peak_usb_device*, %struct.peak_usb_device** %16, i64 %18
  %20 = load %struct.peak_usb_device*, %struct.peak_usb_device** %19, align 8
  store %struct.peak_usb_device* %20, %struct.peak_usb_device** %7, align 8
  %21 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %25 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @PUCAN_MSG_EXT_DATA_LEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call %struct.sk_buff* @alloc_canfd_skb(%struct.net_device* %33, %struct.canfd_frame** %9)
  store %struct.sk_buff* %34, %struct.sk_buff** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %147

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PUCAN_MSG_BITRATE_SWITCH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @CANFD_BRS, align 4
  %47 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %48 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PUCAN_MSG_ERROR_STATE_IND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @CANFD_ESI, align 4
  %58 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %59 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %64 = call i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg* %63)
  %65 = call i32 @get_canfd_dlc(i32 %64)
  %66 = call i64 @can_dlc2len(i32 %65)
  %67 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %68 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %84

69:                                               ; preds = %2
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = bitcast %struct.canfd_frame** %9 to %struct.can_frame**
  %72 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %70, %struct.can_frame** %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %10, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %147

78:                                               ; preds = %69
  %79 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %80 = call i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg* %79)
  %81 = call i64 @get_can_dlc(i32 %80)
  %82 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %83 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %62
  %85 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %86 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %90 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @PUCAN_MSG_EXT_ID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @CAN_EFF_FLAG, align 4
  %97 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %98 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @PUCAN_MSG_RTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @CAN_RTR_FLAG, align 4
  %108 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %109 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %123

112:                                              ; preds = %101
  %113 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %114 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %117 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %120 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @memcpy(i32 %115, i32 %118, i64 %121)
  br label %123

123:                                              ; preds = %112, %106
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %4, align 8
  %126 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %125, i32 0, i32 0
  %127 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %6, align 8
  %128 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = call i32 @peak_usb_netif_rx(%struct.sk_buff* %124, i32* %126, i32 %130)
  %132 = load %struct.net_device*, %struct.net_device** %8, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.canfd_frame*, %struct.canfd_frame** %9, align 8
  %138 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.net_device*, %struct.net_device** %8, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %139
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %123, %75, %37
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @pucan_msg_get_channel(%struct.pucan_rx_msg*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.net_device*, %struct.canfd_frame**) #1

declare dso_local i64 @can_dlc2len(i32) #1

declare dso_local i32 @get_canfd_dlc(i32) #1

declare dso_local i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @peak_usb_netif_rx(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
