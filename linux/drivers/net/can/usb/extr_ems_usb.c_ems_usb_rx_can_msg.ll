; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ems_cpc_msg = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.can_frame = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@CPC_MSG_TYPE_EXT_CAN_FRAME = common dso_local global i64 0, align 8
@CPC_MSG_TYPE_EXT_RTR_FRAME = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CPC_MSG_TYPE_RTR_FRAME = common dso_local global i64 0, align 8
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_usb*, %struct.ems_cpc_msg*)* @ems_usb_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_usb_rx_can_msg(%struct.ems_usb* %0, %struct.ems_cpc_msg* %1) #0 {
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.ems_cpc_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device_stats*, align 8
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  store %struct.ems_cpc_msg* %1, %struct.ems_cpc_msg** %4, align 8
  %9 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %8, align 8
  %13 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %14 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__* %15, %struct.can_frame** %5)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %22 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %30 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 15
  %35 = call i32 @get_can_dlc(i32 %34)
  %36 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %39 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CPC_MSG_TYPE_EXT_CAN_FRAME, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %20
  %44 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %45 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CPC_MSG_TYPE_EXT_RTR_FRAME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43, %20
  %50 = load i32, i32* @CAN_EFF_FLAG, align 4
  %51 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %57 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CPC_MSG_TYPE_RTR_FRAME, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %63 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CPC_MSG_TYPE_EXT_RTR_FRAME, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @CAN_RTR_FLAG, align 4
  %69 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %70 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %100

73:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %82 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %74

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %67
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %109 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @netif_rx(%struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %100, %19
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__*, %struct.can_frame**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
