; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_priv = type { i32 }

@MLX5E_NUM_PFLAGS = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@mlx5e_priv_flags = common dso_local global %struct.TYPE_2__* null, align 8
@mlx5e_self_tests = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ethtool_get_strings(%struct.mlx5e_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %59 [
    i32 130, label %9
    i32 128, label %32
    i32 129, label %55
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MLX5E_NUM_PFLAGS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlx5e_priv_flags, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32* %20, i32 %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %10

31:                                               ; preds = %10
  br label %59

32:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %36 = call i32 @mlx5e_self_test_num(%struct.mlx5e_priv* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32*, i32** @mlx5e_self_tests, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32* %44, i32 %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %33

54:                                               ; preds = %33
  br label %59

55:                                               ; preds = %3
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @mlx5e_fill_stats_strings(%struct.mlx5e_priv* %56, i32* %57)
  br label %59

59:                                               ; preds = %3, %55, %54, %31
  ret void
}

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @mlx5e_self_test_num(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_fill_stats_strings(%struct.mlx5e_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
