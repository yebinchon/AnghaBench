; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_offload_to_slow_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_offload_to_slow_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_esw_flow_attr = type { i32, i64, i32 }

@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@FDB_SLOW_PATH_CHAIN = common dso_local global i32 0, align 4
@SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*)* @mlx5e_tc_offload_to_slow_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @mlx5e_tc_offload_to_slow_path(%struct.mlx5_eswitch* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5_flow_spec* %2, %struct.mlx5_esw_flow_attr* %3) #0 {
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5e_tc_flow*, align 8
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %9 = alloca %struct.mlx5_flow_handle*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %6, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %7, align 8
  store %struct.mlx5_esw_flow_attr* %3, %struct.mlx5_esw_flow_attr** %8, align 8
  %10 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %11 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(%struct.mlx5_esw_flow_attr* %10, i32 %13, i32 24)
  %15 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %16 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FDB_SLOW_PATH_CHAIN, align 4
  %21 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %24 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %25 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %26 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %27 = call %struct.mlx5_flow_handle* @mlx5e_tc_offload_fdb_rules(%struct.mlx5_eswitch* %23, %struct.mlx5e_tc_flow* %24, %struct.mlx5_flow_spec* %25, %struct.mlx5_esw_flow_attr* %26)
  store %struct.mlx5_flow_handle* %27, %struct.mlx5_flow_handle** %9, align 8
  %28 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %29 = call i32 @IS_ERR(%struct.mlx5_flow_handle* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %33 = load i32, i32* @SLOW, align 4
  %34 = call i32 @flow_flag_set(%struct.mlx5e_tc_flow* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %4
  %36 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  ret %struct.mlx5_flow_handle* %36
}

declare dso_local i32 @memcpy(%struct.mlx5_esw_flow_attr*, i32, i32) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5e_tc_offload_fdb_rules(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @flow_flag_set(%struct.mlx5e_tc_flow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
