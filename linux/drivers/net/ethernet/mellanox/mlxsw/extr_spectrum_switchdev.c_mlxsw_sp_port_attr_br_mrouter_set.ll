; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_mrouter_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_mrouter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_trans*, %struct.net_device*, i32)* @mlxsw_sp_port_attr_br_mrouter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_attr_br_mrouter_set(%struct.mlxsw_sp_port* %0, %struct.switchdev_trans* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.switchdev_trans* %1, %struct.switchdev_trans** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %10, align 8
  %15 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %16 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %22, %struct.net_device* %23)
  store %struct.mlxsw_sp_bridge_device* %24, %struct.mlxsw_sp_bridge_device** %11, align 8
  %25 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %26 = icmp ne %struct.mlxsw_sp_bridge_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %36 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @mlxsw_sp_bridge_mrouter_update_mdb(%struct.mlxsw_sp* %35, %struct.mlxsw_sp_bridge_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %11, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %27, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_mrouter_update_mdb(%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
