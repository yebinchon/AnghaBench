; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_tc_pool_bind_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_tc_pool_bind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* }
%struct.mlxsw_core_port = type opaque
%struct.mlxsw_core_port.0 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_devlink_sb_tc_pool_bind_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_tc_pool_bind_set(%struct.devlink_port* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.mlxsw_core*, align 8
  %17 = alloca %struct.mlxsw_driver*, align 8
  %18 = alloca %struct.mlxsw_core_port.0*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %19 = load %struct.devlink_port*, %struct.devlink_port** %9, align 8
  %20 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlxsw_core* @devlink_priv(i32 %21)
  store %struct.mlxsw_core* %22, %struct.mlxsw_core** %16, align 8
  %23 = load %struct.mlxsw_core*, %struct.mlxsw_core** %16, align 8
  %24 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %24, align 8
  store %struct.mlxsw_driver* %25, %struct.mlxsw_driver** %17, align 8
  %26 = load %struct.devlink_port*, %struct.devlink_port** %9, align 8
  %27 = call %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port* %26)
  store %struct.mlxsw_core_port.0* %27, %struct.mlxsw_core_port.0** %18, align 8
  %28 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %17, align 8
  %29 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %28, i32 0, i32 0
  %30 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %29, align 8
  %31 = icmp ne i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %18, align 8
  %34 = call i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %7
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %32
  %40 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %17, align 8
  %41 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %40, i32 0, i32 0
  %42 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %41, align 8
  %43 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %18, align 8
  %44 = bitcast %struct.mlxsw_core_port.0* %43 to %struct.mlxsw_core_port*
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %51 = call i32 %42(%struct.mlxsw_core_port* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %39, %36
  %53 = load i32, i32* %8, align 4
  ret i32 %53
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
