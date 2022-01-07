; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2_net_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.can_frame = type { i32, i32, i32* }
%struct.sk_buff = type { i32 }

@ESD_EVENT = common dso_local global i32 0, align 4
@ESD_IDMASK = common dso_local global i32 0, align 4
@ESD_RTR = common dso_local global i32 0, align 4
@ESD_EXTID = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esd_usb2_net_priv*, %struct.esd_usb2_msg*)* @esd_usb2_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esd_usb2_rx_can_msg(%struct.esd_usb2_net_priv* %0, %struct.esd_usb2_msg* %1) #0 {
  %3 = alloca %struct.esd_usb2_net_priv*, align 8
  %4 = alloca %struct.esd_usb2_msg*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esd_usb2_net_priv* %0, %struct.esd_usb2_net_priv** %3, align 8
  store %struct.esd_usb2_msg* %1, %struct.esd_usb2_msg** %4, align 8
  %10 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %11 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %5, align 8
  %14 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %15 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @netif_device_present(%struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %131

20:                                               ; preds = %2
  %21 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %22 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ESD_EVENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %33 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %34 = call i32 @esd_usb2_rx_event(%struct.esd_usb2_net_priv* %32, %struct.esd_usb2_msg* %33)
  br label %130

35:                                               ; preds = %20
  %36 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %3, align 8
  %37 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__* %38, %struct.can_frame** %6)
  store %struct.sk_buff* %39, %struct.sk_buff** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %131

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @ESD_IDMASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %54 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ESD_RTR, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @get_can_dlc(i32 %60)
  %62 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ESD_EXTID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %47
  %69 = load i32, i32* @CAN_EFF_FLAG, align 4
  %70 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %71 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %47
  %75 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %76 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ESD_RTR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* @CAN_RTR_FLAG, align 4
  %85 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %86 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %116

89:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %93 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %4, align 8
  %98 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %107 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %96
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %90

115:                                              ; preds = %90
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %118 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %122 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %125 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = call i32 @netif_rx(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %116, %31
  br label %131

131:                                              ; preds = %130, %42, %19
  ret void
}

declare dso_local i32 @netif_device_present(%struct.TYPE_7__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @esd_usb2_rx_event(%struct.esd_usb2_net_priv*, %struct.esd_usb2_msg*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__*, %struct.can_frame**) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
