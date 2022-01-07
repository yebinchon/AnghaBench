; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.mlx5e_priv*)* }

@NUM_VPORT_REP_SW_COUNTERS = common dso_local global i32 0, align 4
@sw_rep_stats_desc = common dso_local global i32 0, align 4
@NUM_VPORT_REP_HW_COUNTERS = common dso_local global i32 0, align 4
@vport_rep_stats_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @mlx5e_rep_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %70

15:                                               ; preds = %3
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %20 = call i32 @mlx5e_rep_update_sw_counters(%struct.mlx5e_priv* %19)
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %24, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %27 = call i32 %25(%struct.mlx5e_priv* %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %46, %15
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NUM_VPORT_REP_SW_COUNTERS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* @sw_rep_stats_desc, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @MLX5E_READ_CTR64_CPU(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_VPORT_REP_HW_COUNTERS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* @vport_rep_stats_desc, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @MLX5E_READ_CTR64_CPU(i32* %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %50

70:                                               ; preds = %14, %50
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_rep_update_sw_counters(%struct.mlx5e_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MLX5E_READ_CTR64_CPU(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
