; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_uplink_rep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_uplink_rep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32, i32 }

@ETH_MIN_MTU = common dso_local global i32 0, align 4
@mlx5e_tc_reoffload_flows_work = common dso_local global i32 0, align 4
@uplink_rep_async_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_uplink_rep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_uplink_rep_enable(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5e_rep_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 2
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %4, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 3
  %15 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %14, align 8
  store %struct.mlx5e_rep_priv* %15, %struct.mlx5e_rep_priv** %5, align 8
  %16 = load i32, i32* @ETH_MIN_MTU, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 2
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  %22 = call i32 @mlx5_query_port_max_mtu(%struct.mlx5_core_dev* %21, i32* %6, i32 1)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @MLX5E_HW2SW_MTU(i32* %25, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = call i32 @mlx5e_set_dev_port_mtu(%struct.mlx5e_priv* %30)
  %32 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* @mlx5e_tc_reoffload_flows_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @mlx5_lag_add(%struct.mlx5_core_dev* %37, %struct.net_device* %38)
  %40 = load i32, i32* @uplink_rep_async_event, align 4
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = call i32 @mlx5_notifier_register(%struct.mlx5_core_dev* %44, %struct.TYPE_6__* %46)
  ret void
}

declare dso_local i32 @mlx5_query_port_max_mtu(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @MLX5E_HW2SW_MTU(i32*, i32) #1

declare dso_local i32 @mlx5e_set_dev_port_mtu(%struct.mlx5e_priv*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlx5_lag_add(%struct.mlx5_core_dev*, %struct.net_device*) #1

declare dso_local i32 @mlx5_notifier_register(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
