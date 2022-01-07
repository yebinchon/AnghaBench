; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { i32*, %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @mlx4_en_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @mlx4_en_get_max_num_rx_rings(%struct.net_device* %8)
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @TX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %30, %35
  %37 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_get_max_num_rx_rings(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
