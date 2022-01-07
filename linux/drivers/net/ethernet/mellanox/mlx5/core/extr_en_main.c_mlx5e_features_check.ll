; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_features_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_features_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }

@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_features_check(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vlan_features_check(%struct.sk_buff* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @vxlan_features_check(%struct.sk_buff* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %21
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlx5e_tunnel_features_check(%struct.mlx5e_priv* %32, %struct.sk_buff* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %26, %3
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vlan_features_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @vxlan_features_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @mlx5e_tunnel_features_check(%struct.mlx5e_priv*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
