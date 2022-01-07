; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.dim_cq_moder, i32, %struct.dim_cq_moder }
%struct.dim_cq_moder = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32 }

@cq_moderation = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ethtool_get_coalesce(%struct.mlx5e_priv* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.dim_cq_moder*, align 8
  %7 = alloca %struct.dim_cq_moder*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @cq_moderation, align 4
  %12 = call i32 @MLX5_CAP_GEN(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store %struct.dim_cq_moder* %21, %struct.dim_cq_moder** %6, align 8
  %22 = load %struct.dim_cq_moder*, %struct.dim_cq_moder** %6, align 8
  %23 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dim_cq_moder*, %struct.dim_cq_moder** %6, align 8
  %28 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store %struct.dim_cq_moder* %42, %struct.dim_cq_moder** %7, align 8
  %43 = load %struct.dim_cq_moder*, %struct.dim_cq_moder** %7, align 8
  %44 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.dim_cq_moder*, %struct.dim_cq_moder** %7, align 8
  %49 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %17, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
