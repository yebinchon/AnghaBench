; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.usb_8dev_rx_msg = type { i64, i32, i32, i32, i32 }
%struct.can_frame = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@USB_8DEV_TYPE_ERROR_FRAME = common dso_local global i64 0, align 8
@USB_8DEV_ERR_FLAG = common dso_local global i32 0, align 4
@USB_8DEV_TYPE_CAN_FRAME = common dso_local global i64 0, align 8
@USB_8DEV_EXTID = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@USB_8DEV_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"frame type %d unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_8dev_priv*, %struct.usb_8dev_rx_msg*)* @usb_8dev_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_8dev_rx_can_msg(%struct.usb_8dev_priv* %0, %struct.usb_8dev_rx_msg* %1) #0 {
  %3 = alloca %struct.usb_8dev_priv*, align 8
  %4 = alloca %struct.usb_8dev_rx_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %3, align 8
  store %struct.usb_8dev_rx_msg* %1, %struct.usb_8dev_rx_msg** %4, align 8
  %8 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %7, align 8
  %12 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %13 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_8DEV_TYPE_ERROR_FRAME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %19 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @USB_8DEV_ERR_FLAG, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %25 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %26 = call i32 @usb_8dev_rx_err_msg(%struct.usb_8dev_priv* %24, %struct.usb_8dev_rx_msg* %25)
  br label %121

27:                                               ; preds = %17, %2
  %28 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_8DEV_TYPE_CAN_FRAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %27
  %34 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %35 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_4__* %36, %struct.can_frame** %5)
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %121

41:                                               ; preds = %33
  %42 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %49 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 15
  %52 = call i64 @get_can_dlc(i32 %51)
  %53 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %56 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @USB_8DEV_EXTID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %41
  %62 = load i32, i32* @CAN_EFF_FLAG, align 4
  %63 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %41
  %68 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %69 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @USB_8DEV_RTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @CAN_RTR_FLAG, align 4
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %91

80:                                               ; preds = %67
  %81 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %85 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(i32 %83, i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %80, %74
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %100 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @netif_rx(%struct.sk_buff* %105)
  %107 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %108 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %111 = call i32 @can_led_event(%struct.TYPE_4__* %109, i32 %110)
  br label %120

112:                                              ; preds = %27
  %113 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %114 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %117 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @netdev_warn(%struct.TYPE_4__* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %112, %91
  br label %121

121:                                              ; preds = %40, %120, %23
  ret void
}

declare dso_local i32 @usb_8dev_rx_err_msg(%struct.usb_8dev_priv*, %struct.usb_8dev_rx_msg*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_4__*, %struct.can_frame**) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @can_led_event(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
