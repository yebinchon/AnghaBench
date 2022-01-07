; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_master_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_master_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker_port.0*, %struct.net_device*)* }
%struct.rocker_port.0 = type opaque
%struct.net_device = type opaque
%struct.net_device.1 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.net_device.1*)* @rocker_world_port_master_linked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_port_master_linked(%struct.rocker_port* %0, %struct.net_device.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca %struct.net_device.1*, align 8
  %6 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %4, align 8
  store %struct.net_device.1* %1, %struct.net_device.1** %5, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %8 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %10, align 8
  store %struct.rocker_world_ops* %11, %struct.rocker_world_ops** %6, align 8
  %12 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %13 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.rocker_port.0*, %struct.net_device*)*, i32 (%struct.rocker_port.0*, %struct.net_device*)** %13, align 8
  %15 = icmp ne i32 (%struct.rocker_port.0*, %struct.net_device*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %21 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.rocker_port.0*, %struct.net_device*)*, i32 (%struct.rocker_port.0*, %struct.net_device*)** %21, align 8
  %23 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %24 = bitcast %struct.rocker_port* %23 to %struct.rocker_port.0*
  %25 = load %struct.net_device.1*, %struct.net_device.1** %5, align 8
  %26 = bitcast %struct.net_device.1* %25 to %struct.net_device*
  %27 = call i32 %22(%struct.rocker_port.0* %24, %struct.net_device* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
