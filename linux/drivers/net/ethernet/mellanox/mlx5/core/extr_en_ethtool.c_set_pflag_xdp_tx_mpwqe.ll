; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_xdp_tx_mpwqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_xdp_tx_mpwqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__, i32, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_channels = type { i32 }

@enhanced_multi_pkt_send_wqe = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_PFLAG_XDP_TX_MPWQE = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_pflag_xdp_tx_mpwqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pflag_xdp_tx_mpwqe(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5e_channels, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 2
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %7, align 8
  %15 = bitcast %struct.mlx5e_channels* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %20 = load i32, i32* @enhanced_multi_pkt_send_wqe, align 4
  %21 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %18, %2
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %33 = load i32, i32* @MLX5E_PFLAG_XDP_TX_MPWQE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MLX5E_SET_PFLAG(i32* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %51

47:                                               ; preds = %26
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %49 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %48, %struct.mlx5e_channels* %8, i32* null)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %41, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5E_SET_PFLAG(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
