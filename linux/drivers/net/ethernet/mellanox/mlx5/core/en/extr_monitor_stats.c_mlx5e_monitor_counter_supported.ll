; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_monitor_stats.c_mlx5e_monitor_counter_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_monitor_stats.c_mlx5e_monitor_counter_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@max_num_of_monitor_counters = common dso_local global i32 0, align 4
@ppcnt = common dso_local global i32 0, align 4
@num_ppcnt_monitor_counters = common dso_local global i32 0, align 4
@NUM_REQ_PPCNT_COUNTER_S1 = common dso_local global i64 0, align 8
@num_q_monitor_counters = common dso_local global i32 0, align 4
@NUM_REQ_Q_COUNTERS_S1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_monitor_counter_supported(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 0
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_core_dev* %7, %struct.mlx5_core_dev** %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = load i32, i32* @max_num_of_monitor_counters, align 4
  %10 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = load i32, i32* @ppcnt, align 4
  %16 = call i64 @MLX5_CAP_PCAM_REG(%struct.mlx5_core_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = load i32, i32* @num_ppcnt_monitor_counters, align 4
  %21 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %19, i32 %20)
  %22 = load i64, i64* @NUM_REQ_PPCNT_COUNTER_S1, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

25:                                               ; preds = %18, %13
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %27 = load i32, i32* @num_q_monitor_counters, align 4
  %28 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %26, i32 %27)
  %29 = load i64, i64* @NUM_REQ_Q_COUNTERS_S1, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %24, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_PCAM_REG(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
