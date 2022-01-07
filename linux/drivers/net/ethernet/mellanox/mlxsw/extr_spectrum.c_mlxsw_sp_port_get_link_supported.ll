; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port_type_speed_ops* }
%struct.mlxsw_sp_port_type_speed_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.1*, i32, %struct.ethtool_link_ksettings*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp.1 = type opaque
%struct.ethtool_link_ksettings = type opaque
%struct.ethtool_link_ksettings.2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@supported = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i32, i32, %struct.ethtool_link_ksettings.2*)* @mlxsw_sp_port_get_link_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_get_link_supported(%struct.mlxsw_sp* %0, i32 %1, i32 %2, %struct.ethtool_link_ksettings.2* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethtool_link_ksettings.2*, align 8
  %9 = alloca %struct.mlxsw_sp_port_type_speed_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ethtool_link_ksettings.2* %3, %struct.ethtool_link_ksettings.2** %8, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  store %struct.mlxsw_sp_port_type_speed_ops* %12, %struct.mlxsw_sp_port_type_speed_ops** %9, align 8
  %13 = load %struct.ethtool_link_ksettings.2*, %struct.ethtool_link_ksettings.2** %8, align 8
  %14 = load i32, i32* @supported, align 4
  %15 = load i32, i32* @Asym_Pause, align 4
  %16 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings.2* %13, i32 %14, i32 %15)
  %17 = load %struct.ethtool_link_ksettings.2*, %struct.ethtool_link_ksettings.2** %8, align 8
  %18 = load i32, i32* @supported, align 4
  %19 = load i32, i32* @Autoneg, align 4
  %20 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings.2* %17, i32 %18, i32 %19)
  %21 = load %struct.ethtool_link_ksettings.2*, %struct.ethtool_link_ksettings.2** %8, align 8
  %22 = load i32, i32* @supported, align 4
  %23 = load i32, i32* @Pause, align 4
  %24 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings.2* %21, i32 %22, i32 %23)
  %25 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %9, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %25, i32 0, i32 1
  %27 = load i32 (%struct.mlxsw_sp.1*, i32, %struct.ethtool_link_ksettings*)*, i32 (%struct.mlxsw_sp.1*, i32, %struct.ethtool_link_ksettings*)** %26, align 8
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %29 = bitcast %struct.mlxsw_sp* %28 to %struct.mlxsw_sp.1*
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ethtool_link_ksettings.2*, %struct.ethtool_link_ksettings.2** %8, align 8
  %32 = bitcast %struct.ethtool_link_ksettings.2* %31 to %struct.ethtool_link_ksettings*
  %33 = call i32 %27(%struct.mlxsw_sp.1* %29, i32 %30, %struct.ethtool_link_ksettings* %32)
  %34 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %9, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32)** %35, align 8
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %38 = bitcast %struct.mlxsw_sp* %37 to %struct.mlxsw_sp.0*
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ethtool_link_ksettings.2*, %struct.ethtool_link_ksettings.2** %8, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings.2, %struct.ethtool_link_ksettings.2* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %36(%struct.mlxsw_sp.0* %38, i32 %39, i32 %40, i32 %44)
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings.2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
