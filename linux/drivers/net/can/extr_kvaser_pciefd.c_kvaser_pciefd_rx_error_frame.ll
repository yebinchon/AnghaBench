; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_rx_error_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_rx_error_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.kvaser_pciefd_rx_packet = type { i32*, i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@KVASER_PCIEFD_SPACK_RXERR_SHIFT = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_rx_error_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_rx_error_frame(%struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
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
  %17 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %11, align 8
  store %struct.can_frame* null, %struct.can_frame** %13, align 8
  %20 = load %struct.net_device*, %struct.net_device** %11, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store %struct.net_device_stats* %21, %struct.net_device_stats** %15, align 8
  %22 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %27 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %34 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @KVASER_PCIEFD_SPACK_RXERR_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %43 = call i32 @kvaser_pciefd_packet_to_state(%struct.kvaser_pciefd_rx_packet* %42, %struct.can_berr_counter* %6, i32* %8, i32* %9, i32* %10)
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %44, %struct.can_frame** %13)
  store %struct.sk_buff* %45, %struct.sk_buff** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %2
  %50 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %51 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @kvaser_pciefd_change_state(%struct.kvaser_pciefd_can* %50, %struct.can_frame* %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %65 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %71 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %80 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %81 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %69
  br label %85

85:                                               ; preds = %84, %63, %59, %49
  br label %86

86:                                               ; preds = %85, %2
  %87 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %88 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %92 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %104 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %109 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %86
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %168

120:                                              ; preds = %86
  %121 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %122 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %121)
  store %struct.skb_shared_hwtstamps* %122, %struct.skb_shared_hwtstamps** %14, align 8
  %123 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %124 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 1000
  %127 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %128 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @div_u64(i32 %126, i32 %131)
  %133 = call i32 @ns_to_ktime(i32 %132)
  %134 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %135 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %137 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %138 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %144 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32 %142, i32* %146, align 4
  %147 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %150 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  store i32 %148, i32* %152, align 4
  %153 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %154 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.can_frame*, %struct.can_frame** %13, align 8
  %158 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %161 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %167 = call i32 @netif_rx(%struct.sk_buff* %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %120, %113
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @kvaser_pciefd_packet_to_state(%struct.kvaser_pciefd_rx_packet*, %struct.can_berr_counter*, i32*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @kvaser_pciefd_change_state(%struct.kvaser_pciefd_can*, %struct.can_frame*, i32, i32, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
