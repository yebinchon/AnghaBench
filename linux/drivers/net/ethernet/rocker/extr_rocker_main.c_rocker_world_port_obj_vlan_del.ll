; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_obj_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_obj_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)* }
%struct.rocker_port.0 = type opaque
%struct.switchdev_obj_port_vlan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.switchdev_obj_port_vlan*)* @rocker_world_port_obj_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_port_obj_vlan_del(%struct.rocker_port* %0, %struct.switchdev_obj_port_vlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %6 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %4, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %5, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %8 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %10, align 8
  store %struct.rocker_world_ops* %11, %struct.rocker_world_ops** %6, align 8
  %12 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %13 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @netif_is_bridge_master(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %23 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)*, i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)** %23, align 8
  %25 = icmp ne i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %21
  %30 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %31 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)*, i32 (%struct.rocker_port.0*, %struct.switchdev_obj_port_vlan*)** %31, align 8
  %33 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %34 = bitcast %struct.rocker_port* %33 to %struct.rocker_port.0*
  %35 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %36 = call i32 %32(%struct.rocker_port.0* %34, %struct.switchdev_obj_port_vlan* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %26, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @netif_is_bridge_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
