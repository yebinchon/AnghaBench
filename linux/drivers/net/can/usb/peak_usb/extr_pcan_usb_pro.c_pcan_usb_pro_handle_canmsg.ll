; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_canmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_canmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_pro_interface = type { i32, %struct.peak_usb_device** }
%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pcan_usb_pro_rxmsg = type { i32, i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PCAN_USBPRO_EXT = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PCAN_USBPRO_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_rxmsg*)* @pcan_usb_pro_handle_canmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_handle_canmsg(%struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_rxmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_pro_interface*, align 8
  %5 = alloca %struct.pcan_usb_pro_rxmsg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.peak_usb_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_interface** %4, align 8
  store %struct.pcan_usb_pro_rxmsg* %1, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %12 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %13 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %4, align 8
  %18 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %17, i32 0, i32 1
  %19 = load %struct.peak_usb_device**, %struct.peak_usb_device*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.peak_usb_device*, %struct.peak_usb_device** %19, i64 %21
  %23 = load %struct.peak_usb_device*, %struct.peak_usb_device** %22, align 8
  store %struct.peak_usb_device* %23, %struct.peak_usb_device** %7, align 8
  %24 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %25 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %27, %struct.can_frame** %9)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %110

34:                                               ; preds = %2
  %35 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %36 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %40 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %42 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %48 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCAN_USBPRO_EXT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %34
  %54 = load i32, i32* @CAN_EFF_FLAG, align 4
  %55 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %34
  %60 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %61 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCAN_USBPRO_RTR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @CAN_RTR_FLAG, align 4
  %68 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %83

72:                                               ; preds = %59
  %73 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %77 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %80 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %66
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %84)
  store %struct.skb_shared_hwtstamps* %85, %struct.skb_shared_hwtstamps** %11, align 8
  %86 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %4, align 8
  %87 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %86, i32 0, i32 0
  %88 = load %struct.pcan_usb_pro_rxmsg*, %struct.pcan_usb_pro_rxmsg** %5, align 8
  %89 = getelementptr inbounds %struct.pcan_usb_pro_rxmsg, %struct.pcan_usb_pro_rxmsg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %11, align 8
  %93 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %92, i32 0, i32 0
  %94 = call i32 @peak_usb_get_ts_time(i32* %87, i32 %91, i32* %93)
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %101 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = call i32 @netif_rx(%struct.sk_buff* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %83, %31
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @peak_usb_get_ts_time(i32*, i32, i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
