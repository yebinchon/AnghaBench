; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_rx_msg_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_rx_msg_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_EXTENDED_FRAME_ID = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CF_FLAG_OVERRUN = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_rx_msg_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_rx_msg_std(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.skb_shared_hwtstamps*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  store %struct.kvaser_usb_net_priv* null, %struct.kvaser_usb_net_priv** %5, align 8
  %12 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %13 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %14 = call %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb* %12, %struct.kvaser_cmd* %13)
  store %struct.kvaser_usb_net_priv* %14, %struct.kvaser_usb_net_priv** %5, align 8
  %15 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %16 = icmp ne %struct.kvaser_usb_net_priv* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %147

18:                                               ; preds = %2
  %19 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %20 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %9, align 8
  %23 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %28 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %31 = call i32 @kvaser_usb_hydra_ktime_from_rx_cmd(i32 %29, %struct.kvaser_cmd* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %38 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @kvaser_usb_hydra_error_frame(%struct.kvaser_usb_net_priv* %37, i32* %40, i32 %41)
  br label %147

43:                                               ; preds = %18
  %44 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__* %46, %struct.can_frame** %6)
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %147

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %56)
  store %struct.skb_shared_hwtstamps* %57, %struct.skb_shared_hwtstamps** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %8, align 8
  %60 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %67 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @KVASER_USB_HYDRA_EXTENDED_FRAME_ID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %55
  %75 = load i32, i32* @CAN_EFF_MASK, align 4
  %76 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @CAN_EFF_FLAG, align 4
  %81 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %91

85:                                               ; preds = %55
  %86 = load i32, i32* @CAN_SFF_MASK, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %74
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @KVASER_USB_HYDRA_CF_FLAG_OVERRUN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %98 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @kvaser_usb_can_rx_over_error(%struct.TYPE_5__* %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @get_can_dlc(i32 %105)
  %107 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %108 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load i32, i32* @CAN_RTR_FLAG, align 4
  %115 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %131

119:                                              ; preds = %101
  %120 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %121 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %124 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %128 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memcpy(i32 %122, i32 %126, i64 %129)
  br label %131

131:                                              ; preds = %119, %113
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %137 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %140 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @netif_rx(%struct.sk_buff* %145)
  br label %147

147:                                              ; preds = %131, %50, %36, %17
  ret void
}

declare dso_local %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_ktime_from_rx_cmd(i32, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_error_frame(%struct.kvaser_usb_net_priv*, i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__*, %struct.can_frame**) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kvaser_usb_can_rx_over_error(%struct.TYPE_5__*) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
