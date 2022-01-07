; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_advertise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_link_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port_type_speed_ops* }
%struct.mlxsw_sp_port_type_speed_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@advertising = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i32, i32, i32, %struct.ethtool_link_ksettings*)* @mlxsw_sp_port_get_link_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_get_link_advertise(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i32 %3, %struct.ethtool_link_ksettings* %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethtool_link_ksettings*, align 8
  %11 = alloca %struct.mlxsw_sp_port_type_speed_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ethtool_link_ksettings* %4, %struct.ethtool_link_ksettings** %10, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %13, align 8
  store %struct.mlxsw_sp_port_type_speed_ops* %14, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %35

18:                                               ; preds = %5
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %10, align 8
  %20 = load i32, i32* @advertising, align 4
  %21 = load i32, i32* @Autoneg, align 4
  %22 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %19, i32 %20, i32 %21)
  %23 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %11, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32)** %24, align 8
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %27 = bitcast %struct.mlxsw_sp* %26 to %struct.mlxsw_sp.0*
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %10, align 8
  %31 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %25(%struct.mlxsw_sp.0* %27, i32 %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
