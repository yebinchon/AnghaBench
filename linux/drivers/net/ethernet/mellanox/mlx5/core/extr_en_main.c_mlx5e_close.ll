; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MLX5_PORT_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx5e_priv* %7, %struct.mlx5e_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_device_present(%struct.net_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX5_PORT_DOWN, align 4
  %22 = call i32 @mlx5_set_port_admin_status(i32 %20, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @mlx5e_close_locked(%struct.net_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_set_port_admin_status(i32, i32) #1

declare dso_local i32 @mlx5e_close_locked(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
