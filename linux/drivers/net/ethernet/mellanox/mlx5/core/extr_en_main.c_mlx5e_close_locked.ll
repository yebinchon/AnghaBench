; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_close_locked(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.mlx5e_priv* %6, %struct.mlx5e_priv** %4, align 8
  %7 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %22 = call i32 @mlx5e_xdp_set_closed(%struct.mlx5e_priv* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 2
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netif_carrier_off(i32 %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = call i32 @mlx5e_deactivate_priv_channels(%struct.mlx5e_priv* %32)
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 0
  %36 = call i32 @mlx5e_close_channels(%struct.TYPE_4__* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %23, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_xdp_set_closed(%struct.mlx5e_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @mlx5e_deactivate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_channels(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
