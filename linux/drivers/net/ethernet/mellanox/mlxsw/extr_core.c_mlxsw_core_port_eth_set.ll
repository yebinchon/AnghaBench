; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_port_eth_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_port_eth_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.mlxsw_core_port* }
%struct.mlxsw_core_port = type { i8*, %struct.devlink_port }
%struct.devlink_port = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_core_port_eth_set(%struct.mlxsw_core* %0, i64 %1, i8* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mlxsw_core_port*, align 8
  %10 = alloca %struct.devlink_port*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %13, i64 %14
  store %struct.mlxsw_core_port* %15, %struct.mlxsw_core_port** %9, align 8
  %16 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %9, align 8
  %17 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %16, i32 0, i32 1
  store %struct.devlink_port* %17, %struct.devlink_port** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %9, align 8
  %20 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.devlink_port*, %struct.devlink_port** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i32 @devlink_port_type_eth_set(%struct.devlink_port* %21, %struct.net_device* %22)
  ret void
}

declare dso_local i32 @devlink_port_type_eth_set(%struct.devlink_port*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
