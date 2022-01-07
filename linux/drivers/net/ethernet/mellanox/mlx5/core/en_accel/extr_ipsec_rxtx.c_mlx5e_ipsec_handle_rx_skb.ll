; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_handle_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_handle_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mlx5e_ipsec_metadata = type { i32 }
%struct.xfrm_state = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@MLX5E_METADATA_ETHER_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_ipsec_handle_rx_skb(%struct.net_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @is_metadata_hdr_valid(%struct.sk_buff* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ETH_HLEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to %struct.mlx5e_ipsec_metadata*
  store %struct.mlx5e_ipsec_metadata* %21, %struct.mlx5e_ipsec_metadata** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %8, align 8
  %25 = call %struct.xfrm_state* @mlx5e_ipsec_build_sp(%struct.net_device* %22, %struct.sk_buff* %23, %struct.mlx5e_ipsec_metadata* %24)
  store %struct.xfrm_state* %25, %struct.xfrm_state** %9, align 8
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %27 = icmp ne %struct.xfrm_state* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %45

35:                                               ; preds = %15
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @remove_metadata_hdr(%struct.sk_buff* %36)
  %38 = load i64, i64* @MLX5E_METADATA_ETHER_LEN, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %38
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %4, align 8
  br label %45

45:                                               ; preds = %35, %32, %13
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %46
}

declare dso_local i32 @is_metadata_hdr_valid(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @mlx5e_ipsec_build_sp(%struct.net_device*, %struct.sk_buff*, %struct.mlx5e_ipsec_metadata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @remove_metadata_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
