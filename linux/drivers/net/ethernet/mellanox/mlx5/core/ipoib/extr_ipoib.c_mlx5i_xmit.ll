; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ib_ah = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5i_priv*, %struct.mlx5e_txqsq** }
%struct.mlx5i_priv = type { i32 }
%struct.mlx5e_txqsq = type { i32 }
%struct.mlx5_ib_ah = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.ib_ah*, i32)* @mlx5i_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_xmit(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ib_ah* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ib_ah*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5e_txqsq*, align 8
  %11 = alloca %struct.mlx5_ib_ah*, align 8
  %12 = alloca %struct.mlx5i_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ib_ah* %2, %struct.ib_ah** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %9, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx5e_txqsq**, %struct.mlx5e_txqsq*** %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %17, i64 %19
  %21 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %20, align 8
  store %struct.mlx5e_txqsq* %21, %struct.mlx5e_txqsq** %10, align 8
  %22 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  %23 = call %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah* %22)
  store %struct.mlx5_ib_ah* %23, %struct.mlx5_ib_ah** %11, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %25, align 8
  store %struct.mlx5i_priv* %26, %struct.mlx5i_priv** %12, align 8
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  %33 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (...) @netdev_xmit_more()
  %36 = call i32 @mlx5i_sq_xmit(%struct.mlx5e_txqsq* %27, %struct.sk_buff* %28, i32* %30, i32 %31, i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @mlx5i_sq_xmit(%struct.mlx5e_txqsq*, %struct.sk_buff*, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
