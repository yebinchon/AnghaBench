; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pcie_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pcie_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pcie_performance_group = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_COUNTERS = common dso_local global i32 0, align 4
@pcie_perf_stats_desc = common dso_local global i32 0, align 4
@tx_overflow_buffer_pkt = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_COUNTERS64 = common dso_local global i32 0, align 4
@pcie_perf_stats_desc64 = common dso_local global i32 0, align 4
@pcie_outbound_stalled = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_STALL_COUNTERS = common dso_local global i32 0, align 4
@pcie_perf_stall_stats_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_pcie_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_pcie_fill_stats(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @pcie_performance_group, align 4
  %12 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NUM_PCIE_PERF_COUNTERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @pcie_perf_stats_desc, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @MLX5E_READ_CTR32_BE(i32* %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @tx_overflow_buffer_pkt, align 4
  %41 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NUM_PCIE_PERF_COUNTERS64, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* @pcie_perf_stats_desc64, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @MLX5E_READ_CTR64_BE(i32* %52, i32 %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %44

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @pcie_outbound_stalled, align 4
  %70 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @NUM_PCIE_PERF_STALL_COUNTERS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %79 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* @pcie_perf_stall_stats_desc, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @MLX5E_READ_CTR32_BE(i32* %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %73

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @MLX5_CAP_MCAM_FEATURE(i32, i32) #1

declare dso_local i32 @MLX5E_READ_CTR32_BE(i32*, i32, i32) #1

declare dso_local i32 @MLX5E_READ_CTR64_BE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
