; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_sq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_sq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_sq_param = type { i8* }

@log_wq_sz = common dso_local global i32 0, align 4
@wq = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_sq_param*)* @mlx5e_build_sq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_sq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_sq_param* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_sq_param*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %6, align 8
  %10 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = call i8* @MLX5_ADDR_OF(i8* %13, i8* %14, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mlx5_geneve_tx_allowed(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MLX5_IPSEC_DEV(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %3
  %32 = phi i1 [ true, %3 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %35 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %36 = call i32 @mlx5e_build_sq_param_common(%struct.mlx5e_priv* %34, %struct.mlx5e_sq_param* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @log_wq_sz, align 4
  %40 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MLX5_SET(i8* %37, i8* %38, i32 %39, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @MLX5_SET(i8* %44, i8* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i64 @mlx5_geneve_tx_allowed(i32) #1

declare dso_local i32 @MLX5_IPSEC_DEV(i32) #1

declare dso_local i32 @mlx5e_build_sq_param_common(%struct.mlx5e_priv*, %struct.mlx5e_sq_param*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
