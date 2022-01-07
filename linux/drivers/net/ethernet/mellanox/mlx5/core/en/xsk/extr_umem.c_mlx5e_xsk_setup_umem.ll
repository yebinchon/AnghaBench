; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_setup_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_setup_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i32 }

@MLX5E_RQ_GROUP_XSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_setup_umem(%struct.net_device* %0, %struct.xdp_umem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %8, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.mlx5e_params* %15, %struct.mlx5e_params** %9, align 8
  %16 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MLX5E_RQ_GROUP_XSK, align 4
  %19 = call i32 @mlx5e_qid_get_ch_if_in_group(%struct.mlx5e_params* %16, i32 %17, i32 %18, i32* %10)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %30 = icmp ne %struct.xdp_umem* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mlx5e_xsk_enable_umem(%struct.mlx5e_priv* %32, %struct.xdp_umem* %33, i32 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mlx5e_xsk_disable_umem(%struct.mlx5e_priv* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %35, %31 ], [ %39, %36 ]
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_qid_get_ch_if_in_group(%struct.mlx5e_params*, i32, i32, i32*) #1

declare dso_local i32 @mlx5e_xsk_enable_umem(%struct.mlx5e_priv*, %struct.xdp_umem*, i32) #1

declare dso_local i32 @mlx5e_xsk_disable_umem(%struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
