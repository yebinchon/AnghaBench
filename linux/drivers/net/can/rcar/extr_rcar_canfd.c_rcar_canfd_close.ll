; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, %struct.rcar_canfd_global* }
%struct.rcar_canfd_global = type { i32 }

@CAN_LED_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rcar_canfd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_canfd_channel*, align 8
  %4 = alloca %struct.rcar_canfd_global*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %5)
  store %struct.rcar_canfd_channel* %6, %struct.rcar_canfd_channel** %3, align 8
  %7 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %7, i32 0, i32 1
  %9 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %8, align 8
  store %struct.rcar_canfd_global* %9, %struct.rcar_canfd_global** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @rcar_canfd_stop(%struct.net_device* %12)
  %14 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %14, i32 0, i32 0
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %4, align 8
  %18 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @close_candev(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @CAN_LED_EVENT_STOP, align 4
  %25 = call i32 @can_led_event(%struct.net_device* %23, i32 %24)
  ret i32 0
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_stop(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
