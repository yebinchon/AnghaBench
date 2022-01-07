; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.rocker_port = type { %struct.rocker* }
%struct.rocker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_phys_item_id*)* @rocker_port_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_phys_item_id*, align 8
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %7)
  store %struct.rocker_port* %8, %struct.rocker_port** %5, align 8
  %9 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %10 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %9, i32 0, i32 0
  %11 = load %struct.rocker*, %struct.rocker** %10, align 8
  store %struct.rocker* %11, %struct.rocker** %6, align 8
  %12 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %13 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %15 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %14, i32 0, i32 1
  %16 = load %struct.rocker*, %struct.rocker** %6, align 8
  %17 = getelementptr inbounds %struct.rocker, %struct.rocker* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %20 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %15, i32* %18, i32 %21)
  ret i32 0
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
