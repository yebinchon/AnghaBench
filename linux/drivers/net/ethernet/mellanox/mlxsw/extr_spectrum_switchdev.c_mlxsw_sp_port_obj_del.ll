; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_obj_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_obj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*)* @mlxsw_sp_port_obj_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_obj_del(%struct.net_device* %0, %struct.switchdev_obj* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_obj*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mlxsw_sp_port* %8, %struct.mlxsw_sp_port** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %10 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %22 [
    i32 128, label %12
    i32 129, label %17
  ]

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %15 = call i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %14)
  %16 = call i32 @mlxsw_sp_port_vlans_del(%struct.mlxsw_sp_port* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %19 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %20 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %19)
  %21 = call i32 @mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port* %18, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %17, %12
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlxsw_sp_span_respin_schedule(i32 %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_vlans_del(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

declare dso_local i32 @mlxsw_sp_port_mdb_del(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

declare dso_local i32 @mlxsw_sp_span_respin_schedule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
