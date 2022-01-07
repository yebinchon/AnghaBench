; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_tx_cq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_tx_cq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_cq_param = type { i32, i8* }

@log_cq_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_tx_cq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_cq_param* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_cq_param*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_cq_param* %2, %struct.mlx5e_cq_param** %6, align 8
  %8 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %9 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @log_cq_size, align 4
  %14 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MLX5_SET(i8* %11, i8* %12, i32 %13, i32 %16)
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %19 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %20 = call i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv* %18, %struct.mlx5e_cq_param* %19)
  %21 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_build_common_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_cq_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
