; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_add_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_add_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ipsec_metadata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ethhdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX5E_METADATA_ETHER_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_ipsec_metadata* (%struct.sk_buff*)* @mlx5e_ipsec_add_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_ipsec_metadata* @mlx5e_ipsec_add_metadata(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @skb_cow_head(%struct.sk_buff* %6, i32 4)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mlx5e_ipsec_metadata* @ERR_PTR(i32 %12)
  store %struct.mlx5e_ipsec_metadata* %13, %struct.mlx5e_ipsec_metadata** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @skb_push(%struct.sk_buff* %15, i32 4)
  %17 = inttoptr i64 %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i64 1
  %26 = bitcast %struct.ethhdr* %25 to %struct.mlx5e_ipsec_metadata*
  store %struct.mlx5e_ipsec_metadata* %26, %struct.mlx5e_ipsec_metadata** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = mul nsw i32 2, %34
  %36 = call i32 @memmove(i64 %29, i64 %33, i32 %35)
  %37 = load i32, i32* @MLX5E_METADATA_ETHER_TYPE, align 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  %39 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %40 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %4, align 8
  store %struct.mlx5e_ipsec_metadata* %46, %struct.mlx5e_ipsec_metadata** %2, align 8
  br label %47

47:                                               ; preds = %14, %10
  %48 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %2, align 8
  ret %struct.mlx5e_ipsec_metadata* %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local %struct.mlx5e_ipsec_metadata* @ERR_PTR(i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
