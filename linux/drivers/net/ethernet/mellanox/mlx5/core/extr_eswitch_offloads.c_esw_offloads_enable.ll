; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@reformat = common dso_local global i32 0, align 4
@decap = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_ENCAP_MODE_BASIC = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_ENCAP_MODE_NONE = common dso_local global i32 0, align 4
@MLX5_VPORT_UC_ADDR_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esw_offloads_enable(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  %5 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @reformat, align 4
  %9 = call i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @decap, align 4
  %16 = call i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @DEVLINK_ESWITCH_ENCAP_MODE_BASIC, align 4
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  br label %28

23:                                               ; preds = %11, %1
  %24 = load i32, i32* @DEVLINK_ESWITCH_ENCAP_MODE_NONE, align 4
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlx5_rdma_enable_roce(i32 %31)
  %33 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %34 = call i32 @esw_offloads_steering_init(%struct.mlx5_eswitch* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %68

38:                                               ; preds = %28
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %40 = call i32 @esw_set_passing_vport_metadata(%struct.mlx5_eswitch* %39, i32 1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %65

44:                                               ; preds = %38
  %45 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %46 = load i32, i32* @MLX5_VPORT_UC_ADDR_CHANGE, align 4
  %47 = call i32 @mlx5_eswitch_enable_pf_vf_vports(%struct.mlx5_eswitch* %45, i32 %46)
  %48 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %49 = call i32 @esw_offloads_load_all_reps(%struct.mlx5_eswitch* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %55 = call i32 @esw_offloads_devcom_init(%struct.mlx5_eswitch* %54)
  %56 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_init(i32* %58)
  store i32 0, i32* %2, align 4
  br label %74

60:                                               ; preds = %52
  %61 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %62 = call i32 @mlx5_eswitch_disable_pf_vf_vports(%struct.mlx5_eswitch* %61)
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %64 = call i32 @esw_set_passing_vport_metadata(%struct.mlx5_eswitch* %63, i32 0)
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %67 = call i32 @esw_offloads_steering_cleanup(%struct.mlx5_eswitch* %66)
  br label %68

68:                                               ; preds = %65, %37
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlx5_rdma_disable_roce(i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %53
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @mlx5_rdma_enable_roce(i32) #1

declare dso_local i32 @esw_offloads_steering_init(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_set_passing_vport_metadata(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mlx5_eswitch_enable_pf_vf_vports(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_offloads_load_all_reps(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_offloads_devcom_init(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlx5_eswitch_disable_pf_vf_vports(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_offloads_steering_cleanup(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_rdma_disable_roce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
