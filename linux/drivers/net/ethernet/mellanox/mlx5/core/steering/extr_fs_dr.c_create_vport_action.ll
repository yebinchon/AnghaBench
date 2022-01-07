; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_vport_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_vport_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { i32 }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5_flow_rule = type { %struct.mlx5_flow_destination }
%struct.mlx5_flow_destination = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX5_FLOW_DEST_VPORT_VHCA_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_action* (%struct.mlx5dr_domain*, %struct.mlx5_flow_rule*)* @create_vport_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_action* @create_vport_action(%struct.mlx5dr_domain* %0, %struct.mlx5_flow_rule* %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5_flow_rule*, align 8
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  store %struct.mlx5_flow_rule* %1, %struct.mlx5_flow_rule** %4, align 8
  %6 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %6, i32 0, i32 0
  store %struct.mlx5_flow_destination* %7, %struct.mlx5_flow_destination** %5, align 8
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %9 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MLX5_FLOW_DEST_VPORT_VHCA_ID, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mlx5dr_action* @mlx5dr_action_create_dest_vport(%struct.mlx5dr_domain* %8, i32 %12, i32 %18, i32 %22)
  ret %struct.mlx5dr_action* %23
}

declare dso_local %struct.mlx5dr_action* @mlx5dr_action_create_dest_vport(%struct.mlx5dr_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
