; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_xdpsq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_xdpsq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_sq_param = type { i32, i8* }

@log_wq_sz = common dso_local global i32 0, align 4
@MLX5E_PFLAG_XDP_TX_MPWQE = common dso_local global i32 0, align 4
@wq = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_xdpsq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_sq_param* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_sq_param*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %6, align 8
  %9 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @MLX5_ADDR_OF(i8* %12, i8* %13, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %19 = call i32 @mlx5e_build_sq_param_common(%struct.mlx5e_priv* %17, %struct.mlx5e_sq_param* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @log_wq_sz, align 4
  %23 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MLX5_SET(i8* %20, i8* %21, i32 %22, i32 %25)
  %27 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %28 = load i32, i32* @MLX5E_PFLAG_XDP_TX_MPWQE, align 4
  %29 = call i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %27, i32 %28)
  %30 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5e_build_sq_param_common(%struct.mlx5e_priv*, %struct.mlx5e_sq_param*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
