; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vlan_router_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_port_vlan_router_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_vlan = type { %struct.mlxsw_sp_fid*, i32, %struct.mlxsw_sp_port* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_rif_params = type { %struct.net_device* }
%struct.mlxsw_sp_rif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_rif*, %struct.netlink_ext_ack*)* }

@BR_STATE_FORWARDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port_vlan*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_port_vlan_router_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_vlan_router_join(%struct.mlxsw_sp_port_vlan* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_rif_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_rif*, align 8
  %13 = alloca %struct.mlxsw_sp_fid*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_port_vlan* %0, %struct.mlxsw_sp_port_vlan** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %15, i32 0, i32 2
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %16, align 8
  store %struct.mlxsw_sp_port* %17, %struct.mlxsw_sp_port** %8, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %19, align 8
  store %struct.mlxsw_sp* %20, %struct.mlxsw_sp** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %10, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %22, %struct.net_device** %21, align 8
  %23 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %27 = call i32 @mlxsw_sp_rif_subport_params_init(%struct.mlxsw_sp_rif_params* %10, %struct.mlxsw_sp_port_vlan* %26)
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %30 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_subport_get(%struct.mlxsw_sp* %28, %struct.mlxsw_sp_rif_params* %10, %struct.netlink_ext_ack* %29)
  store %struct.mlxsw_sp_rif* %30, %struct.mlxsw_sp_rif** %12, align 8
  %31 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %32 = call i64 @IS_ERR(%struct.mlxsw_sp_rif* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %36 = call i32 @PTR_ERR(%struct.mlxsw_sp_rif* %35)
  store i32 %36, i32* %4, align 4
  br label %87

37:                                               ; preds = %3
  %38 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_rif*, %struct.netlink_ext_ack*)*, %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_rif*, %struct.netlink_ext_ack*)** %41, align 8
  %43 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %45 = call %struct.mlxsw_sp_fid* %42(%struct.mlxsw_sp_rif* %43, %struct.netlink_ext_ack* %44)
  store %struct.mlxsw_sp_fid* %45, %struct.mlxsw_sp_fid** %13, align 8
  %46 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp_fid* %46, %struct.mlxsw_sp_port* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %81

53:                                               ; preds = %37
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %54, i32 %55, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %76

60:                                               ; preds = %53
  %61 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @BR_STATE_FORWARDING, align 4
  %64 = call i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port* %61, i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %70 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %5, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %70, i32 0, i32 0
  store %struct.mlxsw_sp_fid* %69, %struct.mlxsw_sp_fid** %71, align 8
  store i32 0, i32* %4, align 4
  br label %87

72:                                               ; preds = %67
  %73 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %72, %59
  %77 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %78 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid* %77, %struct.mlxsw_sp_port* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %52
  %82 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %83 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %82)
  %84 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %85 = call i32 @mlxsw_sp_rif_subport_put(%struct.mlxsw_sp_rif* %84)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %68, %34
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @mlxsw_sp_rif_subport_params_init(%struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_port_vlan*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_subport_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif_params*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_fid_port_vid_map(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_stp_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_rif_subport_put(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
