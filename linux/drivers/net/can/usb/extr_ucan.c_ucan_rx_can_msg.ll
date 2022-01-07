; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ucan_message_in = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@UCAN_IN_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid input message len: %d\0A\00", align 1
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected bits set (canid %x, mask %x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucan_priv*, %struct.ucan_message_in*)* @ucan_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucan_rx_can_msg(%struct.ucan_priv* %0, %struct.ucan_message_in* %1) #0 {
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca %struct.ucan_message_in*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  store %struct.ucan_message_in* %1, %struct.ucan_message_in** %4, align 8
  %12 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %9, align 8
  %16 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %17 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @UCAN_IN_HDR_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @netdev_warn(%struct.TYPE_9__* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %154

32:                                               ; preds = %2
  %33 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %34 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CAN_ERR_FLAG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %32
  %44 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %45 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ucan_handle_error_frame(%struct.ucan_priv* %44, %struct.ucan_message_in* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %154

59:                                               ; preds = %55, %43
  br label %93

60:                                               ; preds = %32
  %61 = load i32, i32* @CAN_RTR_FLAG, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CAN_EFF_FLAG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @CAN_EFF_MASK, align 4
  %68 = load i32, i32* @CAN_EFF_FLAG, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @CAN_SFF_MASK, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @netdev_warn(%struct.TYPE_9__* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %59
  %94 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_9__* %96, %struct.can_frame** %7)
  store %struct.sk_buff* %97, %struct.sk_buff** %8, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %154

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %106 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @ucan_get_can_dlc(%struct.TYPE_8__* %107, i32 %108)
  %110 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %111 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %113 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CAN_RTR_FLAG, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %101
  %119 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %120 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CAN_ERR_FLAG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %118, %101
  %126 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ucan_message_in*, %struct.ucan_message_in** %4, align 8
  %130 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %135 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @memcpy(i32 %128, i32 %133, i64 %136)
  br label %138

138:                                              ; preds = %125, %118
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %140 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %144 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %147 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = call i32 @netif_rx(%struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %138, %100, %58, %26
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ucan_handle_error_frame(%struct.ucan_priv*, %struct.ucan_message_in*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_9__*, %struct.can_frame**) #1

declare dso_local i64 @ucan_get_can_dlc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
