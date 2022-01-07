; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve_vxlan.c_mlxsw_sp_nve_vxlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_nve_config = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vxlan_dev = type { %struct.vxlan_config }
%struct.vxlan_config = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLXSW_SP_NVE_TYPE_VXLAN = common dso_local global i32 0, align 4
@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_nve*, %struct.net_device*, %struct.mlxsw_sp_nve_config*)* @mlxsw_sp_nve_vxlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_vxlan_config(%struct.mlxsw_sp_nve* %0, %struct.net_device* %1, %struct.mlxsw_sp_nve_config* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_nve*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp_nve_config*, align 8
  %7 = alloca %struct.vxlan_dev*, align 8
  %8 = alloca %struct.vxlan_config*, align 8
  store %struct.mlxsw_sp_nve* %0, %struct.mlxsw_sp_nve** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.mlxsw_sp_nve_config* %2, %struct.mlxsw_sp_nve_config** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %7, align 8
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %12 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %11, i32 0, i32 0
  store %struct.vxlan_config* %12, %struct.vxlan_config** %8, align 8
  %13 = load i32, i32* @MLXSW_SP_NVE_TYPE_VXLAN, align 4
  %14 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %17 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %22 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %27 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VXLAN_F_LEARN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @RT_TABLE_MAIN, align 4
  %37 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %40 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %43 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %52 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
