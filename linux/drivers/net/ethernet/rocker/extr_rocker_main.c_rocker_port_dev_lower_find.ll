; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_lower_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_lower_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }
%struct.net_device = type { i32 }
%struct.rocker = type { i32 }
%struct.rocker_walk_data = type { %struct.rocker_port*, %struct.rocker* }

@rocker_lower_dev_walk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rocker_port* @rocker_port_dev_lower_find(%struct.net_device* %0, %struct.rocker* %1) #0 {
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca %struct.rocker_walk_data, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rocker* %1, %struct.rocker** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = load %struct.rocker*, %struct.rocker** %5, align 8
  %9 = call i64 @rocker_port_dev_check_under(%struct.net_device* %7, %struct.rocker* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %12)
  store %struct.rocker_port* %13, %struct.rocker_port** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.rocker*, %struct.rocker** %5, align 8
  %16 = getelementptr inbounds %struct.rocker_walk_data, %struct.rocker_walk_data* %6, i32 0, i32 1
  store %struct.rocker* %15, %struct.rocker** %16, align 8
  %17 = getelementptr inbounds %struct.rocker_walk_data, %struct.rocker_walk_data* %6, i32 0, i32 0
  store %struct.rocker_port* null, %struct.rocker_port** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* @rocker_lower_dev_walk, align 4
  %20 = call i32 @netdev_walk_all_lower_dev(%struct.net_device* %18, i32 %19, %struct.rocker_walk_data* %6)
  %21 = getelementptr inbounds %struct.rocker_walk_data, %struct.rocker_walk_data* %6, i32 0, i32 0
  %22 = load %struct.rocker_port*, %struct.rocker_port** %21, align 8
  store %struct.rocker_port* %22, %struct.rocker_port** %3, align 8
  br label %23

23:                                               ; preds = %14, %11
  %24 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  ret %struct.rocker_port* %24
}

declare dso_local i64 @rocker_port_dev_check_under(%struct.net_device*, %struct.rocker*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_walk_all_lower_dev(%struct.net_device*, i32, %struct.rocker_walk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
