; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_empty_always_hit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_empty_always_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_build = type { i32, i32*, i64, i32 }

@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4
@dr_ste_build_empty_always_hit_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_build_empty_always_hit(%struct.mlx5dr_ste_build* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_ste_build*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5dr_ste_build* %0, %struct.mlx5dr_ste_build** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %9 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.mlx5dr_ste_build*, %struct.mlx5dr_ste_build** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_ste_build, %struct.mlx5dr_ste_build* %13, i32 0, i32 1
  store i32* @dr_ste_build_empty_always_hit_tag, i32** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
