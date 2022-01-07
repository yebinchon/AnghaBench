; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_port_attr_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_port_attr_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_port_attr_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_notifier_port_attr_info*)* @rocker_switchdev_port_attr_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_switchdev_port_attr_set_event(%struct.net_device* %0, %struct.switchdev_notifier_port_attr_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_notifier_port_attr_info*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_notifier_port_attr_info* %1, %struct.switchdev_notifier_port_attr_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = load %struct.switchdev_notifier_port_attr_info*, %struct.switchdev_notifier_port_attr_info** %4, align 8
  %8 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.switchdev_notifier_port_attr_info*, %struct.switchdev_notifier_port_attr_info** %4, align 8
  %11 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rocker_port_attr_set(%struct.net_device* %6, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.switchdev_notifier_port_attr_info*, %struct.switchdev_notifier_port_attr_info** %4, align 8
  %15 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @notifier_from_errno(i32 %16)
  ret i32 %17
}

declare dso_local i32 @rocker_port_attr_set(%struct.net_device*, i32, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
