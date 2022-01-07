; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_create_lag_demux_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_create_lag_demux_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_table_attr = type { i32, i32 }

@FS_FT_OP_MOD_LAG_DEMUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_table* @mlx5_create_lag_demux_flow_table(%struct.mlx5_flow_namespace* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_flow_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_table_attr, align 4
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.mlx5_flow_table_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %14 = load i32, i32* @FS_FT_OP_MOD_LAG_DEMUX, align 4
  %15 = call %struct.mlx5_flow_table* @__mlx5_create_flow_table(%struct.mlx5_flow_namespace* %13, %struct.mlx5_flow_table_attr* %7, i32 %14, i32 0)
  ret %struct.mlx5_flow_table* %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_table* @__mlx5_create_flow_table(%struct.mlx5_flow_namespace*, %struct.mlx5_flow_table_attr*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
