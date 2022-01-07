; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.m_can_classdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_can_class_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.m_can_classdev*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.net_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %9)
  store %struct.m_can_classdev* %10, %struct.m_can_classdev** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @pinctrl_pm_select_default_state(%struct.device* %11)
  %13 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %15 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %22 = call i32 @m_can_clk_start(%struct.m_can_classdev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %29 = call i32 @m_can_init_ram(%struct.m_can_classdev* %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @m_can_start(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netif_device_attach(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @netif_start_queue(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @m_can_clk_start(%struct.m_can_classdev*) #1

declare dso_local i32 @m_can_init_ram(%struct.m_can_classdev*) #1

declare dso_local i32 @m_can_start(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
