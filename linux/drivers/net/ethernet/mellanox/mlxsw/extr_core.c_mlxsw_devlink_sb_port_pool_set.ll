; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_port_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_port_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)* }
%struct.mlxsw_core_port = type opaque
%struct.mlxsw_core_port.0 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_devlink_sb_port_pool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_port_pool_set(%struct.devlink_port* %0, i32 %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_core*, align 8
  %13 = alloca %struct.mlxsw_driver*, align 8
  %14 = alloca %struct.mlxsw_core_port.0*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %16 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlxsw_core* @devlink_priv(i32 %17)
  store %struct.mlxsw_core* %18, %struct.mlxsw_core** %12, align 8
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %12, align 8
  %20 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %19, i32 0, i32 0
  %21 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %20, align 8
  store %struct.mlxsw_driver* %21, %struct.mlxsw_driver** %13, align 8
  %22 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %23 = call %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port* %22)
  store %struct.mlxsw_core_port.0* %23, %struct.mlxsw_core_port.0** %14, align 8
  %24 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %13, align 8
  %25 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)** %25, align 8
  %27 = icmp ne i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %14, align 8
  %30 = call i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %5
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %13, align 8
  %37 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %36, i32 0, i32 0
  %38 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, %struct.netlink_ext_ack*)** %37, align 8
  %39 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %14, align 8
  %40 = bitcast %struct.mlxsw_core_port.0* %39 to %struct.mlxsw_core_port*
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %45 = call i32 %38(%struct.mlxsw_core_port* %40, i32 %41, i32 %42, i32 %43, %struct.netlink_ext_ack* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.mlxsw_core* @devlink_priv(i32) #1

declare dso_local %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port*) #1

declare dso_local i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
