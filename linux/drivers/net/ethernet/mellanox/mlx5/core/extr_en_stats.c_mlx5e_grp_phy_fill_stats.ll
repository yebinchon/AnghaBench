; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_phy_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_phy_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_7__, %struct.mlx5_core_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@ppcnt_reg = common dso_local global i32 0, align 4
@counter_set = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ppcnt_statistical_group = common dso_local global i32 0, align 4
@NUM_PPORT_PHY_STATISTICAL_COUNTERS = common dso_local global i32 0, align 4
@pport_phy_statistical_stats_desc = common dso_local global i32 0, align 4
@per_lane_error_counters = common dso_local global i32 0, align 4
@NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS = common dso_local global i32 0, align 4
@pport_phy_statistical_err_lanes_stats_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_phy_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_phy_fill_stats(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %8, align 8
  %13 = load i32, i32* @ppcnt_reg, align 4
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @counter_set, i32 0, i32 0, i32 0), align 4
  %20 = call i32 @MLX5_GET(i32 %13, i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %27 = load i32, i32* @ppcnt_statistical_group, align 4
  %28 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NUM_PPORT_PHY_STATISTICAL_COUNTERS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* @pport_phy_statistical_stats_desc, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @MLX5E_READ_CTR64_BE(i32* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %55 = load i32, i32* @per_lane_error_counters, align 4
  %56 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* @pport_phy_statistical_err_lanes_stats_desc, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @MLX5E_READ_CTR64_BE(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %59

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %30
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5E_READ_CTR64_BE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
