; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_fdb_notify_mac_uc_tunnel_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c___mlxsw_sp_fdb_notify_mac_uc_tunnel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_fid*)* }
%struct.vxlan_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BR_LEARNING = common dso_local global i32 0, align 4
@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fid*, i32, %struct.net_device**, i32*, i32*)* @__mlxsw_sp_fdb_notify_mac_uc_tunnel_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_fdb_notify_mac_uc_tunnel_process(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid* %1, i32 %2, %struct.net_device** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_fid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vxlan_dev*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp_fid* %1, %struct.mlxsw_sp_fid** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.net_device** %3, %struct.net_device*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %21 = call i32 @mlxsw_sp_fid_nve_ifindex(%struct.mlxsw_sp_fid* %20, i32* %17)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %7, align 4
  br label %112

26:                                               ; preds = %6
  %27 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid* %27, i32* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %7, align 4
  br label %112

34:                                               ; preds = %26
  %35 = load i32, i32* %17, align 4
  %36 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %16, align 8
  %37 = load %struct.net_device*, %struct.net_device** %16, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %112

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %16, align 8
  %44 = load %struct.net_device**, %struct.net_device*** %11, align 8
  store %struct.net_device* %43, %struct.net_device** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %16, align 8
  %46 = call i32 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %112

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.net_device*, %struct.net_device** %16, align 8
  %56 = load i32, i32* @BR_LEARNING, align 4
  %57 = call i32 @br_port_flag_is_set(%struct.net_device* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %112

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load %struct.net_device*, %struct.net_device** %16, align 8
  %67 = call i64 @netif_is_vxlan(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.net_device*, %struct.net_device** %16, align 8
  %71 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %70)
  store %struct.vxlan_dev* %71, %struct.vxlan_dev** %19, align 8
  %72 = load %struct.vxlan_dev*, %struct.vxlan_dev** %19, align 8
  %73 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VXLAN_F_LEARN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %112

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %65, %62
  %84 = load %struct.net_device*, %struct.net_device** %16, align 8
  %85 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %84)
  store %struct.net_device* %85, %struct.net_device** %15, align 8
  %86 = load %struct.net_device*, %struct.net_device** %15, align 8
  %87 = icmp ne %struct.net_device* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %112

91:                                               ; preds = %83
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.net_device*, %struct.net_device** %15, align 8
  %96 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %94, %struct.net_device* %95)
  store %struct.mlxsw_sp_bridge_device* %96, %struct.mlxsw_sp_bridge_device** %14, align 8
  %97 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %14, align 8
  %98 = icmp ne %struct.mlxsw_sp_bridge_device* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %112

102:                                              ; preds = %91
  %103 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %14, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_fid*)** %106, align 8
  %108 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %14, align 8
  %109 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %9, align 8
  %110 = call i32 %107(%struct.mlxsw_sp_bridge_device* %108, %struct.mlxsw_sp_fid* %109)
  %111 = load i32*, i32** %12, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %102, %99, %88, %79, %59, %48, %39, %32, %24
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @mlxsw_sp_fid_nve_ifindex(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local i32 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @br_port_flag_is_set(%struct.net_device*, i32) #1

declare dso_local i64 @netif_is_vxlan(%struct.net_device*) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
