; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_check_vport_match_metadata_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_check_vport_match_metadata_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }

@esw_uplink_ingress_acl = common dso_local global i32 0, align 4
@fdb_to_vport_reg_c_id = common dso_local global i32 0, align 4
@MLX5_FDB_TO_VPORT_REG_C_0 = common dso_local global i32 0, align 4
@flow_source = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*)* @esw_check_vport_match_metadata_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_check_vport_match_metadata_supported(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  %4 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @esw_uplink_ingress_acl, align 4
  %8 = call i32 @MLX5_CAP_ESW(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @fdb_to_vport_reg_c_id, align 4
  %16 = call i32 @MLX5_CAP_ESW_FLOWTABLE(i32 %14, i32 %15)
  %17 = load i32, i32* @MLX5_FDB_TO_VPORT_REG_C_0, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %43

21:                                               ; preds = %11
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @flow_source, align 4
  %26 = call i32 @MLX5_CAP_ESW_FLOWTABLE(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mlx5_core_is_ecpf_esw_manager(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mlx5_ecpf_vport_exists(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %28, %20, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @MLX5_CAP_ESW(i32, i32) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE(i32, i32) #1

declare dso_local i64 @mlx5_core_is_ecpf_esw_manager(i32) #1

declare dso_local i64 @mlx5_ecpf_vport_exists(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
