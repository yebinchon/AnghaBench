; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_nic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, %struct.mlx5_core_dev*, %struct.net_device* }
%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i64 }

@MLX5_PORT_DOWN = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_nic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_nic_enable(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 2
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = call i32 @mlx5e_init_l2_addr(%struct.mlx5e_priv* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load i32, i32* @MLX5_PORT_DOWN, align 4
  %19 = call i32 @mlx5_set_port_admin_status(%struct.mlx5_core_dev* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %22 = call i32 @mlx5e_set_netdev_mtu_boundaries(%struct.mlx5e_priv* %21)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %24 = call i32 @mlx5e_set_dev_port_mtu(%struct.mlx5e_priv* %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @mlx5_lag_add(%struct.mlx5_core_dev* %25, %struct.net_device* %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %29 = call i32 @mlx5e_enable_async_events(%struct.mlx5e_priv* %28)
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = call i64 @mlx5e_monitor_counter_supported(%struct.mlx5e_priv* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %35 = call i32 @mlx5e_monitor_counter_init(%struct.mlx5e_priv* %34)
  br label %36

36:                                               ; preds = %33, %20
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %38 = call i32 @mlx5e_hv_vhca_stats_create(%struct.mlx5e_priv* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NETREG_REGISTERED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %63

45:                                               ; preds = %36
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = call i32 @queue_work(i32 %48, i32* %50)
  %52 = call i32 (...) @rtnl_lock()
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i64 @netif_running(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @mlx5e_open(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @netif_device_attach(%struct.net_device* %60)
  %62 = call i32 (...) @rtnl_unlock()
  br label %63

63:                                               ; preds = %59, %44
  ret void
}

declare dso_local i32 @mlx5e_init_l2_addr(%struct.mlx5e_priv*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mlx5_set_port_admin_status(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_set_netdev_mtu_boundaries(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_set_dev_port_mtu(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_lag_add(%struct.mlx5_core_dev*, %struct.net_device*) #1

declare dso_local i32 @mlx5e_enable_async_events(%struct.mlx5e_priv*) #1

declare dso_local i64 @mlx5e_monitor_counter_supported(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_monitor_counter_init(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_hv_vhca_stats_create(%struct.mlx5e_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @mlx5e_open(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
