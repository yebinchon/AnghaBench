; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sja1000_priv = type { i32, i32 }

@SJA1000_CUSTOM_IRQ_HANDLER = common dso_local global i32 0, align 4
@sja1000_interrupt = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sja1000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sja1000_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sja1000_priv* %7, %struct.sja1000_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @set_reset_mode(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @open_candev(%struct.net_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SJA1000_CUSTOM_IRQ_HANDLER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @sja1000_interrupt, align 4
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %29 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = bitcast %struct.net_device* %34 to i8*
  %36 = call i32 @request_irq(i32 %26, i32 %27, i32 %30, i32 %33, i8* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @close_candev(%struct.net_device* %40)
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @sja1000_start(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %50 = call i32 @can_led_event(%struct.net_device* %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_start_queue(%struct.net_device* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %39, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @sja1000_start(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
