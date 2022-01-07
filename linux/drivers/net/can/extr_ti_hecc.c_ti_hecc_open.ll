; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ti_hecc_priv = type { i32 }

@ti_hecc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error requesting interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"open_candev() failed %d\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ti_hecc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ti_hecc_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ti_hecc_priv* %7, %struct.ti_hecc_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ti_hecc_interrupt, align 4
  %12 = load i32, i32* @IRQF_SHARED, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i32 %15, %struct.net_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %26 = call i32 @ti_hecc_transceiver_switch(%struct.ti_hecc_priv* %25, i32 1)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @open_candev(%struct.net_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %36 = call i32 @ti_hecc_transceiver_switch(%struct.ti_hecc_priv* %35, i32 0)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.net_device* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %24
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %46 = call i32 @can_led_event(%struct.net_device* %44, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @ti_hecc_start(%struct.net_device* %47)
  %49 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %49, i32 0, i32 0
  %51 = call i32 @can_rx_offload_enable(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_start_queue(%struct.net_device* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %31, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ti_hecc_transceiver_switch(%struct.ti_hecc_priv*, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @ti_hecc_start(%struct.net_device*) #1

declare dso_local i32 @can_rx_offload_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
