; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_can.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_can.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.mcba_usb_msg_can = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@MCBA_SIDL_EXID_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@MCBA_DLC_RTR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@MCBA_DLC_MASK = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_priv*, %struct.mcba_usb_msg_can*)* @mcba_usb_process_can to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_process_can(%struct.mcba_priv* %0, %struct.mcba_usb_msg_can* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.mcba_usb_msg_can*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.mcba_usb_msg_can* %1, %struct.mcba_usb_msg_can** %4, align 8
  %9 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %7, align 8
  %13 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_3__* %15, %struct.can_frame** %5)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %111

20:                                               ; preds = %2
  %21 = load %struct.mcba_usb_msg_can*, %struct.mcba_usb_msg_can** %4, align 8
  %22 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %21, i32 0, i32 3
  %23 = call i32 @get_unaligned_be16(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MCBA_SIDL_EXID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load i32, i32* @CAN_EFF_FLAG, align 4
  %30 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %31 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 65504
  %34 = shl i32 %33, 13
  %35 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 3
  %41 = shl i32 %40, 16
  %42 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %43 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.mcba_usb_msg_can*, %struct.mcba_usb_msg_can** %4, align 8
  %47 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %46, i32 0, i32 2
  %48 = call i32 @get_unaligned_be16(i32* %47)
  %49 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %50 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %59

53:                                               ; preds = %20
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 65504
  %56 = ashr i32 %55, 5
  %57 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %28
  %60 = load %struct.mcba_usb_msg_can*, %struct.mcba_usb_msg_can** %4, align 8
  %61 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MCBA_DLC_RTR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @CAN_RTR_FLAG, align 4
  %68 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.mcba_usb_msg_can*, %struct.mcba_usb_msg_can** %4, align 8
  %74 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MCBA_DLC_MASK, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @get_can_dlc(i32 %77)
  %79 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %80 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mcba_usb_msg_can*, %struct.mcba_usb_msg_can** %4, align 8
  %85 = getelementptr inbounds %struct.mcba_usb_msg_can, %struct.mcba_usb_msg_can* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(i32 %83, i32 %86, i64 %89)
  %91 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %92 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %96 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %105 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %108 = call i32 @can_led_event(%struct.TYPE_3__* %106, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @netif_rx(%struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %72, %19
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_3__*, %struct.can_frame**) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @can_led_event(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
