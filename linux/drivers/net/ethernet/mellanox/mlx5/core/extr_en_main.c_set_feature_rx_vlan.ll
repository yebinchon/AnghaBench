; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_rx_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_rx_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_feature_rx_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_feature_rx_vlan(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @mlx5e_modify_channels_vsd(%struct.TYPE_4__* %28, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %26
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_modify_channels_vsd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
