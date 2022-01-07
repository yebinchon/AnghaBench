; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_activate_priv_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_activate_priv_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_9__, %struct.net_device*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_activate_priv_channels(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %9, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %5, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @mlx5e_netdev_set_tcs(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %31, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %34, i32 %35)
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %38 = call i32 @mlx5e_build_tx2sq_maps(%struct.mlx5e_priv* %37)
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 0
  %41 = call i32 @mlx5e_activate_channels(%struct.TYPE_9__* %40)
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %43 = call i32 @mlx5e_xdp_tx_enable(%struct.mlx5e_priv* %42)
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 1
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = call i32 @netif_tx_start_all_queues(%struct.net_device* %46)
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %49 = call i64 @mlx5e_is_vport_rep(%struct.mlx5e_priv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %53 = call i32 @mlx5e_add_sqs_fwd_rules(%struct.mlx5e_priv* %52)
  br label %54

54:                                               ; preds = %51, %1
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = call i32 @mlx5e_wait_channels_min_rx_wqes(%struct.TYPE_9__* %56)
  %58 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 0
  %61 = call i32 @mlx5e_redirect_rqts_to_channels(%struct.mlx5e_priv* %58, %struct.TYPE_9__* %60)
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %63, i32 0, i32 0
  %65 = call i32 @mlx5e_xsk_redirect_rqts_to_channels(%struct.mlx5e_priv* %62, %struct.TYPE_9__* %64)
  ret void
}

declare dso_local i32 @mlx5e_netdev_set_tcs(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @mlx5e_build_tx2sq_maps(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_activate_channels(%struct.TYPE_9__*) #1

declare dso_local i32 @mlx5e_xdp_tx_enable(%struct.mlx5e_priv*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i64 @mlx5e_is_vport_rep(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_add_sqs_fwd_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_wait_channels_min_rx_wqes(%struct.TYPE_9__*) #1

declare dso_local i32 @mlx5e_redirect_rqts_to_channels(%struct.mlx5e_priv*, %struct.TYPE_9__*) #1

declare dso_local i32 @mlx5e_xsk_redirect_rqts_to_channels(%struct.mlx5e_priv*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
