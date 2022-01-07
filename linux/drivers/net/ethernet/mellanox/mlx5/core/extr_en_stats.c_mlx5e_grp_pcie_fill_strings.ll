; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pcie_fill_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_pcie_fill_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_priv = type { i32 }

@pcie_performance_group = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_COUNTERS = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@pcie_perf_stats_desc = common dso_local global %struct.TYPE_5__* null, align 8
@tx_overflow_buffer_pkt = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_COUNTERS64 = common dso_local global i32 0, align 4
@pcie_perf_stats_desc64 = common dso_local global %struct.TYPE_4__* null, align 8
@pcie_outbound_stalled = common dso_local global i32 0, align 4
@NUM_PCIE_PERF_STALL_COUNTERS = common dso_local global i32 0, align 4
@pcie_perf_stall_stats_desc = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_pcie_fill_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_pcie_fill_strings(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @pcie_performance_group, align 4
  %12 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NUM_PCIE_PERF_COUNTERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %24 = mul nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pcie_perf_stats_desc, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32* %26, i32 %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @tx_overflow_buffer_pkt, align 4
  %43 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NUM_PCIE_PERF_COUNTERS64, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %55 = mul nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pcie_perf_stats_desc64, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcpy(i32* %57, i32 %63)
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %38
  %70 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @pcie_outbound_stalled, align 4
  %74 = call i64 @MLX5_CAP_MCAM_FEATURE(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @NUM_PCIE_PERF_STALL_COUNTERS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %86 = mul nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pcie_perf_stall_stats_desc, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strcpy(i32* %88, i32 %94)
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %77

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @MLX5_CAP_MCAM_FEATURE(i32, i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
