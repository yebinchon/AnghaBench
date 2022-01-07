; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*, %struct.netlink_ext_ack*)* }
%struct.mlxsw_sp_bridge_port = type { %struct.mlxsw_sp_bridge_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_port_bridge_join(%struct.mlxsw_sp_port* %0, %struct.net_device* %1, %struct.net_device* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %12 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %10, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_get(i32 %19, %struct.net_device* %20)
  store %struct.mlxsw_sp_bridge_port* %21, %struct.mlxsw_sp_bridge_port** %12, align 8
  %22 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %23 = call i64 @IS_ERR(%struct.mlxsw_sp_bridge_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.mlxsw_sp_bridge_port* %26)
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %29, i32 0, i32 0
  %31 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %30, align 8
  store %struct.mlxsw_sp_bridge_device* %31, %struct.mlxsw_sp_bridge_device** %11, align 8
  %32 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*, %struct.netlink_ext_ack*)** %35, align 8
  %37 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %38 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %41 = call i32 %36(%struct.mlxsw_sp_bridge_device* %37, %struct.mlxsw_sp_bridge_port* %38, %struct.mlxsw_sp_port* %39, %struct.netlink_ext_ack* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %53

46:                                               ; preds = %44
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %12, align 8
  %51 = call i32 @mlxsw_sp_bridge_port_put(i32 %49, %struct.mlxsw_sp_bridge_port* %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %45, %25
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_get(i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_bridge_port*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_bridge_port*) #1

declare dso_local i32 @mlxsw_sp_bridge_port_put(i32, %struct.mlxsw_sp_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
