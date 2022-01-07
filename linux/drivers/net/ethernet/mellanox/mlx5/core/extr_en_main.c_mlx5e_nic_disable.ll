; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_4__*, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_nic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_nic_disable(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 3
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_core_dev* %6, %struct.mlx5_core_dev** %3, align 8
  %7 = call i32 (...) @rtnl_lock()
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i64 @netif_running(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @mlx5e_close(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @netif_device_detach(%struct.TYPE_4__* %21)
  %23 = call i32 (...) @rtnl_unlock()
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = call i32 @mlx5e_hv_vhca_stats_destroy(%struct.mlx5e_priv* %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %33 = call i64 @mlx5e_monitor_counter_supported(%struct.mlx5e_priv* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %37 = call i32 @mlx5e_monitor_counter_cleanup(%struct.mlx5e_priv* %36)
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %40 = call i32 @mlx5e_disable_async_events(%struct.mlx5e_priv* %39)
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = call i32 @mlx5_lag_remove(%struct.mlx5_core_dev* %41)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx5e_close(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_device_detach(%struct.TYPE_4__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5e_hv_vhca_stats_destroy(%struct.mlx5e_priv*) #1

declare dso_local i64 @mlx5e_monitor_counter_supported(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_monitor_counter_cleanup(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_disable_async_events(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_lag_remove(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
