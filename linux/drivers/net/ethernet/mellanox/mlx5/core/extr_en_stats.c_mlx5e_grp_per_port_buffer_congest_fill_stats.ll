; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_port_buffer_congest_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_port_buffer_congest_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, %struct.TYPE_2__ }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.mlx5e_pport_stats }
%struct.mlx5e_pport_stats = type { i32*, i32* }

@sbcam_reg = common dso_local global i32 0, align 4
@NUM_PPORT_PRIO = common dso_local global i32 0, align 4
@NUM_PPORT_PER_TC_PRIO_COUNTERS = common dso_local global i32 0, align 4
@pport_per_tc_prio_stats_desc = common dso_local global i32 0, align 4
@NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS = common dso_local global i32 0, align 4
@pport_per_tc_congest_prio_stats_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32*, i32)* @mlx5e_grp_per_port_buffer_congest_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_per_port_buffer_congest_fill_stats(%struct.mlx5e_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_pport_stats*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mlx5e_pport_stats* %14, %struct.mlx5e_pport_stats** %8, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %9, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %19 = load i32, i32* @sbcam_reg, align 4
  %20 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %76, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @NUM_PPORT_PRIO, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NUM_PPORT_PER_TC_PRIO_COUNTERS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5e_pport_stats, %struct.mlx5e_pport_stats* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* @pport_per_tc_prio_stats_desc, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @MLX5E_READ_CTR64_BE(i32* %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %30

52:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @NUM_PPORT_PER_TC_CONGEST_PRIO_COUNTERS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5e_pport_stats, %struct.mlx5e_pport_stats* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* @pport_per_tc_congest_prio_stats_desc, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @MLX5E_READ_CTR64_BE(i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %53

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5E_READ_CTR64_BE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
