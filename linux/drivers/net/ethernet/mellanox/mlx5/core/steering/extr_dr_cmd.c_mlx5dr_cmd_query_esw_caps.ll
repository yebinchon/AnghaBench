; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_cmd.c_mlx5dr_cmd_query_esw_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_cmd.c_mlx5dr_cmd_query_esw_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5dr_esw_caps = type { i32, i8*, i8*, i8*, i8* }

@sw_steering_fdb_action_drop_icm_address_rx = common dso_local global i32 0, align 4
@sw_steering_fdb_action_drop_icm_address_tx = common dso_local global i32 0, align 4
@sw_steering_uplink_icm_address_rx = common dso_local global i32 0, align 4
@sw_steering_uplink_icm_address_tx = common dso_local global i32 0, align 4
@sw_owner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_cmd_query_esw_caps(%struct.mlx5_core_dev* %0, %struct.mlx5dr_esw_caps* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5dr_esw_caps*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5dr_esw_caps* %1, %struct.mlx5dr_esw_caps** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @sw_steering_fdb_action_drop_icm_address_rx, align 4
  %7 = call i8* @MLX5_CAP64_ESW_FLOWTABLE(%struct.mlx5_core_dev* %5, i32 %6)
  %8 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %8, i32 0, i32 4
  store i8* %7, i8** %9, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = load i32, i32* @sw_steering_fdb_action_drop_icm_address_tx, align 4
  %12 = call i8* @MLX5_CAP64_ESW_FLOWTABLE(%struct.mlx5_core_dev* %10, i32 %11)
  %13 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load i32, i32* @sw_steering_uplink_icm_address_rx, align 4
  %17 = call i8* @MLX5_CAP64_ESW_FLOWTABLE(%struct.mlx5_core_dev* %15, i32 %16)
  %18 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = load i32, i32* @sw_steering_uplink_icm_address_tx, align 4
  %22 = call i8* @MLX5_CAP64_ESW_FLOWTABLE(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = load i32, i32* @sw_owner, align 4
  %27 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = load %struct.mlx5dr_esw_caps*, %struct.mlx5dr_esw_caps** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_esw_caps, %struct.mlx5dr_esw_caps* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret i32 0
}

declare dso_local i8* @MLX5_CAP64_ESW_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
