; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_error_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.kvaser_err_frame_data = type { i64, i64, i32 }
%struct.can_frame = type { i64*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.can_berr_counter = type { i64, i64 }

@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@CMD_STOP_CHIP_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No memory left for err_skb\0A\00", align 1
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*, %struct.kvaser_err_frame_data*, i32)* @kvaser_usb_hydra_error_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_error_frame(%struct.kvaser_usb_net_priv* %0, %struct.kvaser_err_frame_data* %1, i32 %2) #0 {
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca %struct.kvaser_err_frame_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.skb_shared_hwtstamps*, align 8
  %12 = alloca %struct.can_berr_counter, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %4, align 8
  store %struct.kvaser_err_frame_data* %1, %struct.kvaser_err_frame_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %18, i32 0, i32 2
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %8, align 8
  %23 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %24 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %30 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.kvaser_err_frame_data*, %struct.kvaser_err_frame_data** %5, align 8
  %34 = getelementptr inbounds %struct.kvaser_err_frame_data, %struct.kvaser_err_frame_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  %36 = load %struct.kvaser_err_frame_data*, %struct.kvaser_err_frame_data** %5, align 8
  %37 = getelementptr inbounds %struct.kvaser_err_frame_data, %struct.kvaser_err_frame_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.kvaser_err_frame_data*, %struct.kvaser_err_frame_data** %5, align 8
  %41 = getelementptr inbounds %struct.kvaser_err_frame_data, %struct.kvaser_err_frame_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @kvaser_usb_hydra_bus_status_to_can_state(%struct.kvaser_usb_net_priv* %48, i32 %49, %struct.can_berr_counter* %12, i32* %13)
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %51, %struct.can_frame** %9)
  store %struct.sk_buff* %52, %struct.sk_buff** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %125

56:                                               ; preds = %3
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %107

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %16, align 4
  %71 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %17, align 4
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @can_change_state(%struct.net_device* %82, %struct.can_frame* %83, i32 %84, i32 %85)
  %87 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %88 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %80
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %95 = icmp uge i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %102 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %103 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %96, %92, %80
  br label %107

107:                                              ; preds = %106, %56
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %113 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %119 = load i32, i32* @CMD_STOP_CHIP_REQ, align 4
  %120 = call i32 @kvaser_usb_hydra_send_simple_cmd_async(%struct.kvaser_usb_net_priv* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = call i32 @can_bus_off(%struct.net_device* %122)
  br label %124

124:                                              ; preds = %121, %107
  br label %125

125:                                              ; preds = %124, %3
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %130 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.net_device*, %struct.net_device** %7, align 8
  %134 = call i32 @netdev_warn(%struct.net_device* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %183

135:                                              ; preds = %125
  %136 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %137 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %136)
  store %struct.skb_shared_hwtstamps* %137, %struct.skb_shared_hwtstamps** %11, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %11, align 8
  %140 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %142 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %143 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 6
  store i64 %147, i64* %151, align 8
  %152 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %155 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 7
  store i64 %153, i64* %157, align 8
  %158 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %159 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %163 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %166 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %164
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = call i32 @netif_rx(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %176 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %181 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i64 %179, i64* %182, align 8
  br label %183

183:                                              ; preds = %135, %128
  ret void
}

declare dso_local i32 @kvaser_usb_hydra_bus_status_to_can_state(%struct.kvaser_usb_net_priv*, i32, %struct.can_berr_counter*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_send_simple_cmd_async(%struct.kvaser_usb_net_priv*, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
