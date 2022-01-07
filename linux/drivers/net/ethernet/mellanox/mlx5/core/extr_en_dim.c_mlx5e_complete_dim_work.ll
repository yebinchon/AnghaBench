; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dim.c_mlx5e_complete_dim_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dim.c_mlx5e_complete_dim_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_cq = type { i32 }
%struct.dim_cq_moder = type { i32, i32 }

@DIM_START_MEASURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dim*, i64, %struct.mlx5_core_dev*, %struct.mlx5_core_cq*)* @mlx5e_complete_dim_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_complete_dim_work(%struct.dim* %0, i64 %1, %struct.mlx5_core_dev* %2, %struct.mlx5_core_cq* %3) #0 {
  %5 = alloca %struct.dim_cq_moder, align 4
  %6 = alloca %struct.dim*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_core_cq*, align 8
  %9 = bitcast %struct.dim_cq_moder* %5 to i64*
  store i64 %1, i64* %9, align 4
  store %struct.dim* %0, %struct.dim** %6, align 8
  store %struct.mlx5_core_dev* %2, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_cq* %3, %struct.mlx5_core_cq** %8, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %11 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %8, align 8
  %12 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev* %10, %struct.mlx5_core_cq* %11, i32 %13, i32 %15)
  %17 = load i32, i32* @DIM_START_MEASURE, align 4
  %18 = load %struct.dim*, %struct.dim** %6, align 8
  %19 = getelementptr inbounds %struct.dim, %struct.dim* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev*, %struct.mlx5_core_cq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
