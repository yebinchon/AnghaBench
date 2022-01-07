; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_attr_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_attr_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker_port.0*, i32)* }
%struct.rocker_port.0 = type opaque
%struct.switchdev_trans = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, i32, %struct.switchdev_trans*)* @rocker_world_port_attr_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_port_attr_stp_state_set(%struct.rocker_port* %0, i32 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %9 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %10 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %12, align 8
  store %struct.rocker_world_ops* %13, %struct.rocker_world_ops** %8, align 8
  %14 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %8, align 8
  %15 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.rocker_port.0*, i32)*, i32 (%struct.rocker_port.0*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.rocker_port.0*, i32)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %23 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %8, align 8
  %28 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.rocker_port.0*, i32)*, i32 (%struct.rocker_port.0*, i32)** %28, align 8
  %30 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %31 = bitcast %struct.rocker_port* %30 to %struct.rocker_port.0*
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %29(%struct.rocker_port.0* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %25, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
