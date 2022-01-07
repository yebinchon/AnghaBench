; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.switchdev_trans = type { i32 }
%struct.rocker_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* @rocker_port_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_attr_set(%struct.net_device* %0, %struct.switchdev_attr* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_attr*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.rocker_port*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_attr* %1, %struct.switchdev_attr** %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %9)
  store %struct.rocker_port* %10, %struct.rocker_port** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %12 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %46 [
    i32 128, label %14
    i32 129, label %22
    i32 130, label %30
    i32 131, label %38
  ]

14:                                               ; preds = %3
  %15 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %16 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %17 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %21 = call i32 @rocker_world_port_attr_stp_state_set(%struct.rocker_port* %15, i32 %19, %struct.switchdev_trans* %20)
  store i32 %21, i32* %8, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %24 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %25 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %29 = call i32 @rocker_world_port_attr_pre_bridge_flags_set(%struct.rocker_port* %23, i32 %27, %struct.switchdev_trans* %28)
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %32 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %33 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %37 = call i32 @rocker_world_port_attr_bridge_flags_set(%struct.rocker_port* %31, i32 %35, %struct.switchdev_trans* %36)
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %3
  %39 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %40 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %41 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %45 = call i32 @rocker_world_port_attr_bridge_ageing_time_set(%struct.rocker_port* %39, i32 %43, %struct.switchdev_trans* %44)
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %38, %30, %22, %14
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_world_port_attr_stp_state_set(%struct.rocker_port*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @rocker_world_port_attr_pre_bridge_flags_set(%struct.rocker_port*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @rocker_world_port_attr_bridge_flags_set(%struct.rocker_port*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @rocker_world_port_attr_bridge_ageing_time_set(%struct.rocker_port*, i32, %struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
