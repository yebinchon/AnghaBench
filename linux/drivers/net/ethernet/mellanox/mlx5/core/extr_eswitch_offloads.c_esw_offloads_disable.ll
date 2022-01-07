; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DEVLINK_ESWITCH_ENCAP_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esw_offloads_disable(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %2, align 8
  %3 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %4 = call i32 @esw_offloads_devcom_cleanup(%struct.mlx5_eswitch* %3)
  %5 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %6 = call i32 @esw_offloads_unload_all_reps(%struct.mlx5_eswitch* %5)
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %8 = call i32 @mlx5_eswitch_disable_pf_vf_vports(%struct.mlx5_eswitch* %7)
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %10 = call i32 @esw_set_passing_vport_metadata(%struct.mlx5_eswitch* %9, i32 0)
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %12 = call i32 @esw_offloads_steering_cleanup(%struct.mlx5_eswitch* %11)
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx5_rdma_disable_roce(i32 %15)
  %17 = load i32, i32* @DEVLINK_ESWITCH_ENCAP_MODE_NONE, align 4
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  ret void
}

declare dso_local i32 @esw_offloads_devcom_cleanup(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_offloads_unload_all_reps(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_eswitch_disable_pf_vf_vports(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_set_passing_vport_metadata(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_offloads_steering_cleanup(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_rdma_disable_roce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
