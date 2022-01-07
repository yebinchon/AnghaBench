; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pme_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pme_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_pme_stats = type { i32, i32 }

@NUM_PME_STATUS_STATS = common dso_local global i32 0, align 4
@mlx5e_pme_status_desc = common dso_local global i32 0, align 4
@NUM_PME_ERR_STATS = common dso_local global i32 0, align 4
@mlx5e_pme_error_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_pme_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_pme_fill_stats(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_pme_stats, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlx5_get_pme_stats(i32 %11, %struct.mlx5_pme_stats* %7)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %28, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NUM_PME_STATUS_STATS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mlx5_pme_stats, %struct.mlx5_pme_stats* %7, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @mlx5e_pme_status_desc, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @MLX5E_READ_CTR64_CPU(i32 %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %22, i32* %27, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %13

31:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NUM_PME_ERR_STATS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mlx5_pme_stats, %struct.mlx5_pme_stats* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @mlx5e_pme_error_desc, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @MLX5E_READ_CTR64_CPU(i32 %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @mlx5_get_pme_stats(i32, %struct.mlx5_pme_stats*) #1

declare dso_local i32 @MLX5E_READ_CTR64_CPU(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
