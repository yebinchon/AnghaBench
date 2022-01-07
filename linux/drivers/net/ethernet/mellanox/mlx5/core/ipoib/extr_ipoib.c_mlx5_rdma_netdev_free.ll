; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_rdma_netdev_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5_rdma_netdev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.mlx5e_profile*, %struct.mlx5i_priv* }
%struct.mlx5e_profile = type { i32 (%struct.mlx5e_priv.0*)* }
%struct.mlx5e_priv.0 = type opaque
%struct.mlx5i_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mlx5_rdma_netdev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_rdma_netdev_free(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5i_priv*, align 8
  %5 = alloca %struct.mlx5e_profile*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %6)
  store %struct.mlx5e_priv* %7, %struct.mlx5e_priv** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 2
  %10 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %9, align 8
  store %struct.mlx5i_priv* %10, %struct.mlx5i_priv** %4, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 1
  %13 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %12, align 8
  store %struct.mlx5e_profile* %13, %struct.mlx5e_profile** %5, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %15 = call i32 @mlx5e_detach_netdev(%struct.mlx5e_priv* %14)
  %16 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %16, i32 0, i32 0
  %18 = load i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.0*)** %17, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %20 = bitcast %struct.mlx5e_priv* %19 to %struct.mlx5e_priv.0*
  %21 = call i32 %18(%struct.mlx5e_priv.0* %20)
  %22 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @mlx5i_pkey_qpn_ht_cleanup(%struct.net_device* %27)
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5e_destroy_mdev_resources(i32 %31)
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_detach_netdev(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5i_pkey_qpn_ht_cleanup(%struct.net_device*) #1

declare dso_local i32 @mlx5e_destroy_mdev_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
