; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hi3110_priv = type { i32, i32, %struct.TYPE_2__, i32, i32*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }

@HI3110_WRITE_CTRL1 = common dso_local global i32 0, align 4
@HI3110_WRITE_INTE = common dso_local global i32 0, align 4
@HI3110_READ_INTF = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CAN_LED_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hi3110_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hi3110_priv*, align 8
  %4 = alloca %struct.spi_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hi3110_priv* %6, %struct.hi3110_priv** %3, align 8
  %7 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %7, i32 0, i32 5
  %9 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  store %struct.spi_device* %9, %struct.spi_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @close_candev(%struct.net_device* %10)
  %12 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.hi3110_priv* %17)
  %19 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @destroy_workqueue(i32* %21)
  %23 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %26 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %29 = load i32, i32* @HI3110_WRITE_CTRL1, align 4
  %30 = call i32 @hi3110_write(%struct.spi_device* %28, i32 %29, i32 0)
  %31 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %32 = load i32, i32* @HI3110_WRITE_INTE, align 4
  %33 = call i32 @hi3110_write(%struct.spi_device* %31, i32 %32, i32 0)
  %34 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %35 = load i32, i32* @HI3110_READ_INTF, align 4
  %36 = call i32 @hi3110_read(%struct.spi_device* %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @hi3110_clean(%struct.net_device* %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %40 = call i32 @hi3110_hw_sleep(%struct.spi_device* %39)
  %41 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %42 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hi3110_power_enable(i32 %43, i32 0)
  %45 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %46 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %47 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %50 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load i32, i32* @CAN_LED_EVENT_STOP, align 4
  %54 = call i32 @can_led_event(%struct.net_device* %52, i32 %53)
  ret i32 0
}

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.hi3110_priv*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hi3110_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @hi3110_read(%struct.spi_device*, i32) #1

declare dso_local i32 @hi3110_clean(%struct.net_device*) #1

declare dso_local i32 @hi3110_hw_sleep(%struct.spi_device*) #1

declare dso_local i32 @hi3110_power_enable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
