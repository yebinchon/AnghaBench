; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_vxlan_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_vxlan_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_bridge_vxlan_join(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.net_device* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %15, %struct.net_device* %16)
  store %struct.mlxsw_sp_bridge_device* %17, %struct.mlxsw_sp_bridge_device** %12, align 8
  %18 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %19 = icmp ne %struct.mlxsw_sp_bridge_device* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %38

27:                                               ; preds = %5
  %28 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*)** %31, align 8
  %33 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %37 = call i32 %32(%struct.mlxsw_sp_bridge_device* %33, %struct.net_device* %34, i32 %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
