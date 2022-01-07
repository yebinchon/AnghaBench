; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_phy_fill_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_phy_fill_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"link_down_events_phy\00", align 1
@ppcnt_statistical_group = common dso_local global i32 0, align 4
@NUM_PPORT_PHY_STATISTICAL_COUNTERS = common dso_local global i32 0, align 4
@pport_phy_statistical_stats_desc = common dso_local global %struct.TYPE_3__* null, align 8
@per_lane_error_counters = common dso_local global i32 0, align 4
@NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS = common dso_local global i32 0, align 4
@pport_phy_statistical_err_lanes_stats_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_phy_fill_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_phy_fill_strings(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %17 = mul nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = call i32 @strcpy(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %22 = load i32, i32* @ppcnt_statistical_group, align 4
  %23 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %4, align 4
  br label %81

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NUM_PPORT_PHY_STATISTICAL_COUNTERS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %37 = mul nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pport_phy_statistical_stats_desc, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcpy(i32* %39, i8* %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %52 = load i32, i32* @per_lane_error_counters, align 4
  %53 = call i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %65 = mul nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pport_phy_statistical_err_lanes_stats_desc, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcpy(i32* %67, i8* %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i64 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
