; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_switch_to_host_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_switch_to_host_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5e_dcbx }
%struct.mlx5e_dcbx = type { i64 }

@MLX5E_DCBX_PARAM_VER_OPER_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_dcbnl_switch_to_host_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_switch_to_host_mode(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_dcbx*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 1
  store %struct.mlx5e_dcbx* %7, %struct.mlx5e_dcbx** %4, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %4, align 8
  %12 = call i32 @MLX5_CAP_GEN(i32 %10, %struct.mlx5e_dcbx* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_HOST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %24 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_HOST, align 8
  %25 = call i32 @mlx5e_dcbnl_set_dcbx_mode(%struct.mlx5e_priv* %23, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_HOST, align 8
  %32 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28, %21, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @MLX5_CAP_GEN(i32, %struct.mlx5e_dcbx*) #1

declare dso_local i32 @mlx5e_dcbnl_set_dcbx_mode(%struct.mlx5e_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
