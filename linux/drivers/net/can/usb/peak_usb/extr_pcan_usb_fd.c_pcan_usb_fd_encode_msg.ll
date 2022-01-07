; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_encode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_encode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.pucan_tx_msg = type { i8*, i32, i32, i8*, i8*, i8* }
%struct.canfd_frame = type { i32, i32, i64, i32 }

@PUCAN_MSG_CAN_TX = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_ID = common dso_local global i64 0, align 8
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_DATA_LEN = common dso_local global i64 0, align 8
@CANFD_BRS = common dso_local global i32 0, align 4
@PUCAN_MSG_BITRATE_SWITCH = common dso_local global i64 0, align 8
@CANFD_ESI = common dso_local global i32 0, align 4
@PUCAN_MSG_ERROR_STATE_IND = common dso_local global i64 0, align 8
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_RTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.sk_buff*, i64*, i64*)* @pcan_usb_fd_encode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_encode_msg(%struct.peak_usb_device* %0, %struct.sk_buff* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.peak_usb_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.pucan_tx_msg*, align 8
  %10 = alloca %struct.canfd_frame*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = bitcast i64* %14 to %struct.pucan_tx_msg*
  store %struct.pucan_tx_msg* %15, %struct.pucan_tx_msg** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.canfd_frame*
  store %struct.canfd_frame* %19, %struct.canfd_frame** %10, align 8
  %20 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %21 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add i64 40, %22
  %24 = call i64 @ALIGN(i64 %23, i32 4)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i8* @cpu_to_le16(i64 %25)
  %27 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %28 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* @PUCAN_MSG_CAN_TX, align 8
  %30 = call i8* @cpu_to_le16(i64 %29)
  %31 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %32 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  store i64 0, i64* %12, align 8
  %33 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %34 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAN_EFF_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %4
  %40 = load i64, i64* @PUCAN_MSG_EXT_ID, align 8
  %41 = load i64, i64* %12, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %12, align 8
  %43 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %44 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CAN_EFF_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %50 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  br label %60

51:                                               ; preds = %4
  %52 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %53 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CAN_SFF_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %59 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %51, %39
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i64 @can_is_canfd_skb(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %66 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @can_len2dlc(i64 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* @PUCAN_MSG_EXT_DATA_LEN, align 8
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %73 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CANFD_BRS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i64, i64* @PUCAN_MSG_BITRATE_SWITCH, align 8
  %80 = load i64, i64* %12, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %78, %64
  %83 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %84 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CANFD_ESI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i64, i64* @PUCAN_MSG_ERROR_STATE_IND, align 8
  %91 = load i64, i64* %12, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %89, %82
  br label %109

94:                                               ; preds = %60
  %95 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %96 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  %98 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %99 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CAN_RTR_FLAG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i64, i64* @PUCAN_MSG_RTR, align 8
  %106 = load i64, i64* %12, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %12, align 8
  br label %108

108:                                              ; preds = %104, %94
  br label %109

109:                                              ; preds = %108, %93
  %110 = load i64, i64* %12, align 8
  %111 = call i8* @cpu_to_le16(i64 %110)
  %112 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %113 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %115 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @PUCAN_MSG_CHANNEL_DLC(i32 %116, i64 %117)
  %119 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %120 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %122 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %125 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %128 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memcpy(i32 %123, i32 %126, i64 %129)
  %131 = load i64*, i64** %7, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = bitcast i64* %133 to %struct.pucan_tx_msg*
  store %struct.pucan_tx_msg* %134, %struct.pucan_tx_msg** %9, align 8
  %135 = load %struct.pucan_tx_msg*, %struct.pucan_tx_msg** %9, align 8
  %136 = getelementptr inbounds %struct.pucan_tx_msg, %struct.pucan_tx_msg* %135, i32 0, i32 0
  store i8* null, i8** %136, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 4
  %139 = load i64*, i64** %8, align 8
  store i64 %138, i64* %139, align 8
  ret i32 0
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i64 @can_len2dlc(i64) #1

declare dso_local i32 @PUCAN_MSG_CHANNEL_DLC(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
