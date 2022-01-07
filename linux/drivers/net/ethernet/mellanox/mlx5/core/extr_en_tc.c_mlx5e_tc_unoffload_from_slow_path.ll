; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_unoffload_from_slow_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_unoffload_from_slow_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }
%struct.mlx5_esw_flow_attr = type { i32, i64, i32 }

@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@FDB_SLOW_PATH_CHAIN = common dso_local global i32 0, align 4
@SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_esw_flow_attr*)* @mlx5e_tc_unoffload_from_slow_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tc_unoffload_from_slow_path(%struct.mlx5_eswitch* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5_esw_flow_attr* %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5e_tc_flow*, align 8
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %5, align 8
  store %struct.mlx5_esw_flow_attr* %2, %struct.mlx5_esw_flow_attr** %6, align 8
  %7 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %8 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(%struct.mlx5_esw_flow_attr* %7, i32 %10, i32 24)
  %12 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %13 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @FDB_SLOW_PATH_CHAIN, align 4
  %18 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %21 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %22 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %23 = call i32 @mlx5e_tc_unoffload_fdb_rules(%struct.mlx5_eswitch* %20, %struct.mlx5e_tc_flow* %21, %struct.mlx5_esw_flow_attr* %22)
  %24 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %25 = load i32, i32* @SLOW, align 4
  %26 = call i32 @flow_flag_clear(%struct.mlx5e_tc_flow* %24, i32 %25)
  ret void
}

declare dso_local i32 @memcpy(%struct.mlx5_esw_flow_attr*, i32, i32) #1

declare dso_local i32 @mlx5e_tc_unoffload_fdb_rules(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @flow_flag_clear(%struct.mlx5e_tc_flow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
