; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_port_obj_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_port_obj_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_port_obj_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.net_device*, %struct.switchdev_notifier_port_obj_info*)* @rocker_switchdev_port_obj_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_switchdev_port_obj_event(i64 %0, %struct.net_device* %1, %struct.switchdev_notifier_port_obj_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_notifier_port_obj_info*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.switchdev_notifier_port_obj_info* %2, %struct.switchdev_notifier_port_obj_info** %6, align 8
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  switch i64 %10, label %26 [
    i64 129, label %11
    i64 128, label %20
  ]

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %6, align 8
  %14 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %6, align 8
  %17 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rocker_port_obj_add(%struct.net_device* %12, i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %6, align 8
  %23 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rocker_port_obj_del(%struct.net_device* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %3, %20, %11
  %27 = load %struct.switchdev_notifier_port_obj_info*, %struct.switchdev_notifier_port_obj_info** %6, align 8
  %28 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @notifier_from_errno(i32 %29)
  ret i32 %30
}

declare dso_local i32 @rocker_port_obj_add(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rocker_port_obj_del(%struct.net_device*, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
