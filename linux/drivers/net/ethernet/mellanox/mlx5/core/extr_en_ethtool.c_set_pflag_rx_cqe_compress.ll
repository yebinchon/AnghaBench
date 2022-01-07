; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_cqe_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_cqe_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }

@cqe_compression = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Can't enable cqe compression while timestamping is enabled.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_pflag_rx_cqe_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pflag_rx_cqe_compress(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 2
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %7, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %14 = load i32, i32* @cqe_compression, align 4
  %15 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HWTSTAMP_FILTER_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %23, %20
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @mlx5e_modify_rx_cqe_compression_locked(%struct.mlx5e_priv* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %30, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlx5e_modify_rx_cqe_compression_locked(%struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
