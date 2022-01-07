; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.can_frame = type { i32 }

@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*, %struct.can_frame*, i32, i32, i32)* @kvaser_pciefd_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_change_state(%struct.kvaser_pciefd_can* %0, %struct.can_frame* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %6, align 8
  store %struct.can_frame* %1, %struct.can_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %14 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @can_change_state(%struct.net_device* %16, %struct.can_frame* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %26 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %11, align 8
  %29 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %30 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %29, i32 0, i32 1
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %34 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %39 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %38, i32 0, i32 1
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %43 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %24
  %48 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %49 = call i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can* %48)
  %50 = load %struct.net_device*, %struct.net_device** %11, align 8
  %51 = call i32 @can_bus_off(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %47, %24
  br label %53

53:                                               ; preds = %52, %5
  ret void
}

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
