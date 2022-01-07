; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_status_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_status_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64, %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.kvaser_pciefd_rx_packet = type { i32*, i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32*, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@KVASER_PCIEFD_SPACK_RXERR_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@KVASER_PCIEFD_BEC_POLL_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_status_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_status_resp(%struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd_can*, align 8
  %5 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %6 = alloca %struct.can_berr_counter, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.can_frame*, align 8
  %14 = alloca %struct.skb_shared_hwtstamps*, align 8
  %15 = alloca %struct.net_device_stats*, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %4, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %16 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %17 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %21 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %28 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KVASER_PCIEFD_SPACK_RXERR_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %37 = call i32 @kvaser_pciefd_packet_to_state(%struct.kvaser_pciefd_rx_packet* %36, %struct.can_berr_counter* %6, i32* %8, i32* %9, i32* %10)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %2
  %42 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %43 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  store %struct.net_device* %45, %struct.net_device** %11, align 8
  %46 = load %struct.net_device*, %struct.net_device** %11, align 8
  %47 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %46, %struct.can_frame** %13)
  store %struct.sk_buff* %47, %struct.sk_buff** %12, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %11, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  store %struct.net_device_stats* %52, %struct.net_device_stats** %15, align 8
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %145

59:                                               ; preds = %41
  %60 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %61 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @kvaser_pciefd_change_state(%struct.kvaser_pciefd_can* %60, %struct.can_frame* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %75 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %81 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %79, %73, %69, %59
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %92)
  store %struct.skb_shared_hwtstamps* %93, %struct.skb_shared_hwtstamps** %14, align 8
  %94 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %95 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 1000
  %98 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %99 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @div_u64(i32 %97, i32 %102)
  %104 = call i32 @ns_to_ktime(i32 %103)
  %105 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %106 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %110 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  store i32 %108, i32* %112, align 4
  %113 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 7
  store i32 %114, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %120 = call i32 @netif_rx(%struct.sk_buff* %119)
  br label %121

121:                                              ; preds = %91, %2
  %122 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %125 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %130 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %121
  %136 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135, %121
  %140 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %141 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %140, i32 0, i32 0
  %142 = load i32, i32* @KVASER_PCIEFD_BEC_POLL_FREQ, align 4
  %143 = call i32 @mod_timer(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %135
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %50
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @kvaser_pciefd_packet_to_state(%struct.kvaser_pciefd_rx_packet*, %struct.can_berr_counter*, i32*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @kvaser_pciefd_change_state(%struct.kvaser_pciefd_can*, %struct.can_frame*, i32, i32, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
