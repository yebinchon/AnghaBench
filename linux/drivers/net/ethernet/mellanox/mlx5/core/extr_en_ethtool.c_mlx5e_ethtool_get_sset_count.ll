; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mlx5e_priv*)* }
%struct.mlx5e_priv = type { i32 }

@mlx5e_num_stats_grps = common dso_local global i32 0, align 4
@mlx5e_stats_grps = common dso_local global %struct.TYPE_2__* null, align 8
@MLX5E_NUM_PFLAGS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ethtool_get_sset_count(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %35 [
    i32 129, label %9
    i32 130, label %30
    i32 128, label %32
  ]

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @mlx5e_num_stats_grps, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx5e_stats_grps, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %19, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %22 = call i32 %20(%struct.mlx5e_priv* %21)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @MLX5E_NUM_PFLAGS, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %34 = call i32 @mlx5e_self_test_num(%struct.mlx5e_priv* %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32, %30, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mlx5e_self_test_num(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
