; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_handle_can_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_handle_can_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.pucan_rx_msg = type { i32, i32, i32, i32 }
%struct.canfd_frame = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@PUCAN_MSG_EXT_DATA_LEN = common dso_local global i32 0, align 4
@PUCAN_MSG_LOOPED_BACK = common dso_local global i32 0, align 4
@PUCAN_MSG_SELF_RECEIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PUCAN_MSG_BITRATE_SWITCH = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@PUCAN_MSG_ERROR_STATE_IND = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@PUCAN_MSG_EXT_ID = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PUCAN_MSG_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*, %struct.pucan_rx_msg*)* @pucan_handle_can_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_handle_can_rx(%struct.peak_canfd_priv* %0, %struct.pucan_rx_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_canfd_priv*, align 8
  %5 = alloca %struct.pucan_rx_msg*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %4, align 8
  store %struct.pucan_rx_msg* %1, %struct.pucan_rx_msg** %5, align 8
  %12 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %13 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %6, align 8
  %16 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %17 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PUCAN_MSG_EXT_DATA_LEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %26 = call i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg* %25)
  %27 = call i32 @get_canfd_dlc(i32 %26)
  %28 = call i64 @can_dlc2len(i32 %27)
  store i64 %28, i64* %10, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %31 = call i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg* %30)
  %32 = call i64 @get_can_dlc(i32 %31)
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PUCAN_MSG_LOOPED_BACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PUCAN_MSG_SELF_RECEIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %38
  %44 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %45 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %49 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %52 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @can_get_echo_skb(%struct.TYPE_5__* %50, i32 %53)
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %67 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 @netif_wake_queue(%struct.TYPE_5__* %68)
  %70 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %71 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  store i32 0, i32* %3, align 4
  br label %182

74:                                               ; preds = %38, %33
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @PUCAN_MSG_EXT_DATA_LEN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %74
  %80 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %81 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_5__* %82, %struct.canfd_frame** %7)
  store %struct.sk_buff* %83, %struct.sk_buff** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %182

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PUCAN_MSG_BITRATE_SWITCH, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @CANFD_BRS, align 4
  %96 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %97 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @PUCAN_MSG_ERROR_STATE_IND, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @CANFD_ESI, align 4
  %107 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %108 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %100
  br label %124

112:                                              ; preds = %74
  %113 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %4, align 8
  %114 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = bitcast %struct.canfd_frame** %7 to %struct.can_frame**
  %117 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__* %115, %struct.can_frame** %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %8, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %182

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %111
  %125 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %126 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %130 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %133 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @PUCAN_MSG_EXT_ID, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %124
  %139 = load i32, i32* @CAN_EFF_FLAG, align 4
  %140 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %141 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %124
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @PUCAN_MSG_RTR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @CAN_RTR_FLAG, align 4
  %151 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %152 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %166

155:                                              ; preds = %144
  %156 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %157 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.pucan_rx_msg*, %struct.pucan_rx_msg** %5, align 8
  %160 = getelementptr inbounds %struct.pucan_rx_msg, %struct.pucan_rx_msg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %163 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @memcpy(i32 %158, i32 %161, i64 %164)
  br label %166

166:                                              ; preds = %155, %149
  %167 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %168 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %171 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  %176 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %177 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %181 = call i32 @netif_rx(%struct.sk_buff* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %166, %120, %86, %43
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @can_dlc2len(i32) #1

declare dso_local i32 @get_canfd_dlc(i32) #1

declare dso_local i32 @pucan_msg_get_dlc(%struct.pucan_rx_msg*) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_5__*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__*, %struct.can_frame**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
