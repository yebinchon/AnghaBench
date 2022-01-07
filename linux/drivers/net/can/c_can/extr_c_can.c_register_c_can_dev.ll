; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_register_c_can_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_register_c_can_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.c_can_priv = type { i32 }

@IFF_ECHO = common dso_local global i32 0, align 4
@c_can_netdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_c_can_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.c_can_priv* %6, %struct.c_can_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pinctrl_pm_select_sleep_state(i32 %10)
  %12 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %13 = call i32 @c_can_pm_runtime_enable(%struct.c_can_priv* %12)
  %14 = load i32, i32* @IFF_ECHO, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i32* @c_can_netdev_ops, i32** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @register_candev(%struct.net_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %27 = call i32 @c_can_pm_runtime_disable(%struct.c_can_priv* %26)
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @devm_can_led_init(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32) #1

declare dso_local i32 @c_can_pm_runtime_enable(%struct.c_can_priv*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @c_can_pm_runtime_disable(%struct.c_can_priv*) #1

declare dso_local i32 @devm_can_led_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
