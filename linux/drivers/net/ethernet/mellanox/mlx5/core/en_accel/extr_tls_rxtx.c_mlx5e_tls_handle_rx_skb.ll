; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mlx5e_tls_metadata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@MLX5E_METADATA_ETHER_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_tls_handle_rx_skb(%struct.net_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_tls_metadata*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @is_metadata_hdr_valid(%struct.sk_buff* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %60

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ETH_HLEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to %struct.mlx5e_tls_metadata*
  store %struct.mlx5e_tls_metadata* %19, %struct.mlx5e_tls_metadata** %7, align 8
  %20 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_tls_metadata, %struct.mlx5e_tls_metadata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %50 [
    i32 129, label %25
    i32 128, label %28
    i32 130, label %41
  ]

25:                                               ; preds = %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %51

28:                                               ; preds = %13
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.mlx5e_tls_metadata*, %struct.mlx5e_tls_metadata** %7, align 8
  %32 = call i32 @tls_update_resync_sn(%struct.net_device* %29, %struct.sk_buff* %30, %struct.mlx5e_tls_metadata* %31)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %33)
  store %struct.mlx5e_priv* %34, %struct.mlx5e_priv** %8, align 8
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i32 @atomic64_inc(i32* %39)
  br label %51

41:                                               ; preds = %13
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %42)
  store %struct.mlx5e_priv* %43, %struct.mlx5e_priv** %8, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @atomic64_inc(i32* %48)
  br label %51

50:                                               ; preds = %13
  br label %60

51:                                               ; preds = %41, %28, %25
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @remove_metadata_hdr(%struct.sk_buff* %52)
  %54 = load i64, i64* @MLX5E_METADATA_ETHER_LEN, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %54
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %51, %50, %12
  ret void
}

declare dso_local i32 @is_metadata_hdr_valid(%struct.sk_buff*) #1

declare dso_local i32 @tls_update_resync_sn(%struct.net_device*, %struct.sk_buff*, %struct.mlx5e_tls_metadata*) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @remove_metadata_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
