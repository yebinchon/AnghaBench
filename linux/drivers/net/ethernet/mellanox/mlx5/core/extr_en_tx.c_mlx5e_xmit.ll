; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5e_txqsq** }
%struct.mlx5e_txqsq = type { i32 }
%struct.mlx5e_tx_wqe = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_tx_wqe*, align 8
  %8 = alloca %struct.mlx5e_txqsq*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5e_txqsq**, %struct.mlx5e_txqsq*** %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %14, i64 %16
  %18 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %17, align 8
  store %struct.mlx5e_txqsq* %18, %struct.mlx5e_txqsq** %8, align 8
  %19 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %20 = call %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %19, i32 4, i32* %9)
  store %struct.mlx5e_tx_wqe* %20, %struct.mlx5e_tx_wqe** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.sk_buff* @mlx5e_accel_handle_tx(%struct.sk_buff* %21, %struct.mlx5e_txqsq* %22, %struct.net_device* %23, %struct.mlx5e_tx_wqe** %7, i32* %9)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (...) @netdev_xmit_more()
  %39 = call i32 @mlx5e_sq_xmit(%struct.mlx5e_txqsq* %34, %struct.sk_buff* %35, %struct.mlx5e_tx_wqe* %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq*, i32, i32*) #1

declare dso_local %struct.sk_buff* @mlx5e_accel_handle_tx(%struct.sk_buff*, %struct.mlx5e_txqsq*, %struct.net_device*, %struct.mlx5e_tx_wqe**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_sq_xmit(%struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5e_tx_wqe*, i32, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
