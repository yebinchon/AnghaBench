; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5e_rss_params }
%struct.mlx5e_rss_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @mlx5e_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5e_rss_params*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %9, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  store %struct.mlx5e_rss_params* %14, %struct.mlx5e_rss_params** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %10, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %18, i32 %21, i32 4)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 4)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %10, align 8
  %37 = getelementptr inbounds %struct.mlx5e_rss_params, %struct.mlx5e_rss_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  ret i32 0
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
