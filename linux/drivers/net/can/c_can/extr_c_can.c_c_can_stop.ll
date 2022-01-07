; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.c_can_priv = type { %struct.TYPE_4__, i32 (%struct.c_can_priv*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_INIT = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @c_can_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.c_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.c_can_priv* %5, %struct.c_can_priv** %3, align 8
  %6 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %7 = call i32 @c_can_irq_control(%struct.c_can_priv* %6, i32 0)
  %8 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %8, i32 0, i32 1
  %10 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %9, align 8
  %11 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %12 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %13 = load i32, i32* @CONTROL_INIT, align 4
  %14 = call i32 %10(%struct.c_can_priv* %11, i32 %12, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pinctrl_pm_select_sleep_state(i32 %18)
  %20 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %21 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %22 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  ret void
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @c_can_irq_control(%struct.c_can_priv*, i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
