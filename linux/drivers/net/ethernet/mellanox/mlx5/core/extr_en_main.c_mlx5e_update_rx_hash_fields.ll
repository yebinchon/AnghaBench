; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_update_rx_hash_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_update_rx_hash_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tirc_config = type { i32 }

@tirc_default_config = common dso_local global %struct.mlx5e_tirc_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_tirc_config*, i32, i32)* @mlx5e_update_rx_hash_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_update_rx_hash_fields(%struct.mlx5e_tirc_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_tirc_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_tirc_config* %0, %struct.mlx5e_tirc_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** %4, align 8
  %8 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** @tirc_default_config, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %8, i64 %10
  %12 = bitcast %struct.mlx5e_tirc_config* %7 to i8*
  %13 = bitcast %struct.mlx5e_tirc_config* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mlx5e_tirc_config*, %struct.mlx5e_tirc_config** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_tirc_config, %struct.mlx5e_tirc_config* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
