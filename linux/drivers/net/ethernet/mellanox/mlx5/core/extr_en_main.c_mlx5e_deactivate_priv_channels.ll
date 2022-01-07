; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_priv_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_deactivate_priv_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_deactivate_priv_channels(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %3 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 0
  %6 = call i32 @mlx5e_xsk_redirect_rqts_to_drop(%struct.mlx5e_priv* %3, i32* %5)
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = call i32 @mlx5e_redirect_rqts_to_drop(%struct.mlx5e_priv* %7)
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = call i64 @mlx5e_is_vport_rep(%struct.mlx5e_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = call i32 @mlx5e_remove_sqs_fwd_rules(%struct.mlx5e_priv* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_tx_stop_all_queues(i32 %18)
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_tx_disable(i32 %22)
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %25 = call i32 @mlx5e_xdp_tx_disable(%struct.mlx5e_priv* %24)
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = call i32 @mlx5e_deactivate_channels(i32* %27)
  ret void
}

declare dso_local i32 @mlx5e_xsk_redirect_rqts_to_drop(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_redirect_rqts_to_drop(%struct.mlx5e_priv*) #1

declare dso_local i64 @mlx5e_is_vport_rep(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_remove_sqs_fwd_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @mlx5e_xdp_tx_disable(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_deactivate_channels(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
