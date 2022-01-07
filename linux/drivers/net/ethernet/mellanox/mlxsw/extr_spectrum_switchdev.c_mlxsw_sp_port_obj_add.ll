; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_obj_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_obj_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_obj_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_obj_add(%struct.net_device* %0, %struct.switchdev_obj* %1, %struct.switchdev_trans* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %12)
  store %struct.mlxsw_sp_port* %13, %struct.mlxsw_sp_port** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %40 [
    i32 128, label %17
    i32 129, label %34
  ]

17:                                               ; preds = %4
  %18 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %19 = call %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %18)
  store %struct.switchdev_obj_port_vlan* %19, %struct.switchdev_obj_port_vlan** %10, align 8
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %21 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %10, align 8
  %22 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %24 = call i32 @mlxsw_sp_port_vlans_add(%struct.mlxsw_sp_port* %20, %struct.switchdev_obj_port_vlan* %21, %struct.switchdev_trans* %22, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %26 = call i32 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_sp_span_respin_schedule(i32 %31)
  br label %33

33:                                               ; preds = %28, %17
  br label %43

34:                                               ; preds = %4
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %36 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %37 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %36)
  %38 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %39 = call i32 @mlxsw_sp_port_mdb_add(%struct.mlxsw_sp_port* %35, i32 %37, %struct.switchdev_trans* %38)
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %34, %33
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.switchdev_obj_port_vlan* @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

declare dso_local i32 @mlxsw_sp_port_vlans_add(%struct.mlxsw_sp_port*, %struct.switchdev_obj_port_vlan*, %struct.switchdev_trans*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @mlxsw_sp_span_respin_schedule(i32) #1

declare dso_local i32 @mlxsw_sp_port_mdb_add(%struct.mlxsw_sp_port*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
