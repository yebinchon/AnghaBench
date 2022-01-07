; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_port_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021q_port_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Can not enslave a VLAN device to a VLAN-aware bridge\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_port*, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_8021q_port_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_8021q_port_join(%struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_port* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %6, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %7, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %7, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @is_vlan_dev(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @mlxsw_sp_port_vlan_router_leave(%struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %27, %20
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @is_vlan_dev(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_port_vlan_router_leave(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
