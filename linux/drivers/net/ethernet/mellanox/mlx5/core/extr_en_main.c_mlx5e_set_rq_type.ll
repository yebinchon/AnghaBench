; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_rq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_rq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }

@MLX5E_PFLAG_RX_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_set_rq_type(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %7 = call i64 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev* %5, %struct.mlx5e_params* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %11 = load i32, i32* @MLX5E_PFLAG_RX_STRIDING_RQ, align 4
  %12 = call i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 4
  br label %18

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i64 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
