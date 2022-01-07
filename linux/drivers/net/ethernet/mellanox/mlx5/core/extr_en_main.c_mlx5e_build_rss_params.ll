; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rss_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_rss_params = type { i32*, i32, i32, i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@MLX5E_INDIR_RQT_SIZE = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@tirc_default_config = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_rss_params(%struct.mlx5e_rss_params* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_rss_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5e_rss_params* %0, %struct.mlx5e_rss_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %7 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netdev_rss_key_fill(i32 %11, i32 4)
  %13 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mlx5e_build_default_indir_rqt(i32 %15, i32 %16, i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %36, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tirc_default_config, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %19

39:                                               ; preds = %19
  ret void
}

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @mlx5e_build_default_indir_rqt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
