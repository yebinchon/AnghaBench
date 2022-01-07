; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_autoneg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_autoneg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_6__, %struct.mlx4_en_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx4_en_autoneg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_autoneg_get(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %3, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 1
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  store %struct.mlx4_en_dev* %10, %struct.mlx4_en_dev** %4, align 8
  %11 = load i32, i32* @AUTONEG_DISABLE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MLX4_EN_PORT_ANE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @AUTONEG_ENABLE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %21, %1
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
