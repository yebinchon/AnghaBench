; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_apply_vport_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_apply_vport_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i64, i32 }
%struct.mlx5_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MLX5_VPORT_STATE_OP_MOD_ESW_VPORT = common dso_local global i32 0, align 4
@SET_VLAN_STRIP = common dso_local global i32 0, align 4
@SET_VLAN_INSERT = common dso_local global i32 0, align 4
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_apply_vport_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_apply_vport_conf(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %7 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %93

16:                                               ; preds = %2
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MLX5_VPORT_STATE_OP_MOD_ESW_VPORT, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mlx5_modify_vport_admin_state(i32 %19, i32 %20, i64 %21, i32 1, i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %16
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlx5_modify_nic_vport_mac_address(i32 %32, i64 %33, i32 %37)
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlx5_modify_nic_vport_node_guid(i32 %41, i64 %42, i32 %46)
  br label %48

48:                                               ; preds = %29, %16
  %49 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @SET_VLAN_STRIP, align 4
  %62 = load i32, i32* @SET_VLAN_INSERT, align 4
  %63 = or i32 %61, %62
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  store i32 %66, i32* %6, align 4
  %67 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @modify_esw_vport_cvlan(i32 %69, i64 %70, i32 %74, i32 %78, i32 %79)
  %81 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %82 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %65
  %87 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %88 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %89 = call i32 @esw_vport_ingress_config(%struct.mlx5_eswitch* %87, %struct.mlx5_vport* %88)
  %90 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %91 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %92 = call i32 @esw_vport_egress_config(%struct.mlx5_eswitch* %90, %struct.mlx5_vport* %91)
  br label %93

93:                                               ; preds = %15, %86, %65
  ret void
}

declare dso_local i32 @mlx5_modify_vport_admin_state(i32, i32, i64, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_mac_address(i32, i64, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_node_guid(i32, i64, i32) #1

declare dso_local i32 @modify_esw_vport_cvlan(i32, i64, i32, i32, i32) #1

declare dso_local i32 @esw_vport_ingress_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @esw_vport_egress_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
