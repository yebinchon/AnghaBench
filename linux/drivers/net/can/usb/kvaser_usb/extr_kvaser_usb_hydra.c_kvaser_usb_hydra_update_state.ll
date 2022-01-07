; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.can_berr_counter = type { i64, i64 }
%struct.can_frame = type { i64*, i64 }
%struct.sk_buff = type { i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CMD_STOP_CHIP_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No memory left for err_skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*, i32, %struct.can_berr_counter*)* @kvaser_usb_hydra_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_update_state(%struct.kvaser_usb_net_priv* %0, i32 %1, %struct.can_berr_counter* %2) #0 {
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_berr_counter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.can_berr_counter* %2, %struct.can_berr_counter** %6, align 8
  %15 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %16 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %25 = call i32 @kvaser_usb_hydra_bus_status_to_can_state(%struct.kvaser_usb_net_priv* %22, i32 %23, %struct.can_berr_counter* %24, i32* %11)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %156

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %156

39:                                               ; preds = %34, %30
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %40, %struct.can_frame** %8)
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  %45 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %46 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %49 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %13, align 4
  %58 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %59 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %62 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %14, align 4
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @can_change_state(%struct.net_device* %71, %struct.can_frame* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %39
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %86 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %92 = load i32, i32* @CMD_STOP_CHIP_REQ, align 4
  %93 = call i32 @kvaser_usb_hydra_send_simple_cmd_async(%struct.kvaser_usb_net_priv* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = call i32 @can_bus_off(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %80, %76
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.net_device*, %struct.net_device** %7, align 8
  %102 = call i32 @netdev_warn(%struct.net_device* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %156

103:                                              ; preds = %97
  %104 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %105 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %119 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %113, %109, %103
  %125 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %126 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %129 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 6
  store i64 %127, i64* %131, align 8
  %132 = load %struct.can_berr_counter*, %struct.can_berr_counter** %6, align 8
  %133 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 7
  store i64 %134, i64* %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  store %struct.net_device_stats* %140, %struct.net_device_stats** %10, align 8
  %141 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %142 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %146 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %149 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %155 = call i32 @netif_rx(%struct.sk_buff* %154)
  br label %156

156:                                              ; preds = %124, %100, %38, %29
  ret void
}

declare dso_local i32 @kvaser_usb_hydra_bus_status_to_can_state(%struct.kvaser_usb_net_priv*, i32, %struct.can_berr_counter*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_send_simple_cmd_async(%struct.kvaser_usb_net_priv*, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
