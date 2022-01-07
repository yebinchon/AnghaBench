; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_stats_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca_agent = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hv_vhca_agent*)* @mlx5e_hv_vhca_stats_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hv_vhca_stats_cleanup(%struct.mlx5_hv_vhca_agent* %0) #0 {
  %2 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_agent** %2, align 8
  %4 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %5 = call %struct.mlx5e_priv* @mlx5_hv_vhca_agent_priv(%struct.mlx5_hv_vhca_agent* %4)
  store %struct.mlx5e_priv* %5, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  ret void
}

declare dso_local %struct.mlx5e_priv* @mlx5_hv_vhca_agent_priv(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
