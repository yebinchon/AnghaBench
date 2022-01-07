; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { i32, i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CAN_LED_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @at91_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.at91_priv* %5, %struct.at91_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %9 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %8, i32 0, i32 1
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %13 = call i32 @at91_chip_stop(%struct.net_device* %11, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %20 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @close_candev(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @CAN_LED_EVENT_STOP, align 4
  %27 = call i32 @can_led_event(%struct.net_device* %25, i32 %26)
  ret i32 0
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @at91_chip_stop(%struct.net_device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
