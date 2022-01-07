; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_sw_stats }
%struct.mlx5e_sw_stats = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5i_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_sw_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mlx5e_sw_stats* %11, %struct.mlx5e_sw_stats** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = call i32 @mlx5i_grp_sw_update_stats(%struct.mlx5e_priv* %12)
  %14 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %23 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %38 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5i_grp_sw_update_stats(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
