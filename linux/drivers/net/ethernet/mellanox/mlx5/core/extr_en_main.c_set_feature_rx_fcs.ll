; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_rx_fcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_rx_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_feature_rx_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_feature_rx_fcs(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mlx5e_modify_channels_scatter_fcs(%struct.TYPE_4__* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_modify_channels_scatter_fcs(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
