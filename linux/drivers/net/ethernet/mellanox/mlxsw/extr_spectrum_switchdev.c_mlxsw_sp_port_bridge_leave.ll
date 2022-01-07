; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*)* }
%struct.mlxsw_sp_bridge_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port* %0, %struct.net_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %9 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %15, %struct.net_device* %16)
  store %struct.mlxsw_sp_bridge_device* %17, %struct.mlxsw_sp_bridge_device** %8, align 8
  %18 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %8, align 8
  %19 = icmp ne %struct.mlxsw_sp_bridge_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.mlxsw_sp_bridge_port* @__mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge_device* %22, %struct.net_device* %23)
  store %struct.mlxsw_sp_bridge_port* %24, %struct.mlxsw_sp_bridge_port** %9, align 8
  %25 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %9, align 8
  %26 = icmp ne %struct.mlxsw_sp_bridge_port* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*)*, i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*)** %32, align 8
  %34 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %8, align 8
  %35 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %9, align 8
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %37 = call i32 %33(%struct.mlxsw_sp_bridge_device* %34, %struct.mlxsw_sp_bridge_port* %35, %struct.mlxsw_sp_port* %36)
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %9, align 8
  %42 = call i32 @mlxsw_sp_bridge_port_put(i32 %40, %struct.mlxsw_sp_bridge_port* %41)
  br label %43

43:                                               ; preds = %28, %27, %20
  ret void
}

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @__mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge_device*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_put(i32, %struct.mlxsw_sp_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
