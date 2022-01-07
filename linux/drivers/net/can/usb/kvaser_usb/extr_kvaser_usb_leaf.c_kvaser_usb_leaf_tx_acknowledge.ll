; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_tx_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_tx_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i64, i64, %struct.kvaser_usb_net_priv**, %struct.TYPE_14__* }
%struct.kvaser_usb_net_priv = type { i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__, %struct.kvaser_usb_tx_urb_context* }
%struct.TYPE_17__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.kvaser_usb_tx_urb_context = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No memory left for err_skb\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_tx_acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_tx_acknowledge(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.kvaser_usb_tx_urb_context*, align 8
  %7 = alloca %struct.kvaser_usb_net_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.can_frame*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %13 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %25 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %30 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %164

35:                                               ; preds = %2
  %36 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %37 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %36, i32 0, i32 2
  %38 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %38, i64 %39
  %41 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %40, align 8
  store %struct.kvaser_usb_net_priv* %41, %struct.kvaser_usb_net_priv** %7, align 8
  %42 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %43 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = call i32 @netif_device_present(%struct.TYPE_17__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %164

48:                                               ; preds = %35
  %49 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %50 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store %struct.net_device_stats* %52, %struct.net_device_stats** %5, align 8
  %53 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %54 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %53, i32 0, i32 4
  %55 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %58 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = urem i64 %56, %59
  %61 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %55, i64 %60
  store %struct.kvaser_usb_tx_urb_context* %61, %struct.kvaser_usb_tx_urb_context** %6, align 8
  %62 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %63 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %48
  %68 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %69 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %67
  %75 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %76 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_17__* %77, %struct.can_frame** %12)
  store %struct.sk_buff* %78, %struct.sk_buff** %11, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %74
  %82 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %83 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %84 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %92 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %95 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = call i32 @netif_rx(%struct.sk_buff* %100)
  br label %107

102:                                              ; preds = %74
  %103 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %104 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = call i32 @netdev_err(%struct.TYPE_17__* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %81
  %108 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %109 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %115 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = call i32 @netif_carrier_on(%struct.TYPE_17__* %116)
  %118 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %119 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %120 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %107, %67, %48
  %123 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %124 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %6, align 8
  %128 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %137 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %136, i32 0, i32 0
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %141 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %6, align 8
  %144 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @can_get_echo_skb(%struct.TYPE_17__* %142, i64 %145)
  %147 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %148 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.kvaser_usb_tx_urb_context*, %struct.kvaser_usb_tx_urb_context** %6, align 8
  %151 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, %struct.kvaser_usb_tx_urb_context* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %153 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %157 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %156, i32 0, i32 1
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = call i32 @netif_wake_queue(%struct.TYPE_17__* %158)
  %160 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %7, align 8
  %161 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %160, i32 0, i32 0
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  br label %164

164:                                              ; preds = %122, %47, %28
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @netif_device_present(%struct.TYPE_17__*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_17__*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_get_echo_skb(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
