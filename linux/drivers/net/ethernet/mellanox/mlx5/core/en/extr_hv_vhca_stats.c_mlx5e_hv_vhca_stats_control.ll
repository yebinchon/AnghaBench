; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca_agent = type { i32 }
%struct.mlx5_hv_vhca_control_block = type { i32, i32, i32 }
%struct.mlx5e_hv_vhca_stats_agent = type { i32, i32 }
%struct.mlx5e_priv = type { i32, %struct.mlx5e_hv_vhca_stats_agent, i32 }

@MLX5_HV_VHCA_STATS_VERSION = common dso_local global i32 0, align 4
@MLX5_HV_VHCA_STATS_UPDATE_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)* @mlx5e_hv_vhca_stats_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hv_vhca_stats_control(%struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_control_block* %1) #0 {
  %3 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %4 = alloca %struct.mlx5_hv_vhca_control_block*, align 8
  %5 = alloca %struct.mlx5e_hv_vhca_stats_agent*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_agent** %3, align 8
  store %struct.mlx5_hv_vhca_control_block* %1, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %7 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %3, align 8
  %8 = call %struct.mlx5e_priv* @mlx5_hv_vhca_agent_priv(%struct.mlx5_hv_vhca_agent* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %6, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  store %struct.mlx5e_hv_vhca_stats_agent* %10, %struct.mlx5e_hv_vhca_stats_agent** %5, align 8
  %11 = load i32, i32* @MLX5_HV_VHCA_STATS_VERSION, align 4
  %12 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.mlx5e_hv_vhca_stats_agent, %struct.mlx5e_hv_vhca_stats_agent* %25, i32 0, i32 1
  %27 = call i32 @cancel_delayed_work_sync(i32* %26)
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX5_HV_VHCA_STATS_UPDATE_ONCE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %41

35:                                               ; preds = %28
  %36 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 100
  %40 = call i32 @msecs_to_jiffies(i32 %39)
  br label %41

41:                                               ; preds = %35, %34
  %42 = phi i32 [ 0, %34 ], [ %40, %35 ]
  %43 = load %struct.mlx5e_hv_vhca_stats_agent*, %struct.mlx5e_hv_vhca_stats_agent** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_hv_vhca_stats_agent, %struct.mlx5e_hv_vhca_stats_agent* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5e_hv_vhca_stats_agent*, %struct.mlx5e_hv_vhca_stats_agent** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5e_hv_vhca_stats_agent, %struct.mlx5e_hv_vhca_stats_agent* %48, i32 0, i32 1
  %50 = load %struct.mlx5e_hv_vhca_stats_agent*, %struct.mlx5e_hv_vhca_stats_agent** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_hv_vhca_stats_agent, %struct.mlx5e_hv_vhca_stats_agent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @queue_delayed_work(i32 %47, i32* %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %23
  ret void
}

declare dso_local %struct.mlx5e_priv* @mlx5_hv_vhca_agent_priv(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
