; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { i32*, i32*, i64, i32 }

@CAN_LED_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @m_can_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.m_can_classdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %4)
  store %struct.m_can_classdev* %5, %struct.m_can_classdev** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %9 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %14 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %13, i32 0, i32 3
  %15 = call i32 @napi_disable(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @m_can_stop(%struct.net_device* %17)
  %19 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %20 = call i32 @m_can_clk_stop(%struct.m_can_classdev* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.net_device* %24)
  %26 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %27 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %16
  %31 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %32 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %34 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @destroy_workqueue(i32* %35)
  %37 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %38 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %16
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @close_candev(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* @CAN_LED_EVENT_STOP, align 4
  %44 = call i32 @can_led_event(%struct.net_device* %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @m_can_stop(%struct.net_device*) #1

declare dso_local i32 @m_can_clk_stop(%struct.m_can_classdev*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
