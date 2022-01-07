; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_fid_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_vlan_fid_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_fid*, i32, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32, %struct.netlink_ext_ack*)* }
%struct.netlink_ext_ack = type { i32 }

@MLXSW_SP_FLOOD_TYPE_UC = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_MC = common dso_local global i32 0, align 4
@MLXSW_SP_FLOOD_TYPE_BC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_bridge_port*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_vlan_fid_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vlan_fid_join(%struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_bridge_port* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_fid*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %5, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %14, i32 0, i32 2
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %15, align 8
  store %struct.mlxsw_sp_port* %16, %struct.mlxsw_sp_port** %8, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %23, i32 0, i32 1
  %25 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %24, align 8
  store %struct.mlxsw_sp_bridge_device* %25, %struct.mlxsw_sp_bridge_device** %9, align 8
  %26 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32, %struct.netlink_ext_ack*)*, %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32, %struct.netlink_ext_ack*)** %29, align 8
  %31 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %34 = call %struct.mlxsw_sp_fid* %30(%struct.mlxsw_sp_bridge_device* %31, i32 %32, %struct.netlink_ext_ack* %33)
  store %struct.mlxsw_sp_fid* %34, %struct.mlxsw_sp_fid** %12, align 8
  %35 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %36 = call i64 @IS_ERR(%struct.mlxsw_sp_fid* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %40 = call i32 @PTR_ERR(%struct.mlxsw_sp_fid* %39)
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %3
  %42 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %43 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_UC, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BR_FLOOD, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %42, i32 %43, i32 %44, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %99

54:                                               ; preds = %41
  %55 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %56 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %59 = call i32 @mlxsw_sp_mc_flood(%struct.mlxsw_sp_bridge_port* %58)
  %60 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %55, i32 %56, i32 %57, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %94

64:                                               ; preds = %54
  %65 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %66 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %65, i32 %66, i32 %67, i32 1)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %89

72:                                               ; preds = %64
  %73 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %74 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp_fid* %73, %struct.mlxsw_sp_port* %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %82 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %82, i32 0, i32 0
  store %struct.mlxsw_sp_fid* %81, %struct.mlxsw_sp_fid** %83, align 8
  store i32 0, i32* %4, align 4
  br label %103

84:                                               ; preds = %79
  %85 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %86 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_BC, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %85, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %84, %71
  %90 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %91 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_MC, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %90, i32 %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %89, %63
  %95 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %96 = load i32, i32* @MLXSW_SP_FLOOD_TYPE_UC, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %95, i32 %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %94, %53
  %100 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %12, align 8
  %101 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %80, %38
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_mc_flood(%struct.mlxsw_sp_bridge_port*) #1

declare dso_local i32 @mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
