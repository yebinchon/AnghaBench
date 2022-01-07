; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_tc_prio_get_num_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_stats.c_mlx5e_grp_per_tc_prio_get_num_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@sbcam_reg = common dso_local global i32 0, align 4
@NUM_PPORT_PER_TC_PRIO_COUNTERS = common dso_local global i32 0, align 4
@NUM_PPORT_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_grp_per_tc_prio_get_num_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_grp_per_tc_prio_get_num_stats(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 0
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = load i32, i32* @sbcam_reg, align 4
  %10 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @NUM_PPORT_PER_TC_PRIO_COUNTERS, align 4
  %15 = load i32, i32* @NUM_PPORT_PRIO, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
