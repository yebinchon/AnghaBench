; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_activate_txqsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_activate_txqsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_activate_txqsq(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %3 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netdev_get_tx_queue(i32 %7, i32 %10)
  %12 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %15 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netdev_tx_reset_queue(i32 %20)
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_tx_start_queue(i32 %24)
  ret void
}

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netif_tx_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
